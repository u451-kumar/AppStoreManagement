CREATE DATABASE AppStore;

use AppStore;

create table company
(
     C_Name varchar(50), 
     ID varchar(15) not null , 
     revenue_in_crores float,
     Launched_Date date,
     Origin char(50),
     primary key(ID) 
) ;

insert into company (C_Name, ID, Revenue_in_crores, Launched_Date, Origin) values

('META','US100', 8596.0 , '2004-02-20', 'UnitedStates'), 

('GoogleLLC', 'NY200', 5.67 , '2014-08-12', 'NewYork'),

('Paytm', 'ID300', 10 , '2010-09-25', 'India'),

('Telegram_FZllc', 'UK400', 10000, '2010-08-23', 'UnitedKingdom'),

('SpotifyAB', 'SW600', 10000, '2018-05-05','Swedian'),

('Airtel', 'IN700', 150 ,'2008-01-01', 'India'),

('Garena', 'SP1100', 21.3 , '2017-08-23', 'SingaPore'),

('LinkedIn', 'CA1200', 21240 , '2003-05-05', 'California'),

('Netflix', 'CA1300', 748.3 , '1997-08-29', 'California'),

('Match Group Holdings II, LLC' , 'USA1400' , 173.99 , '2012-09-12' , 'USA'),

 ('Uber Technologies Ltd.', 'IN1500', 138.5, '2008-05-4', 'India'),

 ('MakeMyTrip-Hotel Flight IRCTC Authorised Parterner', 'JP1600', 1452, '2010-05-16', 'Japan'),

  ('Novi Digital', 'IN1700', 1402, '2014-02-28', 'India'),
    
  ('Amazon Mobile LLC', 'USA1800', 1504, '2008-02-14', 'USA'),

   ('Flipkart', 'SI1900', 1543.4, '2009-09-09', 'Singapore'),

  ('Meesho', 'IN2000', '1843.9', '2015-05-05', 'India'),

   ('Reliance Retail Ltd', 'IN2100', 1485, '2014-08-24', 'India'),

   ('Myntra', 'IN2200', 658, '2012-12-25', 'India'),

    ('Snapdeal Pvt. Ltd.', 'IN2300', 1293, '2010-02-07', 'India'),

    ('OLX Global B.V', 'AR2400', 1982.7, '2012-04-13', 'Argentina'),

    ('Future Group Food', 'IN2500', 794.6, '2019-05-19', 'India'),

    ('Jio Platfarms Ltd', 'IN2600', 1693, '2008-08-08', 'India'),
    
    ('Times Internate', 'IN2700', 780, '2012-07-02', 'India'),
    
    ('Smule', 'AM2800', 1010.5, '2015-04-16', 'America'),
    
    ('Zoom', 'AM2900', 2700, '2011-05-01', 'America'),
    
    ('Canva Pvt. Ltd.', 'AU3000', 4000, '2013-07-18', 'Australia'),
    
    ('Xender Digital Technology Pvt. Ltd.', 'CH3100', 50, '2014-09-26', 'China'),
    
    ('Microsoft', 'USA3200', 9430, '1995-08-28', 'USA'),
    
    ('Google', 'USA3300', 976, '2017-10-04', 'USA'),
    
    ('SYBO Games', 'DK3400', 80, '2018-06-29', 'Denmark'),
    
    ('King', 'MA3500', 473, '2019-12-06', 'Malta'),
    
    ('Gametion Technologies Pvt. Ltd.', 'IN3600', 200, '2018-07-12', 'India'),
    
    ('Advanced Publications', 'AM3700', 1320, '2014-09-21', 'America'),
    
    ('The Hindu Group', 'IN3800', 100, '1878-07-17', 'India'),
    
    ('Adobe', 'US3900', 28200, '1982-12-18', 'United States'),
    
    ('MX Player', 'IN4000', 1528,  '2011-07-18', 'India'),
    
    ('VideoLAN', 'FR4100', 329, '2009-04-21', 'France');


