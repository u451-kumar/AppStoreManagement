
use AppStore;
-- //select apps with their corresponding countries and company names
select A.App_name as App, B.C_Name as Company, B.origin as Country
from app A
inner join company B
on A.ID = B.ID
order by B.C_Name;

-- //2. select apps with a particular category which has a certain age limit
select A.App_name as App, B.App_Catagory as Category 
from app A, catagory B 
where A.cat_id=B.cat_id and B.App_catagory = 'Social' and B.AgeLimit>10;

-- //distinct countries
select distinct(origin) as Country from company;

-- //select apps with no. of downloads greater than a limit 
select A.App_name as App, C.downloads_inMillions as downloads 
from app A
left join rating C 
on A.Reg_id=C.Reg_id
where downloads_inMillions>100;

-- //select apps with size less than a limit
select A.App_name as App, B.Download_size_inMB as Size 
from app A, size B
where A.Reg_id=B.Reg_id and B.Download_size_inMB < 50;

-- //select apps with origin using in, between, not null, wildcards
select A.App_name as App, B.origin as Country, B.C_Name as Company
from app A, company B
where A.ID=B.ID and not B.origin = 'NewYork';

select A.Reg_id as ID, A.App_name as App, B.origin as Country, B.C_Name as Company
from app A, company B
where A.ID=B.ID and B.origin in ('NewYork','UnitedStates','California');

-- //select apps and their companies along with their revenue
select A.App_Name as App, B.C_Name as Company, B.revenue_in_crores as Revenue
from app A
right join company B
on A.ID=B.ID ;

--//10.	select apps with camera permission
select A.App_name 
from app A INNER Join Systems B
ON A.Reg_id = B.Reg_id
where B.Permisions_Required like '%cam%' ;


/*3. select apps which are released recently(after 2012) */
select App_name, date_of_release
from app 
where date_of_release > '2012-12-31' 
order by date_of_release ;


/*6. select apps with a particular operating system and disk space less than a limit*/
select App_name, OperatingSystem, DiskSpace_inMB
from app 
inner join systems on app.Reg_id = Systems.Reg_id 
inner join size on app.Reg_id = size.Reg_id 
where size.DiskSpace_inMB < 300 and Systems.OperatingSystem='Android';


use AppStore;
/*7. display app names having  maximum downloads in particular category  */
select A.App_name as appname,D.downloads_inMillions as noOfDownload, C.App_catagory as category
from app A 
inner join catagory C on A.cat_id = C.cat_id
inner join rating D on  A.Reg_id = D.Reg_id
where downloads_inMillions in (select MAX(downloads_inMillions) from rating  group by cat_id) ;

/*Average download category wise*/

select AVG(downloads_inMillions) as avgDownload, App_catagory as category from rating
INNER JOIN catagory
on rating.cat_id = catagory.cat_id
group by App_catagory;