create table catagory(
    
    App_catagory varchar(20) ,
    cat_id varchar(20) not null,
    AgeLimit int,
    Primary key (cat_id)
    
);
insert into catagory(App_catagory,cat_id ,AgeLimit ) values
('social', 'SL01', 18),

('educational', 'EL02',10),

('finance', 'FE03', 16),

('music', 'MS04', 10),

('Gaming', 'GG05', 18),

('business', 'BS06', 18),

('entertainment', 'ET07', 18),

('LifeStyle', 'LE08', 14),

('Utility', 'UL09', 18),

('Travelling', 'TG10', 20),

('VideoPlayer', 'VR11', 12),

('News_Magzines', 'NM12', 13),

('Books', 'BS13', 10),

('Photography', 'PY14', 15),

('Productivity', 'PD15', 13),

('Tools', 'TS16', 11),

('Communication', 'CN17',16),

 ('Shopping', 'SG18', 21);

create table app
(
    Reg_id varchar(20) not null ,
    App_name varchar(150) ,
    Date_of_Release date NULL DEFAULT '9999-12-31' ,
    Description_of_app varchar(1000) ,
    App_version varchar(20) ,
    cat_id varchar(20) not null,
    ID varchar(15) not null , 
    Primary key (Reg_id) ,
    FOREIGN KEY (cat_id) references catagory(cat_id) ,
    FOREIGN KEY (ID) references company(ID)     
);
 

insert into app (Reg_id , cat_id , ID , App_name , Date_of_Release , Description_of_app , App_version) VALUES

('2012WA4001' , 'SL01' , 'US100' ,'Whatsapp' , '2017-02-01' , 'WhatsApp Messenger,or simply WhatsApp,' , '2.21.22.26'  ) ,

('2012CL4002' , 'EL02', 'NY200' , 'Classroom' , '2014-08-12' ,'Google Classroom is a free blended learning platform',' 7.6. 381.20. 90.2') ,

('2012PM4003' , 'FE03', 'ID300' , 'Paytm' , '2012-04-30' , 'Indias Most Popular Platform for Money Transfer, BHIM ' , '9.17.3') ,

('2012TM4004' ,'SL01', 'UK400',  'Telegram' , '2013-09-06' , 'Telegram has no limits on the size of your med' , '8.2.7 ') ,

('2012IM4005' ,'SL01' ,  'US100',  'Instagram' , '2012-04-03' , 'Instagram from Facebook Connect with friends, share ' , '213.0.0.2.9.120') ,

('2012SY4006' ,'MS04',  'SW600' , 'Spotify' , ' 2019-02-26' , ':Stream Spotify free, with occasional ads, or g' , '8.6.78.266') ,

('2012WM4007' ,'MS04', 'IN700', 'Wynk Music' , '2014-09-01' , 'Download & Listen mp3 songs, music online ' , '3.26.1.0'),

('2012GE4008' , 'PD15', 'NY200' , 'Google' , '2010-08-12' , 'Search the worlds information, including we' , '12.44.23.23.arm64') ,   

('2012FF4009' , 'GG05','SP1100', 'Free Fire' , '2017-08-23' , 'Garena Free Fire, also known as Free Fire, is' , ' 1.67.0'),

('2012LN4010' , 'BS06', 'CA1200', 'Linkedin' , '2003-05-05' , 'LinkedIn is an American business and employmen' , '485.21.0') ,

('2012NX4011' , 'ET07', 'CA1300', 'Netflix' , '1997-08-29' , 'Netflix, Inc. is an American subscription stre' , '8.8.0') ,

('2012FK4012' , 'SL01' , 'US100' , 'Facebook' , '2004-02-04' ,'The Facebook app does more than help you sta' , '332.0.0.23.111') ,

('2012TR4013' , 'SL01' , 'USA1400' , 'Tinder' , '2012-09-12' , 'Tinder is an online dating and geosocial ' , '12.21.0'),

  ('2012UR4014' , 'UL09' , 'IN1500' , 'Uber' , '2010-10-28' , 'Partner with Uber Eats. Request a' , '4.394.10003') ,

    ('2012MT4015' , 'TG10' , 'JP1600' , 'Make My Trip' , '2011-05-06' , 'At MakeMyTrip, you c' , '510.0.0.223') ,

    ('2012HS4016' , 'ET07' , 'IN1700' , 'Hotstar' , '2015-01-07' , 'Watch free online ' , '12.2.4') ,

    ('2012AV4017' , 'ET07' , 'USA1800' , 'Amazon Prime Video' , '2016-12-13' ,'Netflix, Inc. is an American subscription stre', '3.0.309.6845') ,

    ('2012FT4018' , 'SG18' , 'SI1900' , 'Flipkart' , '2011-07-02' ,'Netflix, Inc. is an American subscription stre' , '7.31') , 

    ('2012AN4019' , 'SG18' , 'USA1800' , 'Amazon' , '2014-12-12' , 'Online Shopping India - Buy Books, Mobile Phones', '22.22.2.300' ) ,

    ('2012MO4020' , 'SG18' , 'IN2000' , 'Meesho' , '2017-02-13' , 'Meesho has over 50 lakh products in different categories ' , '11.3') ,

    ('2012SY4021', 'SG18', 'SI1900' , 'Shopsy' , '2021-06-14' , 'Shop online for the best-quality fashion, beauty, mobiles ' , '7.17') ,
    
    ('2012AO4022' , 'SG18' , 'IN2100' , 'Ajio' , '2016-08-31' , 'Buy Clothes, Footwear & Fashion Online for Women, Men & Kids ' , '7.8.1') ,

    ('2012MA4023' , 'SG18' , 'IN2200' , 'Myntra' , '2014-05-07' , 'ONLINE SHOPPING MADE EASY AT MYNTRA. If you would like ' , '4.2107.8') , 
    
    ('2012SL4024' , 'SG18' , 'IN2300' , 'Snapdeal' , '2012-04-27' , 'Buy Clothes, Footwear & Fashion Online for Women, Men & Kids | Reliance Trends. ' , '7.4.7') ,
    
    ('2012OX4025' , 'SG18' , 'AR2400' , 'OLx' , '2014-12-18' , 'OLX is part of OLX Group, a network of leading marketplaces pre ' , '14.40.001') ,

    ('2012BB4026' , 'SG18' , 'IN2500' , 'Big Bazzar' , '2020-09-25' , 'Big Bazaar online shopping clothes collection consists of ' , '4.0.1') , 
    
    ('2012JM4027' , 'SG18' , 'IN2600' , 'JioMart' , '2020-07-16' , 'Choose and Buy Online Grocery from a wide range of fruits, ' , '1.0.17'),
   
    ('2012CB4028', 'ET07' , 'IN2700' , 'CricBuzz', '2014-03-16', 'Cricbuzz is an Indian cricket news website owned by Times Int','6.9.40'),

    ('2012SE4029', 'MS04', 'AM2800' ,'Smule','2020-04-22','Smule is an American mobile app developer with headquarters in San Francisco.[2] The','5.0.3'),

    ('2012ZM4030', 'CN17', 'AM2900' ,'Zoom','2018-07-21','Zoom Video Communications, Inc. (commonly shortened to Zoom, and stylized as','7.4.6'),

    ('2012SM4031','TS16', 'AM2800' ,'ShareMe','2015-03-13','ShareMe is a file sharing app. Works on Android devices including Xi.','7.9.0'),
    
    ('2012CA4032','TS16', 'AU3000' ,'Canva','2017-07-17','Canva is a graphic design platform, used to create social media ','6.7.4'),

    ('2012XR4033','TS16', 'CH3100' ,'Xender','2014-04-30','Xender, é um aplicativo de software com capacidade de ','3.4.8'),

    ('2012OL4034','TS16', 'USA3200' ,'OfficeLense','2017-06-27','This is a redirect from a title that potentially could be ex','5.0.6'),

    ('2012LE4035','TS16', 'USA3300' ,'Lense','2013-04-17','Google Lens is an image recognition technology developed by Google,','7.8.3'),

    ('2012QE4036','TS16', 'AU3000' ,'QReduce','2015-05-16','QReduce Lite | Compress image size in kb & mb wiki page – full gallery, updates, whe.','5.3.6'),
 
    ('2012SS4037','GG05', 'DK3400' ,'SubwaySurf','2012-03-15','Subway Surfers is an endless runner mobile game co-developed by Kiloo[1] and SYB','5.7.3'),

    ('2012CC4038','GG05', 'MA3500' ,'CandyCrushSaga','2014-02-18','Candy Crush Saga is a free-to-play match-three puzzle video game released by King on April 12, 2012,','5.3.2'),

    ('2012LK4039','GG05', 'IN3600' ,'LudoKing','2018-03-21','Ludo King is an Indian free-to-play mobile game applicatio','4.3.9'),
    
    ('2012RT4040','NM12', 'AM3700' ,'Reddit','2019-06-20','Reddit is an American social news aggregation, web content rating, and discussion website. R','6.3.9'),

    ('2012TH4041','NM12', 'IN3800' ,'The Hindu','2018-08-22','he Hindu is an English-language daily newspaper owned by The Hindu Group, headquartered in Chennai, Tamil Nadu','3.0.6'),

    ('2012MD4042','NM12', 'IN2700' ,'Medium','2021-07-18','Medium is an American online publishing platform develo','2.7.4'),

    ('2012DH4043','NM12', 'AM3700' ,'DailyHunt','2008-04-12','Dailyhunt is an Indian content and news aggregator application based in Bangalore,','4.3.5'),

    ('2012QA4044','NM12', 'IN2700' ,'Quora','2015-06-17','The website was made available to the public on J','7.8.3'),

    ('2012TI4045','NM12', 'IN3800' ,'TOI','2017-07-16','The Times of India  is an Indian English-language ','6.7.9'),

    ('2012LR4046','PY14', 'US3900' ,'LightRoom','2016-07-15','Adobe Lightroom  is a creative image org','4.3.2'),

    ('2012PT4047','PY14', 'AR2400' ,'PicsArt','2019-03-14','Picsart is a San Francisco, California and','4.5.7'),

    ('2012MP4048','VR11', 'IN4000' ,'MXPlayer','2020-06-17','MX Player is an Indian video stre','6.5.4'),

    ('2012VC4049','VR11', 'FR4100' ,'VLC','2016-04-16','VLC media player (previously the VideoLAN ','3.2.6'),

    ('2012AA4050','PD15', 'USA1800' ,'AmazonAlexa','2017-11-20','Amazon Alexa, also known simply as','2.6.7');



create table Systems
(
  
    Reg_id varchar(20) not null ,
    OperatingSystem varchar(30),
   Permisions_Required varchar(60),
    FOREIGN KEY (Reg_id) references app(Reg_id) 
);

insert into Systems (Reg_id , OperatingSystem, Permisions_Required) values

( '2012WA4001', 'OS', 'Location Contact Camera'),

('2012CL4002','Android ',  'Camera PhoneStorage_access Microphone'),

( '2012PM4003' ,'Android ', 'Calender Camera'),

('2012TM4004','Ios', 'Location Camera Contact'),

('2012IM4005' ,'Android', 'Camera Contacts Phone Location'),

('2012SY4006','Ios', 'Microphone Camera Storage'),

('2012WM4007' ,'Android', 'Microphone Storage Phone'),

('2012GE4008' , 'Android', 'Camera Calender Contacts Location'),

('2012FF4009' , 'Ios', 'Location Microphone Storage'),

('2012LN4010' , 'Android', '4 GB RAM Storage'),

('2012NX4011' , 'Windows', 'Storage Camera'),

('2012FK4012' , 'Android', 'Location Storage Camera Contacts'),

('2012TR4013' , 'Android ', 'Location Storage'),

 ('2012UR4014',  'Android', 'Location Storage'),

    ('2012MT4015',  'Android', 'Location Microphone Storage'),

    ('2012HS4016',  'Android', 'Microphone Storage Phone' ),

    ('2012AV4017', 'Android', 'Location Camera Contact'),

    ('2012FT4018', 'Android', 'Location Storage' ),

    ('2012AN4019', 'Android', 'Camera Contacts Phone Location'),

    ('2012MO4020', 'Android', 'Camera PhoneStorage_access Microphone'),

    ('2012SY4021', 'Android', 'Storage Camera' ),

    ('2012AO4022', 'OS 4.1', 'Location Contact Camera'),

    ('2012MA4023', 'Android', 'Location Camera Contact'),

    ('2012SL4024', 'Android', 'Location Camera Contact'),

    ('2012OX4025', 'OS 4.1', 'Location Contact Camera'),

    ('2012BB4026', 'Android ', 'Camera PhoneStorage_access Microphone' ),

    ('2012JM4027', 'Android', 'Location Camera Contact' ),

    ('2012CB4028', 'Android', 'Storage Camera' ),

    ('2012SE4029', 'Android', 'Camera Contacts Phone Location'),

    ('2012ZM4030', 'OS 4.1', 'Location Contact Camera'),

    ('2012SM4031', 'Android', 'Camera Contacts Phone Location'),

    ('2012CA4032', 'Android', 'Camera Storage'),

    ('2012XR4033', 'OS 4.1', 'Location Contact Camera'),

    ('2012OL4034','Android', 'Microphone Storage Phone'),

    ('2012LE4035','Android', 'Location Camera Contact'),

    ('2012QE4036','Android', 'Camera Storage'),

    ('2012SS4037', 'OS 4.1', 'Location Contact Camera'),

    ('2012CC4038', 'Android', 'Camera PhoneStorage_access Microphone'),

    ('2012LK4039', 'Android', 'Location Camera Contact'),

    ('2012RT4040', 'Android', 'Location Camera Contact'),

    ('2012TH4041', 'OS 4.1', 'Location Contact Camera'),

    ('2012MD4042', 'Android', 'Camera Contacts Phone Location' ),

    ('2012DH4043', 'Android', 'Location Storage Camera Contacts'),

    ('2012QA4044','Android', 'Camera Contacts Phone Location'),

    ('2012TI4045', 'Android', 'Location Camera Contact'),

    ('2012LR4046','OS 4.1', 'Location Contact Camera'),

    ('2012PT4047', 'Android', 'Location Storage Camera Contacts'),

    ('2012MP4048','Android', 'Location Storage Camera Contacts'),

    ('2012VC4049', 'Android', 'Camera Contacts Phone Location' ),
    
    ('2012AA4050', 'Android', 'Location Camera Contact');


create table rating(
     cat_id varchar(20) not null, 
     Reg_id varchar(20) not null , 
     downloads_inMillions int,
     five_stars int,
     four_stars int,
     three_stars int,
     two_stars int,
     one_star int,
     FOREIGN KEY (Reg_id) references app(Reg_id),
     FOREIGN KEY (cat_id) references catagory(cat_id)
);

insert into rating ( Reg_id, cat_id, downloads_inMillions, five_stars, four_stars, three_stars, two_stars, one_star) values

('2012WA4001', 'SL01', 149, 108, 23, 10, 0, 0),

('2012CL4002', 'EL02', 145, 101, 32, 0, 0, 6),

('2012PM4003', 'FE03', 12, 6, 2, 0, 3, 0),

('2012TM4004', 'SL01', 100000, 11230, 234, 23, 8, 6),

('2012IM4005', 'SL01', 1230, 1023, 23, 34, 20, 1),

('2012SY4006', 'MS04', 10023, 550, 23, 10, 90, 19),

('2012WM4007', 'MS04', 10001, 100, 10, 2, 45, 2 ),

('2012GE4008', 'SL01', 100900, 91900, 230, 67, 4, 8 ),

('2012FF4009', 'GG05', 100459, 23890, 231, 54, 23, 12),

('2012LN4010', 'BS06', 556, 234, 123, 24, 98, 0),

('2012NX4011', 'ET07', 100345, 789, 67, 0, 23, 89),

('2012FK4012', 'SL01', 500349, 98456, 654, 92, 0, 0 ),

('2012TR4013', 'SL01', 178, 79, 16, 0, 8, 2),

('2012UR4014', 'UL09', 587, 340, 190, 78, 23, 22),

('2012MT4015', 'TG10', 57, 43, 21, 6, 3, 1),

('2012HS4016', 'ET07', 177, 95, 30, 2, 1, 1),

('2012AV4017', 'ET07', 167, 111, 24, 23, 0, 1),

('2012FT4018', 'SG18', 187, 113, 76, 31, 11, 1),

('2012AN4019', 'SG18', 156, 93, 68, 14, 23, 11 ),

('2012MO4020', 'SG18', 143, 97, 23, 12, 1, 0),

('2012SY4021', 'SG18', 14, 8, 3, 2, 1, 0),

('2012AO4022', 'SG18', 189, 98, 62, 23, 21, 1),

('2012MA4023', 'SG18', 137, 67, 45, 0, 6, 3),

('2012SL4024', 'SG18', 190, 93, 60, 20, 13, 1),

('2012OX4025', 'SG18', 140, 79, 33, 0, 0, 20),

('2012BB4026', 'SG18', 3, 1, 1, 0, 0, 0),

('2012JM4027', 'SG18', 19, 3, 2, 0, 0, 1 ),

('2012CB4028', 'ET07', 157, 89, 54, 23, 3, 1 ),

('2012SE4029', 'MS04', 138, 78, 16, 6, 0, 0),

('2012ZM4030', 'CN17', 578, 340, 98, 13, 0, 0),

('2012SM4031','TS16', 1567, 760, 320, 130, 65, 0),

('2012CA4032','TS16', 186, 102, 23, 54, 0, 2),

('2012XR4033','TS16', 14, 8, 4, 0, 0, 1),

('2012OL4034','TS16', 16, 8, 3, 2, 0, 1),

('2012LE4035','TS16', 234, 132, 32, 9, 6, 3),

('2012QE4036','TS16', 7, 2, 1, 0, 0, 0),

('2012SS4037','GG05', 1785, 786, 459, 123, 89, 45),

('2012CC4038','GG05', 1897, 896, 459, 39, 267, 9),

('2012LK4039','GG05', 593, 349, 123, 34, 18, 2),

('2012RT4040', 'NM12', 59, 32, 8, 3, 1, 0 ),

('2012TH4041', 'NM12', 18, 7, 6, 2, 1, 0),

('2012MD4042', 'NM12', 6, 3, 2, 0, 0, 0),

('2012DH4043', 'NM12', 165, 99, 34, 12, 2, 1),

('2012QA4044', 'NM12', 16, 9, 3, 1, 0, 0),

('2012TI4045', 'NM12', 12, 7, 1, 2, 1, 0),

('2012LR4046', 'PY14', 178, 154, 21, 6, 0, 9),

('2012PT4047', 'PY14', 567, 323, 101, 24, 6, 1),

('2012MP4048', 'VR11', 1903, 678, 321, 12, 10, 2),

('2012VC4049', 'VR11', 187, 132, 67, 23, 10, 8),
    
('2012AA4050', 'TS16', 57, 34, 2, 13, 9, 1 );


create table size(
    Reg_id varchar(20),
    Download_size_inMB int ,
    DiskSpace_inMB int ,
   FOREIGN key (Reg_id) references app(Reg_id)
);


insert into size(Reg_id, Download_size_inMB, DiskSpace_inMB) values 
('2012WA4001', 45, 5300 ),

('2012CL4002', 56, 125),

('2012PM4003', 78, 200),

('2012TM4004', 56, 500),

('2012IM4005', 80, 300),

('2012SY4006', 150, 450),

('2012WM4007', 110, 80),

('2012GE4008', 170, 160),

('2012FF4009', 1200, 2200),

('2012LN4010', 500, 1000),

('2012NX4011', 250, 700),

('2012FK4012', 320, 680),

('2012TR4013', 250, 540),

('2012UR4014', 220, 600),

    ('2012MT4015', 150, 340),

    ('2012HS4016', 67, 900),

    ('2012AV4017', 56, 400),

    ('2012FT4018', 43, 170 ),

    ('2012AN4019', 78, 780),

    ('2012MO4020', 95, 620),

    ('2012SY4021', 90, 780),

    ('2012AO4022', 67, 340),

    ('2012MA4023', 77, 490),

    ('2012SL4024',69,390),

    ('2012OX4025', 99, 720),

    ('2012BB4026', 71,623 ),

    ('2012JM4027', 69, 321),

    ('2012CB4028',73,621),

    ('2012SE4029', 77, 694),

    ('2012ZM4030', 73, 294),

    ('2012SM4031',64, 328),

    ('2012CA4032', 61, 563),

    ('2012XR4033',63, 219),

    ('2012OL4034',52,146),

    ('2012LE4035',34, 840),

    ('2012QE4036',41, 120),

    ('2012SS4037',93, 241),

    ('2012CC4038',65,473),

    ('2012LK4039', 48, 329),

    ('2012RT4040', 71, 98),

    ('2012TH4041', 83, 484),

    ('2012MD4042', 53,64),

    ('2012DH4043', 83, 268),

    ('2012QA4044', 58, 624),

    ('2012TI4045', 76, 235),

    ('2012LR4046', 75, 521),

    ('2012PT4047', 61, 328),

    ('2012MP4048',69,645),

    ('2012VC4049',41, 368),
    
    ('2012AA4050', 65, 824);

 



use AppStore;
-- //1.select apps with their corresponding countries and company names
select A.App_name as App, B.C_Name as Company, B.origin as Country
from app A
inner join company B
on A.ID = B.ID
order by B.C_Name;

-- //2. select apps with a particular category which has a certain age limit
select A.App_name as App, B.App_Catagory as Category 
from app A, catagory B 
where A.cat_id=B.cat_id and B.App_catagory = 'Social' and B.AgeLimit>10;

-- //3. distinct countries
select distinct(origin) as Country from company;

-- //4. select apps with no. of downloads greater than a limit 
select A.App_name as App, C.downloads_inMillions as downloads 
from app A
left join rating C 
on A.Reg_id=C.Reg_id
where downloads_inMillions>100;

-- //5. select apps with size less than a limit
select A.App_name as App, B.Download_size_inMB as Size 
from app A, size B
where A.Reg_id=B.Reg_id and B.Download_size_inMB < 50;

-- //6-7. select apps with origin using in, between, not null, wildcards
select A.App_name as App, B.origin as Country, B.C_Name as Company
from app A, company B
where A.ID=B.ID and not B.origin = 'NewYork';

select A.Reg_id as ID, A.App_name as App, B.origin as Country, B.C_Name as Company
from app A, company B
where A.ID=B.ID and B.origin in ('NewYork','UnitedStates','California');

-- //8. select apps and their companies along with their revenue
select A.App_Name as App, B.C_Name as Company, B.revenue_in_crores as Revenue
from app A
right join company B
on A.ID=B.ID ;

-- //9.	select apps with camera permission
select A.App_name, B.Permisions_Required 
from app A INNER Join Systems B
ON A.Reg_id = B.Reg_id
where B.Permisions_Required like '%cam%' ;


/*10. select apps which are released recently(after 2012) */
select App_name, date_of_release
from app 
where date_of_release > '2012-12-31' 
order by date_of_release ;


/*11. select apps with a particular operating system and disk space less than a limit*/
select App_name, OperatingSystem, DiskSpace_inMB
from app 
inner join systems on app.Reg_id = Systems.Reg_id 
inner join size on app.Reg_id = size.Reg_id 
where size.DiskSpace_inMB < 300 and Systems.OperatingSystem='Android';


use AppStore;
/*12. display app names having  maximum downloads in particular category  */
select A.App_name as appname,D.downloads_inMillions as noOfDownload, C.App_catagory as category
from app A 
inner join catagory C on A.cat_id = C.cat_id
inner join rating D on  A.Reg_id = D.Reg_id
where downloads_inMillions in (select MAX(downloads_inMillions) from rating  group by cat_id) ;

/*13. Average download category wise*/
select AVG(downloads_inMillions) as avgDownload, App_catagory as category from rating
INNER JOIN catagory
on rating.cat_id = catagory.cat_id
group by App_catagory;

