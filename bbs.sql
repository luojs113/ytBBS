prompt PL/SQL Developer import file
prompt Created on 2017年9月18日 by George Luo
set feedback off
set define off
prompt Disabling triggers for T_ADMIN...
alter table T_ADMIN disable all triggers;
prompt Disabling triggers for T_USER...
alter table T_USER disable all triggers;
prompt Disabling triggers for T_CARE...
alter table T_CARE disable all triggers;
prompt Disabling triggers for T_SECTION...
alter table T_SECTION disable all triggers;
prompt Disabling triggers for T_POST...
alter table T_POST disable all triggers;
prompt Disabling triggers for T_COLLECT...
alter table T_COLLECT disable all triggers;
prompt Disabling triggers for T_REPLY...
alter table T_REPLY disable all triggers;
prompt Disabling foreign key constraints for T_CARE...
alter table T_CARE disable constraint FK_CUSER_ID;
alter table T_CARE disable constraint FK_FUSER_ID;
prompt Disabling foreign key constraints for T_SECTION...
alter table T_SECTION disable constraint FK_S_ADMIN;
prompt Disabling foreign key constraints for T_POST...
alter table T_POST disable constraint FK_SECTION_ID;
alter table T_POST disable constraint FK_USER_ID;
prompt Disabling foreign key constraints for T_COLLECT...
alter table T_COLLECT disable constraint FK_CTPOST_ID;
alter table T_COLLECT disable constraint FK_CTUSER_ID;
prompt Disabling foreign key constraints for T_REPLY...
alter table T_REPLY disable constraint FK_POST_ID;
alter table T_REPLY disable constraint FK_RUSER_ID;
prompt Deleting T_REPLY...
delete from T_REPLY;
commit;
prompt Deleting T_COLLECT...
delete from T_COLLECT;
commit;
prompt Deleting T_POST...
delete from T_POST;
commit;
prompt Deleting T_SECTION...
delete from T_SECTION;
commit;
prompt Deleting T_CARE...
delete from T_CARE;
commit;
prompt Deleting T_USER...
delete from T_USER;
commit;
prompt Deleting T_ADMIN...
delete from T_ADMIN;
commit;
prompt Loading T_ADMIN...
insert into T_ADMIN (a_id, a_name, a_pwd)
values ('22', 'admin', 'admin');
commit;
prompt 1 records loaded
prompt Loading T_USER...
insert into T_USER (u_id, u_name, u_pwd, u_email, u_sex, u_birth, u_show, u_head, u_time, u_code, u_status, u_member)
values ('7EA958B8CA1B4B2A9100553170174670', '一头牛', '0b4e7a0e5fe84ad35fb5f95b9ceeac79', '401432612@qq.com', 'male', '14-9月 -17', null, null, to_date('14-09-2017 14:48:18', 'dd-mm-yyyy hh24:mi:ss'), '53B3C680D2514AE8A10F3A3057D41A9C', 2, 0);
insert into T_USER (u_id, u_name, u_pwd, u_email, u_sex, u_birth, u_show, u_head, u_time, u_code, u_status, u_member)
values ('27A21B72BC7C4B40929AF2C6D452D43D', '谁告诉对方', '76419c58730d9f35de7ac538c2fd6737', 'd''f''s''d''fgsfd@fdgs.con', 'male', '14-9月 -17', null, null, to_date('14-09-2017 15:06:53', 'dd-mm-yyyy hh24:mi:ss'), 'BE06B030BB604226A7618878D2A1513F', 2, 0);
insert into T_USER (u_id, u_name, u_pwd, u_email, u_sex, u_birth, u_show, u_head, u_time, u_code, u_status, u_member)
values ('330F4FCC46424B4AB05D2F6E503A1A1D', '罗随机', '200820e3227815ed1756a6b531e7e0d2', 'qqqqq@dd.com', 'male', '14-9月 -17', null, null, to_date('14-09-2017 15:07:49', 'dd-mm-yyyy hh24:mi:ss'), '06E90D6B6380407780911BC732930B87', 1, 0);
insert into T_USER (u_id, u_name, u_pwd, u_email, u_sex, u_birth, u_show, u_head, u_time, u_code, u_status, u_member)
values ('27D3E699B9F04C3A95C68B2E59B517D9', '簸箕大哥大', 'e10adc3949ba59abbe56e057f20f883e', '2422730690@qq.com', 'male', null, null, null, to_date('17-09-2017 22:38:02', 'dd-mm-yyyy hh24:mi:ss'), '1BB74A5C1EFE4B68A9C20223413BB909', 0, 0);
insert into T_USER (u_id, u_name, u_pwd, u_email, u_sex, u_birth, u_show, u_head, u_time, u_code, u_status, u_member)
values ('8FD249A2984B45AFA171DE8A2F36BB22', 'ak47', 'cd87cd5ef753a06ee79fc75dc7cfe66c', '2022365796@qq.com', 'male', '1998-09-18', '哈哈哈。。。', '/upload/userhead\/6/0\660C2AF1813B4A55AD47A97060A71906.jpg', to_date('18-09-2017 09:14:43', 'dd-mm-yyyy hh24:mi:ss'), '554EB90114744D839BE5DB6F7FF869B2', 1, 0);
insert into T_USER (u_id, u_name, u_pwd, u_email, u_sex, u_birth, u_show, u_head, u_time, u_code, u_status, u_member)
values ('9525058C8459421DA4E025B8D5398872', '我最帅', 'e10adc3949ba59abbe56e057f20f883e', '1094950759@qq.com', 'male', null, '史上最聪明最帅的男人', '/upload/userhead\/8/8\69B88059C72B4AEF91AFA295513C1AAD.jpg', to_date('18-09-2017 09:15:22', 'dd-mm-yyyy hh24:mi:ss'), 'E66EB7F1624D48A4B3EE17E0A25C33B7', 1, 0);
insert into T_USER (u_id, u_name, u_pwd, u_email, u_sex, u_birth, u_show, u_head, u_time, u_code, u_status, u_member)
values ('F4B02FA5BB8742748F119E9889ED89C2', '111', 'e10adc3949ba59abbe56e057f20f883e', '2495784510@qq.com', 'male', '2017-09-01', null, '/upload/userhead\/b/1\448C6C8EED914D46ADC902EF02CB04DF.jpg', to_date('18-09-2017 09:19:31', 'dd-mm-yyyy hh24:mi:ss'), 'E01F0832008F4C10AC9614EC69A08A57', 1, 0);
insert into T_USER (u_id, u_name, u_pwd, u_email, u_sex, u_birth, u_show, u_head, u_time, u_code, u_status, u_member)
values ('64085BFEC9B64FBE8F069C8A80E5BA1D', 't1076682076', '9b6808d1bbe438d31d16c32a6da8a300', '1310847353@qq.com', 'male', null, null, null, to_date('18-09-2017 09:21:02', 'dd-mm-yyyy hh24:mi:ss'), '10CB0EAB20904B9EAE8BD8458AD78345', 1, 0);
insert into T_USER (u_id, u_name, u_pwd, u_email, u_sex, u_birth, u_show, u_head, u_time, u_code, u_status, u_member)
values ('F4D674CE4D2140F198EDF1A3B4FA0CDD', '哈罗我的', 'fcea920f7412b5da7be0cf42b8c93759', '464499027@qq.com', 'female', '2012-05-29', null, '/upload/userhead\/c/c\BB73072AE13A472BA77768C8AE4FA22C.jpg', to_date('17-09-2017 12:39:27', 'dd-mm-yyyy hh24:mi:ss'), '9D6A35AE15434029AD204F7784F2B3A9', 1, 0);
insert into T_USER (u_id, u_name, u_pwd, u_email, u_sex, u_birth, u_show, u_head, u_time, u_code, u_status, u_member)
values ('D5E8F4BF725E4CFC89CC9DB5F59A09AC', '阿斯蒂芬', 'e10adc3949ba59abbe56e057f20f883e', '13223123212@qq.com', 'male', '1997/03/13', '还分四级啊就爱送', null, to_date('08-09-2017 12:46:53', 'dd-mm-yyyy hh24:mi:ss'), '96837028', 1, 0);
insert into T_USER (u_id, u_name, u_pwd, u_email, u_sex, u_birth, u_show, u_head, u_time, u_code, u_status, u_member)
values ('5W4454EEDSFGR5D8DS2C5DQQ5WHJ6SD8', 'Tomcat', 'e10adc3949ba59abbe56e057f20f883e', 'tomcat@qq.com', 'female', '2017/09/13', '我特么不是服务器', null, to_date('13-09-2017 14:12:16', 'dd-mm-yyyy hh24:mi:ss'), 'utWW780k', 2, 0);
insert into T_USER (u_id, u_name, u_pwd, u_email, u_sex, u_birth, u_show, u_head, u_time, u_code, u_status, u_member)
values ('F5SSS125D48F48Q9S61D5F47G123A54S', '骨科', 'e10adc3949ba59abbe56e057f20f883e', 'guke123@163.com', 'female', '2000/01/01', '哦呵呵呵', null, to_date('13-09-2017 17:15:20', 'dd-mm-yyyy hh24:mi:ss'), 'utDH780k', 1, 1);
insert into T_USER (u_id, u_name, u_pwd, u_email, u_sex, u_birth, u_show, u_head, u_time, u_code, u_status, u_member)
values ('FKJD1S5D2Q3W6E4Z5S4D2F5Q8W6E5S1Z', '汤汁横', 'e10adc3949ba59abbe56e057f20f883e', 'tangzhiheng@126.com', 'female', '1988/05/01', '啊哈哈哈', null, to_date('13-09-2017 17:17:04', 'dd-mm-yyyy hh24:mi:ss'), '96837028', 2, 1);
insert into T_USER (u_id, u_name, u_pwd, u_email, u_sex, u_birth, u_show, u_head, u_time, u_code, u_status, u_member)
values ('QWE4S5D4F8XZ1CC2A3S6D5ZSD5Q8SD5Q', '咒纹城', 'e10adc3949ba59abbe56e057f20f883e', 'zhouwencheng99@163.com', 'male', '1999/09/09', '咦嘿', null, to_date('13-09-2017 17:18:58', 'dd-mm-yyyy hh24:mi:ss'), 'utDH780k', 2, 1);
insert into T_USER (u_id, u_name, u_pwd, u_email, u_sex, u_birth, u_show, u_head, u_time, u_code, u_status, u_member)
values ('F5ABCA325D074ECF8E3BE4DB6705C11B', 'lp', 'e10adc3949ba59abbe56e057f20f883e', '707652936@qq.com', 'male', null, null, null, to_date('18-09-2017 09:26:38', 'dd-mm-yyyy hh24:mi:ss'), '47AC81927D4140E5ACC5ECACE309F410', 1, 0);
insert into T_USER (u_id, u_name, u_pwd, u_email, u_sex, u_birth, u_show, u_head, u_time, u_code, u_status, u_member)
values ('360FF0F5F7F6422F99DF5617B5C0C72E', '伽菲妈', 'e10adc3949ba59abbe56e057f20f883e', '13231212@qq.com', 'male', '2002-04-18', '是的撒所大大所', '/upload/userhead\/f/d\7BE3DD1D94D6430290AC834D2C9CAE77.jpg', to_date('08-09-2017 12:45:11', 'dd-mm-yyyy hh24:mi:ss'), '96837028', 1, 0);
insert into T_USER (u_id, u_name, u_pwd, u_email, u_sex, u_birth, u_show, u_head, u_time, u_code, u_status, u_member)
values ('1F5CE01B15AD405DA60C473B7A95B2EA', '箩箩箩', 'e10adc3949ba59abbe56e057f20f883e', 'luo1663088396@163.com', 'male', null, null, null, to_date('18-09-2017 09:36:16', 'dd-mm-yyyy hh24:mi:ss'), '370B5898065B46118F8969A64B5E3CA7', 1, 0);
insert into T_USER (u_id, u_name, u_pwd, u_email, u_sex, u_birth, u_show, u_head, u_time, u_code, u_status, u_member)
values ('fjwuxoqp9385nvjd827wysh46xysizms', '一刀超神', 'e10adc3949ba59abbe56e057f20f883e', 'luo1584434540@163.com', 'male', '1995/10/12', '懒得写，别看了', null, to_date('08-09-2017 12:37:14', 'dd-mm-yyyy hh24:mi:ss'), 'utDH780k', 2, 0);
insert into T_USER (u_id, u_name, u_pwd, u_email, u_sex, u_birth, u_show, u_head, u_time, u_code, u_status, u_member)
values ('fjwuxwwp9385nvjd827ccch46xysizms', '跳跳熊', 'e10adc3949ba59abbe56e057f20f883e', '1584434540@qq.com', 'female', '1996-09-23', '干物妹小埋第二季要来了，好高兴jjjjjjjjjj', '/upload/userhead\/a/a\885B3060538844529EC74EB6D87E764F.gif', to_date('08-09-2017 12:37:14', 'dd-mm-yyyy hh24:mi:ss'), 'utWW780k', 1, 1);
insert into T_USER (u_id, u_name, u_pwd, u_email, u_sex, u_birth, u_show, u_head, u_time, u_code, u_status, u_member)
values ('65A5E3FBEF4F4210B968370289B227F9', '黑夜大猫', 'e10adc3949ba59abbe56e057f20f883e', '889584589@qq.com', 'male', '1997/03/13', '测试一下是不是真的', null, to_date('08-09-2017 12:37:15', 'dd-mm-yyyy hh24:mi:ss'), '96837028', 1, 0);
insert into T_USER (u_id, u_name, u_pwd, u_email, u_sex, u_birth, u_show, u_head, u_time, u_code, u_status, u_member)
values ('2549A196799C4AEB80B4E55624B6A774', '山东附近看到蒂芬', 'e10adc3949ba59abbe56e057f20f883e', '990212@qq.com', 'male', '1997/03/13', '还分四级啊就爱送', null, to_date('08-09-2017 12:47:50', 'dd-mm-yyyy hh24:mi:ss'), '96837028', 2, 0);
insert into T_USER (u_id, u_name, u_pwd, u_email, u_sex, u_birth, u_show, u_head, u_time, u_code, u_status, u_member)
values ('S1NUXKFKRGS1UNLPIELR9G1574A2396V', '辉夜姬', 'e10adc3949ba59abbe56e057f20f883e', 'huiyeji@163.com', 'female', '2017/09/07', '我就是个打火机', null, to_date('12-09-2017 14:23:52', 'dd-mm-yyyy hh24:mi:ss'), 'utDH780k', 1, 1);
insert into T_USER (u_id, u_name, u_pwd, u_email, u_sex, u_birth, u_show, u_head, u_time, u_code, u_status, u_member)
values ('YXW9AH9C6FFNNGTO2J2TWNAGXSNNZ9Q3', '会飞的酸酸乳', 'e10adc3949ba59abbe56e057f20f883e', 'asdasdasd@qq.com', 'female', '1999/05/08', '去委屈委屈委屈谔谔', null, to_date('12-09-2017 14:38:00', 'dd-mm-yyyy hh24:mi:ss'), 'utDH780k', 2, 0);
insert into T_USER (u_id, u_name, u_pwd, u_email, u_sex, u_birth, u_show, u_head, u_time, u_code, u_status, u_member)
values ('6G56PDKMCYIO501O2H2ADMZUAMAOM2GP', '萝菌生', 'e10adc3949ba59abbe56e057f20f883e', 'ljs1991@163.com', 'female', '1992/12/25', 'vDVD风格', null, to_date('12-09-2017 14:38:00', 'dd-mm-yyyy hh24:mi:ss'), 'utWW780k', 2, 0);
insert into T_USER (u_id, u_name, u_pwd, u_email, u_sex, u_birth, u_show, u_head, u_time, u_code, u_status, u_member)
values ('SPIHXH85RD66XWMJVLP6AC0WSOCIHCYD', '碰星球', 'e10adc3949ba59abbe56e057f20f883e', 'pengxinqiu@qq.com', 'male', '1982/11/30', '微信查询支付的期望', null, to_date('12-09-2017 14:38:00', 'dd-mm-yyyy hh24:mi:ss'), 'utWW780k', 1, 0);
insert into T_USER (u_id, u_name, u_pwd, u_email, u_sex, u_birth, u_show, u_head, u_time, u_code, u_status, u_member)
values ('RMLWN9ZDY7I1MHQYYXVCMDI5AOYZBDTW', '妮妮宏', 'e10adc3949ba59abbe56e057f20f883e', 'ninihong@qq.com', 'female', '2002/10/08', '气味奥所多', null, to_date('12-09-2017 14:38:00', 'dd-mm-yyyy hh24:mi:ss'), 'utWW780k', 1, 1);
insert into T_USER (u_id, u_name, u_pwd, u_email, u_sex, u_birth, u_show, u_head, u_time, u_code, u_status, u_member)
values ('TIX55QX9369XBH3NIWOBS427ZM2NMANK', '夜加橙', 'e10adc3949ba59abbe56e057f20f883e', 'yejiacheng@126.com', 'male', '1993/07/22', '给对方问人工费', null, to_date('12-09-2017 14:38:00', 'dd-mm-yyyy hh24:mi:ss'), 'utDH780k', 1, 1);
insert into T_USER (u_id, u_name, u_pwd, u_email, u_sex, u_birth, u_show, u_head, u_time, u_code, u_status, u_member)
values ('SW6HA4XOSVL62QKGKCOFSFY7202XZLNX', '牛呸', 'e10adc3949ba59abbe56e057f20f883e', 'niupei@qq.com', 'female', '1991/04/11', 'as对称中心常清文', null, to_date('12-09-2017 14:38:00', 'dd-mm-yyyy hh24:mi:ss'), 'utWW780k', 1, 0);
insert into T_USER (u_id, u_name, u_pwd, u_email, u_sex, u_birth, u_show, u_head, u_time, u_code, u_status, u_member)
values ('K1FMFZ221OFTUS0BI2W72WN1CBE4WL6A', '阿伏伽德罗', 'e10adc3949ba59abbe56e057f20f883e', 'afjdl@qq.com', 'female', '1994/02/13', '我很厉害的', null, to_date('12-09-2017 14:38:00', 'dd-mm-yyyy hh24:mi:ss'), 'utDH780k', 2, 0);
insert into T_USER (u_id, u_name, u_pwd, u_email, u_sex, u_birth, u_show, u_head, u_time, u_code, u_status, u_member)
values ('KK0VPE4H3OVQ8DMHW36DZFK5R60CKJZ0', '黑童子', 'e10adc3949ba59abbe56e057f20f883e', 'heitongzi@126.com', 'male', '1995/02/25', '很多刀砍洗你', null, to_date('12-09-2017 14:38:00', 'dd-mm-yyyy hh24:mi:ss'), '96837028', 2, 1);
insert into T_USER (u_id, u_name, u_pwd, u_email, u_sex, u_birth, u_show, u_head, u_time, u_code, u_status, u_member)
values ('S65VYYCF0PPRKW6RL0YNAMX1QY1AZ0WQ', '妖刀姬', 'e10adc3949ba59abbe56e057f20f883e', 'yaodaoji@alibaodu.com', 'female', '1998/04/08', '一刀砍洗你', null, to_date('12-09-2017 14:38:00', 'dd-mm-yyyy hh24:mi:ss'), 'utDH780k', 2, 0);
insert into T_USER (u_id, u_name, u_pwd, u_email, u_sex, u_birth, u_show, u_head, u_time, u_code, u_status, u_member)
values ('GK9YOYJK7ZYAFRJUXAJZ8YLC4ETFU90Y', '肯麦基', 'e10adc3949ba59abbe56e057f20f883e', 'maikenji@163.com', 'female', '1992/08/07', '好吃不贵，健康实惠', null, to_date('12-09-2017 14:38:00', 'dd-mm-yyyy hh24:mi:ss'), '96837028', 2, 0);
insert into T_USER (u_id, u_name, u_pwd, u_email, u_sex, u_birth, u_show, u_head, u_time, u_code, u_status, u_member)
values ('6756D9DF46DA4492B866ED4ACB4384F3', '豹头痛哭', '350c9d901b7f1c73a481e240ec1b7c0b', '1663088396@qq.com', 'male', '15-9月 -17', null, null, to_date('15-09-2017 16:23:39', 'dd-mm-yyyy hh24:mi:ss'), '175670AA16334579B92493BAB4D00F9E', 1, 0);
commit;
prompt 33 records loaded
prompt Loading T_CARE...
insert into T_CARE (c_id, c_uid, c_fid)
values ('F0B6BEA11B0E4F0B8846C3E8C3DD3E55', '9525058C8459421DA4E025B8D5398872', 'fjwuxwwp9385nvjd827ccch46xysizms');
insert into T_CARE (c_id, c_uid, c_fid)
values ('483DA1F1BE3F4FAE848FD0728592034F', 'SW6HA4XOSVL62QKGKCOFSFY7202XZLNX', 'F4D674CE4D2140F198EDF1A3B4FA0CDD');
insert into T_CARE (c_id, c_uid, c_fid)
values ('4D3A210E96DB47B883C46F647C8B322D', 'fjwuxoqp9385nvjd827wysh46xysizms', 'F4D674CE4D2140F198EDF1A3B4FA0CDD');
insert into T_CARE (c_id, c_uid, c_fid)
values ('97D3190AE93A40F59E28E156FA1A2E97', 'F4D674CE4D2140F198EDF1A3B4FA0CDD', '9525058C8459421DA4E025B8D5398872');
insert into T_CARE (c_id, c_uid, c_fid)
values ('saasddsasdss', 'D5E8F4BF725E4CFC89CC9DB5F59A09AC', '360FF0F5F7F6422F99DF5617B5C0C72E');
insert into T_CARE (c_id, c_uid, c_fid)
values ('23123sdsd', 'D5E8F4BF725E4CFC89CC9DB5F59A09AC', '2549A196799C4AEB80B4E55624B6A774');
insert into T_CARE (c_id, c_uid, c_fid)
values ('33', 'GK9YOYJK7ZYAFRJUXAJZ8YLC4ETFU90Y', 'fjwuxoqp9385nvjd827wysh46xysizms');
insert into T_CARE (c_id, c_uid, c_fid)
values ('32', 'SPIHXH85RD66XWMJVLP6AC0WSOCIHCYD', 'K1FMFZ221OFTUS0BI2W72WN1CBE4WL6A');
insert into T_CARE (c_id, c_uid, c_fid)
values ('31', 'TIX55QX9369XBH3NIWOBS427ZM2NMANK', '2549A196799C4AEB80B4E55624B6A774');
insert into T_CARE (c_id, c_uid, c_fid)
values ('30', '6G56PDKMCYIO501O2H2ADMZUAMAOM2GP', 'TIX55QX9369XBH3NIWOBS427ZM2NMANK');
insert into T_CARE (c_id, c_uid, c_fid)
values ('29', 'S65VYYCF0PPRKW6RL0YNAMX1QY1AZ0WQ', 'K1FMFZ221OFTUS0BI2W72WN1CBE4WL6A');
insert into T_CARE (c_id, c_uid, c_fid)
values ('28', 'RMLWN9ZDY7I1MHQYYXVCMDI5AOYZBDTW', 'SW6HA4XOSVL62QKGKCOFSFY7202XZLNX');
insert into T_CARE (c_id, c_uid, c_fid)
values ('27', '65A5E3FBEF4F4210B968370289B227F9', 'RMLWN9ZDY7I1MHQYYXVCMDI5AOYZBDTW');
insert into T_CARE (c_id, c_uid, c_fid)
values ('34', 'KK0VPE4H3OVQ8DMHW36DZFK5R60CKJZ0', 'YXW9AH9C6FFNNGTO2J2TWNAGXSNNZ9Q3');
insert into T_CARE (c_id, c_uid, c_fid)
values ('36', 'S1NUXKFKRGS1UNLPIELR9G1574A2396V', 'SW6HA4XOSVL62QKGKCOFSFY7202XZLNX');
insert into T_CARE (c_id, c_uid, c_fid)
values ('37', 'D5E8F4BF725E4CFC89CC9DB5F59A09AC', 'RMLWN9ZDY7I1MHQYYXVCMDI5AOYZBDTW');
insert into T_CARE (c_id, c_uid, c_fid)
values ('38', '360FF0F5F7F6422F99DF5617B5C0C72E', 'RMLWN9ZDY7I1MHQYYXVCMDI5AOYZBDTW');
insert into T_CARE (c_id, c_uid, c_fid)
values ('39', 'RMLWN9ZDY7I1MHQYYXVCMDI5AOYZBDTW', 'S1NUXKFKRGS1UNLPIELR9G1574A2396V');
insert into T_CARE (c_id, c_uid, c_fid)
values ('40', '360FF0F5F7F6422F99DF5617B5C0C72E', '6G56PDKMCYIO501O2H2ADMZUAMAOM2GP');
insert into T_CARE (c_id, c_uid, c_fid)
values ('41', 'S1NUXKFKRGS1UNLPIELR9G1574A2396V', '360FF0F5F7F6422F99DF5617B5C0C72E');
insert into T_CARE (c_id, c_uid, c_fid)
values ('42', '6G56PDKMCYIO501O2H2ADMZUAMAOM2GP', 'TIX55QX9369XBH3NIWOBS427ZM2NMANK');
insert into T_CARE (c_id, c_uid, c_fid)
values ('43', '6G56PDKMCYIO501O2H2ADMZUAMAOM2GP', '6G56PDKMCYIO501O2H2ADMZUAMAOM2GP');
insert into T_CARE (c_id, c_uid, c_fid)
values ('44', '6G56PDKMCYIO501O2H2ADMZUAMAOM2GP', 'S65VYYCF0PPRKW6RL0YNAMX1QY1AZ0WQ');
insert into T_CARE (c_id, c_uid, c_fid)
values ('45', '6G56PDKMCYIO501O2H2ADMZUAMAOM2GP', 'K1FMFZ221OFTUS0BI2W72WN1CBE4WL6A');
insert into T_CARE (c_id, c_uid, c_fid)
values ('46', '6G56PDKMCYIO501O2H2ADMZUAMAOM2GP', 'SPIHXH85RD66XWMJVLP6AC0WSOCIHCYD');
insert into T_CARE (c_id, c_uid, c_fid)
values ('47', '6G56PDKMCYIO501O2H2ADMZUAMAOM2GP', 'SW6HA4XOSVL62QKGKCOFSFY7202XZLNX');
insert into T_CARE (c_id, c_uid, c_fid)
values ('60', 'TIX55QX9369XBH3NIWOBS427ZM2NMANK', 'K1FMFZ221OFTUS0BI2W72WN1CBE4WL6A');
insert into T_CARE (c_id, c_uid, c_fid)
values ('649BA44718DA459184365AFA3F224E68', '360FF0F5F7F6422F99DF5617B5C0C72E', 'F4D674CE4D2140F198EDF1A3B4FA0CDD');
insert into T_CARE (c_id, c_uid, c_fid)
values ('58', 'TIX55QX9369XBH3NIWOBS427ZM2NMANK', 'RMLWN9ZDY7I1MHQYYXVCMDI5AOYZBDTW');
insert into T_CARE (c_id, c_uid, c_fid)
values ('57', 'TIX55QX9369XBH3NIWOBS427ZM2NMANK', 'SPIHXH85RD66XWMJVLP6AC0WSOCIHCYD');
insert into T_CARE (c_id, c_uid, c_fid)
values ('56', 'TIX55QX9369XBH3NIWOBS427ZM2NMANK', '6G56PDKMCYIO501O2H2ADMZUAMAOM2GP');
insert into T_CARE (c_id, c_uid, c_fid)
values ('55', 'TIX55QX9369XBH3NIWOBS427ZM2NMANK', 'YXW9AH9C6FFNNGTO2J2TWNAGXSNNZ9Q3');
insert into T_CARE (c_id, c_uid, c_fid)
values ('54', 'TIX55QX9369XBH3NIWOBS427ZM2NMANK', 'S1NUXKFKRGS1UNLPIELR9G1574A2396V');
insert into T_CARE (c_id, c_uid, c_fid)
values ('53', 'TIX55QX9369XBH3NIWOBS427ZM2NMANK', '2549A196799C4AEB80B4E55624B6A774');
insert into T_CARE (c_id, c_uid, c_fid)
values ('51', 'TIX55QX9369XBH3NIWOBS427ZM2NMANK', 'fjwuxwwp9385nvjd827ccch46xysizms');
insert into T_CARE (c_id, c_uid, c_fid)
values ('50', 'TIX55QX9369XBH3NIWOBS427ZM2NMANK', 'fjwuxoqp9385nvjd827wysh46xysizms');
insert into T_CARE (c_id, c_uid, c_fid)
values ('49', 'TIX55QX9369XBH3NIWOBS427ZM2NMANK', '360FF0F5F7F6422F99DF5617B5C0C72E');
insert into T_CARE (c_id, c_uid, c_fid)
values ('69', 'SPIHXH85RD66XWMJVLP6AC0WSOCIHCYD', 'YXW9AH9C6FFNNGTO2J2TWNAGXSNNZ9Q3');
insert into T_CARE (c_id, c_uid, c_fid)
values ('68', 'SPIHXH85RD66XWMJVLP6AC0WSOCIHCYD', 'S1NUXKFKRGS1UNLPIELR9G1574A2396V');
insert into T_CARE (c_id, c_uid, c_fid)
values ('67', 'SPIHXH85RD66XWMJVLP6AC0WSOCIHCYD', '2549A196799C4AEB80B4E55624B6A774');
insert into T_CARE (c_id, c_uid, c_fid)
values ('66', 'SPIHXH85RD66XWMJVLP6AC0WSOCIHCYD', '65A5E3FBEF4F4210B968370289B227F9');
insert into T_CARE (c_id, c_uid, c_fid)
values ('65', 'SPIHXH85RD66XWMJVLP6AC0WSOCIHCYD', 'fjwuxwwp9385nvjd827ccch46xysizms');
insert into T_CARE (c_id, c_uid, c_fid)
values ('64', 'SPIHXH85RD66XWMJVLP6AC0WSOCIHCYD', 'fjwuxoqp9385nvjd827wysh46xysizms');
insert into T_CARE (c_id, c_uid, c_fid)
values ('63', 'SPIHXH85RD66XWMJVLP6AC0WSOCIHCYD', '360FF0F5F7F6422F99DF5617B5C0C72E');
insert into T_CARE (c_id, c_uid, c_fid)
values ('62', 'SPIHXH85RD66XWMJVLP6AC0WSOCIHCYD', 'D5E8F4BF725E4CFC89CC9DB5F59A09AC');
insert into T_CARE (c_id, c_uid, c_fid)
values ('61', 'SPIHXH85RD66XWMJVLP6AC0WSOCIHCYD', '2549A196799C4AEB80B4E55624B6A774');
insert into T_CARE (c_id, c_uid, c_fid)
values ('75', 'YXW9AH9C6FFNNGTO2J2TWNAGXSNNZ9Q3', 'RMLWN9ZDY7I1MHQYYXVCMDI5AOYZBDTW');
insert into T_CARE (c_id, c_uid, c_fid)
values ('74', 'YXW9AH9C6FFNNGTO2J2TWNAGXSNNZ9Q3', 'SPIHXH85RD66XWMJVLP6AC0WSOCIHCYD');
insert into T_CARE (c_id, c_uid, c_fid)
values ('73', 'YXW9AH9C6FFNNGTO2J2TWNAGXSNNZ9Q3', 'YXW9AH9C6FFNNGTO2J2TWNAGXSNNZ9Q3');
insert into T_CARE (c_id, c_uid, c_fid)
values ('72', 'YXW9AH9C6FFNNGTO2J2TWNAGXSNNZ9Q3', 'S1NUXKFKRGS1UNLPIELR9G1574A2396V');
insert into T_CARE (c_id, c_uid, c_fid)
values ('71', 'YXW9AH9C6FFNNGTO2J2TWNAGXSNNZ9Q3', '2549A196799C4AEB80B4E55624B6A774');
insert into T_CARE (c_id, c_uid, c_fid)
values ('70', 'YXW9AH9C6FFNNGTO2J2TWNAGXSNNZ9Q3', '65A5E3FBEF4F4210B968370289B227F9');
insert into T_CARE (c_id, c_uid, c_fid)
values ('76', 'GK9YOYJK7ZYAFRJUXAJZ8YLC4ETFU90Y', 'TIX55QX9369XBH3NIWOBS427ZM2NMANK');
insert into T_CARE (c_id, c_uid, c_fid)
values ('77', 'GK9YOYJK7ZYAFRJUXAJZ8YLC4ETFU90Y', 'D5E8F4BF725E4CFC89CC9DB5F59A09AC');
insert into T_CARE (c_id, c_uid, c_fid)
values ('78', 'GK9YOYJK7ZYAFRJUXAJZ8YLC4ETFU90Y', '360FF0F5F7F6422F99DF5617B5C0C72E');
insert into T_CARE (c_id, c_uid, c_fid)
values ('83', 'S65VYYCF0PPRKW6RL0YNAMX1QY1AZ0WQ', '2549A196799C4AEB80B4E55624B6A774');
insert into T_CARE (c_id, c_uid, c_fid)
values ('81', 'S65VYYCF0PPRKW6RL0YNAMX1QY1AZ0WQ', 'S1NUXKFKRGS1UNLPIELR9G1574A2396V');
insert into T_CARE (c_id, c_uid, c_fid)
values ('82', 'S65VYYCF0PPRKW6RL0YNAMX1QY1AZ0WQ', 'SW6HA4XOSVL62QKGKCOFSFY7202XZLNX');
insert into T_CARE (c_id, c_uid, c_fid)
values ('84', 'S65VYYCF0PPRKW6RL0YNAMX1QY1AZ0WQ', '360FF0F5F7F6422F99DF5617B5C0C72E');
insert into T_CARE (c_id, c_uid, c_fid)
values ('79', 'KK0VPE4H3OVQ8DMHW36DZFK5R60CKJZ0', 'SW6HA4XOSVL62QKGKCOFSFY7202XZLNX');
insert into T_CARE (c_id, c_uid, c_fid)
values ('80', 'KK0VPE4H3OVQ8DMHW36DZFK5R60CKJZ0', '360FF0F5F7F6422F99DF5617B5C0C72E');
insert into T_CARE (c_id, c_uid, c_fid)
values ('25', 'fjwuxwwp9385nvjd827ccch46xysizms', 'D5E8F4BF725E4CFC89CC9DB5F59A09AC');
insert into T_CARE (c_id, c_uid, c_fid)
values ('26', 'fjwuxwwp9385nvjd827ccch46xysizms', '360FF0F5F7F6422F99DF5617B5C0C72E');
insert into T_CARE (c_id, c_uid, c_fid)
values ('09DFEFAB73D44BFF9A11E7AFAF480400', 'fjwuxoqp9385nvjd827wysh46xysizms', 'fjwuxwwp9385nvjd827ccch46xysizms');
insert into T_CARE (c_id, c_uid, c_fid)
values ('65035FF9FB694C1DB4E730DF9DC44E64', 'fjwuxoqp9385nvjd827wysh46xysizms', 'fjwuxwwp9385nvjd827ccch46xysizms');
insert into T_CARE (c_id, c_uid, c_fid)
values ('4697FD4BBB004838BAE8AB24AA7BF53D', 'fjwuxoqp9385nvjd827wysh46xysizms', 'fjwuxwwp9385nvjd827ccch46xysizms');
insert into T_CARE (c_id, c_uid, c_fid)
values ('3A39DA48B2E34B01BAD839341513D24F', 'K1FMFZ221OFTUS0BI2W72WN1CBE4WL6A', 'fjwuxwwp9385nvjd827ccch46xysizms');
insert into T_CARE (c_id, c_uid, c_fid)
values ('D8A2EE6681B34EBBADF0BBB4DD991B0F', '9525058C8459421DA4E025B8D5398872', 'F4D674CE4D2140F198EDF1A3B4FA0CDD');
insert into T_CARE (c_id, c_uid, c_fid)
values ('02EAF0B0BF1348709F6BFA5B3552BA97', 'SPIHXH85RD66XWMJVLP6AC0WSOCIHCYD', 'F4D674CE4D2140F198EDF1A3B4FA0CDD');
insert into T_CARE (c_id, c_uid, c_fid)
values ('AC87673FB37C43A981AE3312D73A11AE', 'RMLWN9ZDY7I1MHQYYXVCMDI5AOYZBDTW', 'F4D674CE4D2140F198EDF1A3B4FA0CDD');
insert into T_CARE (c_id, c_uid, c_fid)
values ('7EF04508A3224B6D9B966002172D5163', 'F4B02FA5BB8742748F119E9889ED89C2', '9525058C8459421DA4E025B8D5398872');
commit;
prompt 71 records loaded
prompt Loading T_SECTION...
insert into T_SECTION (s_id, s_name, s_show, s_count, s_admin)
values ('61', '技术交流', '无论什么语言，总能找到交流的同伴', 2, 'fjwuxoqp9385nvjd827wysh46xysizms');
insert into T_SECTION (s_id, s_name, s_show, s_count, s_admin)
values ('42', '科技生活', '科技改变生活', 7, 'fjwuxwwp9385nvjd827ccch46xysizms');
insert into T_SECTION (s_id, s_name, s_show, s_count, s_admin)
values ('43', '游戏地带', 'steam,psp,xbox,没有你找不到，只有你想不到', 15, '27A21B72BC7C4B40929AF2C6D452D43D');
insert into T_SECTION (s_id, s_name, s_show, s_count, s_admin)
values ('44', '休闲娱乐', '茶余饭后，品味人生', 9, '65A5E3FBEF4F4210B968370289B227F9');
insert into T_SECTION (s_id, s_name, s_show, s_count, s_admin)
values ('5CF4B239B18C4925A1B31DFD62E3A46E', '坎坎坷坷', '坎坎坷坷怕怕怕怕怕怕', 0, '330F4FCC46424B4AB05D2F6E503A1A1D');
commit;
prompt 5 records loaded
prompt Loading T_POST...
insert into T_POST (p_id, p_sid, p_uid, p_title, p_content, p_jpgadd, p_posttime, p_replycount, p_clickcount, p_modifytime, p_essence, p_top)
values ('9FD67D92CC764D0BA437689EF811F2DD', '44', '9525058C8459421DA4E025B8D5398872', '我是最帅的有谁质疑吗', '我小彭是最帅最聪明的哈哈哈哈哈哈哈啊哈哈哈哈哈哈哈', null, to_date('18-09-2017 09:16:59', 'dd-mm-yyyy hh24:mi:ss'), 6, 0, to_date('18-09-2017 09:33:11', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into T_POST (p_id, p_sid, p_uid, p_title, p_content, p_jpgadd, p_posttime, p_replycount, p_clickcount, p_modifytime, p_essence, p_top)
values ('9E6E84BCB4204628952361B431A1E1EF', '42', 'fjwuxwwp9385nvjd827ccch46xysizms', '今天答辩哦', '今天答辩哦今天答辩哦今天答辩哦今天答辩哦今天答辩哦今天答辩哦', '/upload/post\/c/3\C8AB8879C7CC496296DDAF377D06FBC6.jpg', to_date('18-09-2017 09:41:22', 'dd-mm-yyyy hh24:mi:ss'), 0, 0, to_date('18-09-2017 09:41:22', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into T_POST (p_id, p_sid, p_uid, p_title, p_content, p_jpgadd, p_posttime, p_replycount, p_clickcount, p_modifytime, p_essence, p_top)
values ('E86BAAEC6E1F4622A45E2244BAC894F6', '61', '9525058C8459421DA4E025B8D5398872', '我的技术是最好的', '鄙人小彭是编程史上最强男人', null, to_date('18-09-2017 09:18:06', 'dd-mm-yyyy hh24:mi:ss'), 2, 0, to_date('18-09-2017 09:39:57', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into T_POST (p_id, p_sid, p_uid, p_title, p_content, p_jpgadd, p_posttime, p_replycount, p_clickcount, p_modifytime, p_essence, p_top)
values ('5605947B5808422EB961DEB6C2363CE6', '42', 'F4D674CE4D2140F198EDF1A3B4FA0CDD', '参加苹果iPhone X发布会是什么样的感觉?', '【IT168 资讯】对于绝大多数果粉而言，通过大荧幕观看的苹果发布会不计其数，但是亲身经历的发布会却是0。现场参加发布会的感觉如何?转播镜头之外的发布会究竟是怎样?受邀参加iPhone X发布会的记者Dan Frommer则用更多照片记录下了此次盛会，捕捉到了视频转播传达不到的细节，让你即使没有亲临现场也可以被那种情绪所感染。' || chr(13) || '' || chr(10) || '　　苹果的iPhone X发布会并不只是一次手机发布会，它还是苹果首次向数百名媒体记者、行业高管以及「苹果的朋友们」展示全新Apple Park的一次机会，Dan Fro', null, to_date('18-09-2017 09:20:36', 'dd-mm-yyyy hh24:mi:ss'), 0, 0, to_date('18-09-2017 09:20:36', 'dd-mm-yyyy hh24:mi:ss'), 0, 1);
insert into T_POST (p_id, p_sid, p_uid, p_title, p_content, p_jpgadd, p_posttime, p_replycount, p_clickcount, p_modifytime, p_essence, p_top)
values ('107', '44', 'SPIHXH85RD66XWMJVLP6AC0WSOCIHCYD', '吴京自己一个人占3个座位，且还把这些座位当自己床铺', '只不过前段时间为了能让战狼2的票房继续冲高，吴京和他的战狼2剧组也是马不停蹄的在全国几十个城市之间来回奔波进行路演活动，如果你想去看一下吴京本人，发布会不是个最佳选择，相反各地的机场总能见到他忙碌的身影。' || chr(10) || '' || chr(10) || ' ' || chr(10) || '' || chr(10) || '只不过将近一个多月的忙碌，就算吴京是铁打的也开始吃不消了，在休息室里的时候，他会拿张海报铺在身上就能入睡。 ', null, to_date('13-09-2017 10:36:48', 'dd-mm-yyyy hh24:mi:ss'), 7, 0, to_date('13-09-2017 10:36:48', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into T_POST (p_id, p_sid, p_uid, p_title, p_content, p_jpgadd, p_posttime, p_replycount, p_clickcount, p_modifytime, p_essence, p_top)
values ('941587A173AE48D18E8D01148E739CC3', '43', 'F4D674CE4D2140F198EDF1A3B4FA0CDD', 'hello world', '学了java hello world 够了玩很久很久很久了', null, to_date('17-09-2017 12:41:12', 'dd-mm-yyyy hh24:mi:ss'), 1, 0, to_date('17-09-2017 12:41:52', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into T_POST (p_id, p_sid, p_uid, p_title, p_content, p_jpgadd, p_posttime, p_replycount, p_clickcount, p_modifytime, p_essence, p_top)
values ('105', '44', 'RMLWN9ZDY7I1MHQYYXVCMDI5AOYZBDTW', '范冰冰李晨烧烤店撸串何炅作陪 两人全程十指紧扣', '范冰冰李晨合体录制《快乐大本营》，有网友爆料范冰冰和李晨现身长沙某烧烤店撸串，何炅作陪。两人一路十指紧扣，恩爱满满大虐狗。', null, to_date('13-09-2017 10:36:48', 'dd-mm-yyyy hh24:mi:ss'), 2, 0, to_date('13-09-2017 10:36:48', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into T_POST (p_id, p_sid, p_uid, p_title, p_content, p_jpgadd, p_posttime, p_replycount, p_clickcount, p_modifytime, p_essence, p_top)
values ('104', '44', 'SW6HA4XOSVL62QKGKCOFSFY7202XZLNX', '霍思燕杜江夫妇恩爱牵手 嗯哼嘟嘴亲吻妈妈呆萌可爱', '杜江在微博晒出与老婆霍思燕一起参加某活动的照片。照片中，俩人牵手现身，霍思燕红唇娇艳，儿子嗯哼大王更是嘟嘴亲吻妈妈，十分可爱。', null, to_date('13-09-2017 10:36:48', 'dd-mm-yyyy hh24:mi:ss'), 0, 0, to_date('13-09-2017 10:36:48', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into T_POST (p_id, p_sid, p_uid, p_title, p_content, p_jpgadd, p_posttime, p_replycount, p_clickcount, p_modifytime, p_essence, p_top)
values ('103', '43', 'K1FMFZ221OFTUS0BI2W72WN1CBE4WL6A', 'LPL豪华陪练阵容誓夺S7冠军 网友：死亡宣告何在？', 'OMG王牌ADC司马老贼。即便不善言辞，但是老贼强劲的个人能力早就征服了无数观众，那个无所不能的大嘴多次将OMG从死亡的边缘拉回，虽然OMG此次没能杀入世界赛，但老贼也会作为LPL军团中的一员，以“辅助”的身份征战S7。', null, to_date('13-09-2017 10:36:48', 'dd-mm-yyyy hh24:mi:ss'), 1, 0, to_date('18-09-2017 09:39:42', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into T_POST (p_id, p_sid, p_uid, p_title, p_content, p_jpgadd, p_posttime, p_replycount, p_clickcount, p_modifytime, p_essence, p_top)
values ('102', '43', '360FF0F5F7F6422F99DF5617B5C0C72E', '嗨氏斗鱼复播，但这三个疑点他还是不敢解释给观众听', '' || chr(10) || '新浪游戏 > 玩家资讯 > 正文页' || chr(10) || '嗨氏斗鱼复播，但这三个疑点他还是不敢解释给观众听' || chr(10) || '2017-09-12 11:45:19   来源：新浪游戏' || chr(10) || '' || chr(10) || '大家好，这里是正经游戏，我是正经小弟。发酵一个月的嗨氏闹剧在昨晚尘埃落定了---嗨氏在斗鱼复播了。从表面上看，直播间人气依旧很高，但有多少是来骂人的就不得而知了，正经小弟在直播间，就没看到房管禁言停过，一晚上都在禁玩家发言，这工作也是蛮累的。', null, to_date('13-09-2017 10:36:48', 'dd-mm-yyyy hh24:mi:ss'), 0, 0, to_date('13-09-2017 10:36:48', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into T_POST (p_id, p_sid, p_uid, p_title, p_content, p_jpgadd, p_posttime, p_replycount, p_clickcount, p_modifytime, p_essence, p_top)
values ('101', '43', 'S1NUXKFKRGS1UNLPIELR9G1574A2396V', '《巫师》改编游戏史：第一个能玩的竟是款手机短信游戏', '　正值《巫师》系列游戏诞生十周年，不光CDPR自家发了“合家欢”的视频来庆祝，波兰游戏网站arhn.eu也制作了一部长达近2个小时的纪录片来揭秘《巫师》原著改编游戏的历史。这部名为《白狼：数字巫师的历史》（Bia?y Wilk: Historia komputerowego Wied?mina）的纪录片为波兰语音，有英文字幕，有条件的玩家可以点此前往油管查看。在此我们先简要的总结一下纪录片中有趣的内容。', null, to_date('13-09-2017 10:36:48', 'dd-mm-yyyy hh24:mi:ss'), 0, 0, to_date('13-09-2017 10:36:48', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into T_POST (p_id, p_sid, p_uid, p_title, p_content, p_jpgadd, p_posttime, p_replycount, p_clickcount, p_modifytime, p_essence, p_top)
values ('100', '43', '65A5E3FBEF4F4210B968370289B227F9', '淘宝发布游戏光盘销售新规定 无资质商品将强制下架', '淘宝游戏光盘销售监管新规公布，为规范游戏软件市场的经营活动，完善资质准入要求，以保障消费者权益，保障经营规范。根据《出版物市场管理规定》，从事游戏光盘类出版物的经营需取得相应的经营许可证。', null, to_date('13-09-2017 10:36:48', 'dd-mm-yyyy hh24:mi:ss'), 2, 0, to_date('13-09-2017 10:36:48', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into T_POST (p_id, p_sid, p_uid, p_title, p_content, p_jpgadd, p_posttime, p_replycount, p_clickcount, p_modifytime, p_essence, p_top)
values ('98', '42', '2549A196799C4AEB80B4E55624B6A774', 'iPhone X：苹果的颠覆、致敬、冒险与尴尬', '虽然整场发布会相当充实，接连发布了六款硬件，但观众一直在等待着最后的压轴大戏iPhone X发布，甚至觉得前面的介绍有些冗长。', null, to_date('13-09-2017 10:36:48', 'dd-mm-yyyy hh24:mi:ss'), 2, 0, to_date('15-09-2017 14:33:28', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into T_POST (p_id, p_sid, p_uid, p_title, p_content, p_jpgadd, p_posttime, p_replycount, p_clickcount, p_modifytime, p_essence, p_top)
values ('96', '42', 'S1NUXKFKRGS1UNLPIELR9G1574A2396V', '三星Note8手写笔S Pen体验：黑科技满满！', '一直以来，S Pen是三星Note系列上最大的卖点。' || chr(10) || '' || chr(10) || '　　在硬件规格方面，三星Galaxy Note8的S Pen手写笔并没有很大的升级，毕竟三星去年就已经把Note系列S Pen手写笔的压感提升到了4096级别。你要知道，这一级别已经远超过大多数手绘板的灵敏度要求。', null, to_date('13-09-2017 10:36:48', 'dd-mm-yyyy hh24:mi:ss'), 2, 0, to_date('13-09-2017 10:36:48', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into T_POST (p_id, p_sid, p_uid, p_title, p_content, p_jpgadd, p_posttime, p_replycount, p_clickcount, p_modifytime, p_essence, p_top)
values ('5BF9EC6356534FDBBE92255C2EC35590', '43', '64085BFEC9B64FBE8F069C8A80E5BA1D', '女人天生喜欢被抚摸，常摸这三个地方她会爱上你！', '' || chr(13) || '' || chr(10) || '1.摸头杀' || chr(13) || '' || chr(10) || '摸头杀的时机非常重要，一定要是在和对方开玩' || chr(13) || '' || chr(10) || '笑轻松的环境下，突然停下来摸对方的头发，这' || chr(13) || '' || chr(10) || '会让女生觉得自己很受宠爱，很想要听你的话。' || chr(13) || '' || chr(10) || '女人都喜欢被人宠着，也都喜欢顺从，所以男人' || chr(13) || '' || chr(10) || '一定要通过适当的摸头，让女人对你乖乖听话。', '/upload/post\/6/f\5512017D99A1450DB8D6E93158A4F5EB.jpg', to_date('18-09-2017 09:29:48', 'dd-mm-yyyy hh24:mi:ss'), 8, 0, to_date('18-09-2017 09:34:52', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into T_POST (p_id, p_sid, p_uid, p_title, p_content, p_jpgadd, p_posttime, p_replycount, p_clickcount, p_modifytime, p_essence, p_top)
values ('49', '42', 'fjwuxoqp9385nvjd827wysh46xysizms', ' 早上做完4件事，让你永远胖不起来 丫头别老不吃饭了', '早上做完4件事，让你永远胖不起来！~~一个月瘦20公斤！~~    这个减肥法不是一般厉！！！' || chr(10) || '  第一件：每天早晨的第一件事就是打开饮水机冲一杯温的淡盐水(夏天喝凉的)，盐水可以清肠。 ' || chr(10) || '比例是100毫升水盐水不超过0.9克，而且盐水可以保护皮肤可以使皮肤变好，如果按照正常比例没有副作用。 ' || chr(10) || '早上喝一杯淡盐水,有助大便通畅。 ' || chr(10) || '喝适量淡盐水，以补充水分和电解质，在夏天还可预防中暑。 ' || chr(10) || '' || chr(10) || '', null, to_date('08-09-2017 23:58:23', 'dd-mm-yyyy hh24:mi:ss'), 2, 0, to_date('08-09-2017 23:58:23', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into T_POST (p_id, p_sid, p_uid, p_title, p_content, p_jpgadd, p_posttime, p_replycount, p_clickcount, p_modifytime, p_essence, p_top)
values ('64B9A33A2A6C4563A00075695AB986D7', '61', '9525058C8459421DA4E025B8D5398872', '啦啦啦啦啦', '啦啦啦啦我是卖报的小行家', null, to_date('18-09-2017 09:27:39', 'dd-mm-yyyy hh24:mi:ss'), 0, 0, to_date('18-09-2017 09:27:39', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into T_POST (p_id, p_sid, p_uid, p_title, p_content, p_jpgadd, p_posttime, p_replycount, p_clickcount, p_modifytime, p_essence, p_top)
values ('BECB60823E1042B8BECAD7C01BF5CA4A', '43', '9525058C8459421DA4E025B8D5398872', '翻花绳的玩法', '总的来说就是找根绳子让后找个人', null, to_date('18-09-2017 09:31:52', 'dd-mm-yyyy hh24:mi:ss'), 0, 0, to_date('18-09-2017 09:31:52', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into T_POST (p_id, p_sid, p_uid, p_title, p_content, p_jpgadd, p_posttime, p_replycount, p_clickcount, p_modifytime, p_essence, p_top)
values ('74', '42', 'D5E8F4BF725E4CFC89CC9DB5F59A09AC', '外媒：iPhone 8售价太高 中国消费者热情程度不高', '新手机定价高达1000美元，最高端的iPhone 7 Plus不到800美元。分析师认为，定价虽高，在美国不会对销量造成太大影响，但是在中国可不是这样的，1000美元相当于中国人平均月工资的2倍。' || chr(10) || '' || chr(10) || '　　Counterpoint提供的数据显示，按出货量计算，2015年iPhone在中国的份额约为14%，今年1-6月降到了9%。虽然2014年iPhone 6像暴风一样席卷中国，但是自此之后中国人对新机的反应温和了很多。', null, to_date('12-09-2017 18:09:29', 'dd-mm-yyyy hh24:mi:ss'), 8, 0, to_date('17-09-2017 12:59:57', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into T_POST (p_id, p_sid, p_uid, p_title, p_content, p_jpgadd, p_posttime, p_replycount, p_clickcount, p_modifytime, p_essence, p_top)
values ('75', '43', 'K1FMFZ221OFTUS0BI2W72WN1CBE4WL6A', '战狼2大师领衔《天之禁2》爽战团谱写热血激情', '战放新生！9月15日13：00，绿岸网络旗下2017年度仙侠网游《天之禁2》正式迎来破晓不删档测试，这款由战狼2大师张一鸣亲自担纲创意总监的游戏，将让玩家随时随地享受“爽战”的酣畅游戏体验！在游戏研发过程中，他为玩家绘制了包括大逃杀、空战等创意玩法分镜场景，让游戏开测之前，便注定贯彻“爽战”游戏理念！现在，《天之禁2》爽战团公开招募成员，你愿与战狼2大师一起谱写一段属于自己的热血与激情史诗吗！', null, to_date('12-09-2017 18:09:29', 'dd-mm-yyyy hh24:mi:ss'), 3, 0, to_date('12-09-2017 18:09:29', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into T_POST (p_id, p_sid, p_uid, p_title, p_content, p_jpgadd, p_posttime, p_replycount, p_clickcount, p_modifytime, p_essence, p_top)
values ('76', '44', 'SPIHXH85RD66XWMJVLP6AC0WSOCIHCYD', '奶茶妹妹深夜首次直播 网友大赞言行可爱接地气', '大约北京时间9月12日凌晨2、3点，奶茶妹妹章泽天首次直播，最近她正在参加纽约时装周，因此和国内有时差。这场直播观众很少，大约只有200多人，网友评论“看完感觉对她有了重新的认识，不管是语气语调还是行为都可爱到炸！ 真心接地气。', null, to_date('12-09-2017 18:09:29', 'dd-mm-yyyy hh24:mi:ss'), 0, 0, to_date('12-09-2017 18:09:29', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into T_POST (p_id, p_sid, p_uid, p_title, p_content, p_jpgadd, p_posttime, p_replycount, p_clickcount, p_modifytime, p_essence, p_top)
values ('78', '44', '65A5E3FBEF4F4210B968370289B227F9', '八卦-神秘女子夜访胡歌豪宅 经纪人回应：朋友见面聊天', '新浪娱乐讯 近日，有媒体拍到胡歌[微博]由沪返京后独自回到住处。据悉，该楼盘每平米均价在11万以上。当晚8点左右，某神秘年轻女子夜里来访，输入密码错误后打电话求助。未过多久，身穿白色T恤，戴着帽子，作休闲打扮的胡歌下楼为该女子开门。近6小时后，凌晨两点，该女子再度现身，独自离开公寓，似发现有人拍摄，忙用手遮挡脸部，行色匆忙。', null, to_date('12-09-2017 18:09:29', 'dd-mm-yyyy hh24:mi:ss'), 5, 0, to_date('12-09-2017 18:09:29', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into T_POST (p_id, p_sid, p_uid, p_title, p_content, p_jpgadd, p_posttime, p_replycount, p_clickcount, p_modifytime, p_essence, p_top)
values ('79', '43', '360FF0F5F7F6422F99DF5617B5C0C72E', 'LOL赵信即将重做 大招增强单挑团战都猛', '赵信改动的目标是让喜爱这一英雄的玩家能打出丰富有趣的操作，而不仅仅是考虑啥时候开团。赵信现在缺少一些能够“炫技”的机会，所以这方面也会加强。同时在英雄认知上，目前的技能没有很好的传达出这位英雄的属性，因此官方将给他加入新的技能，并改动大招，来让他在1V1和团战中有更灵活、亮眼的表现。', null, to_date('12-09-2017 18:09:29', 'dd-mm-yyyy hh24:mi:ss'), 0, 0, to_date('12-09-2017 18:09:29', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into T_POST (p_id, p_sid, p_uid, p_title, p_content, p_jpgadd, p_posttime, p_replycount, p_clickcount, p_modifytime, p_essence, p_top)
values ('80', '44', 'GK9YOYJK7ZYAFRJUXAJZ8YLC4ETFU90Y', '我们好着呢!刘恺威晒女儿画为杨幂庆生', '9月12日，刘恺威在微博上晒出一张女儿小糯米的画作，并发文：“每年庆生的祝福里多了一位多才多艺的小美女~画技绝佳。糯米妈咪杨幂，生日快乐”随后，杨幂也转发了刘恺威的微博，并发送爱心，力破网上传出两人不和的传言。', null, to_date('12-09-2017 18:09:29', 'dd-mm-yyyy hh24:mi:ss'), 2, 0, to_date('12-09-2017 18:09:29', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into T_POST (p_id, p_sid, p_uid, p_title, p_content, p_jpgadd, p_posttime, p_replycount, p_clickcount, p_modifytime, p_essence, p_top)
values ('81', '43', 'fjwuxwwp9385nvjd827ccch46xysizms', '克尔苏加德降临《风暴英雄》 新皮肤新奖励新内容', '作为一位贯穿《魔兽争霸III》和《魔兽世界》，并且在《炉石传说》中也有他身影的知名角色，克尔苏加德可谓承载了一代暴雪玩家的情怀。如今，在万众期待之下，大巫妖克尔苏加德终于正式降临时空枢纽！响应他黑暗寒冬之力的召唤，还能赢取限时奖励。同时，本年度第三赛季随之开启、大量新品随之上线，不如就让我们一起来看看这个新版本有些什么新内容。', null, to_date('12-09-2017 18:09:29', 'dd-mm-yyyy hh24:mi:ss'), 2, 0, to_date('12-09-2017 18:09:29', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into T_POST (p_id, p_sid, p_uid, p_title, p_content, p_jpgadd, p_posttime, p_replycount, p_clickcount, p_modifytime, p_essence, p_top)
values ('82', '43', '6G56PDKMCYIO501O2H2ADMZUAMAOM2GP', '王者荣耀改版后的周瑜 限定皮肤中出一片花海', '今天（9.12）重做后的周瑜上线了。重归峡谷的大都督不仅技能和属性改变很多，连技能视觉效果也变了。穿上情人节限定皮肤“真爱至上”的周瑜，放出二技能的时候不再是一团火焰，而是一片玫瑰花。改版后的周瑜二技能最多可以放3次，再加上1技能的效果，在地上最多可以形成5个2技能的范围效果，让王者峡谷成了一片花海，简直美呆了。小弟已经不想玩游戏，只想看花海。', null, to_date('12-09-2017 18:10:00', 'dd-mm-yyyy hh24:mi:ss'), 0, 0, to_date('12-09-2017 18:10:00', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into T_POST (p_id, p_sid, p_uid, p_title, p_content, p_jpgadd, p_posttime, p_replycount, p_clickcount, p_modifytime, p_essence, p_top)
values ('83', '43', 'K1FMFZ221OFTUS0BI2W72WN1CBE4WL6A', '你学到了吗 《阴阳师》暗示的四大人生哲理', '1.这个世界是不公平的，有人第一抽就是茨木，而有人一百抽了连个SR都没见到过。' || chr(10) || '2.你以为这个世界是公平的，大家都靠运气，其实你错了，在靠运气的环节里，人家RMB玩家可以每天比你多成千上百次机会。' || chr(10) || '3.颜值即是真理，在阴阳师的世界里，一般厉害的、稀有的都长得好看，例如大天狗、酒吞。同样的道理' || chr(10) || '4.这个世界上永远有人要牺牲，你以为你是有用才培养你？也许人家给你升星只是想把你当狗粮。', null, to_date('12-09-2017 18:10:00', 'dd-mm-yyyy hh24:mi:ss'), 5, 0, to_date('12-09-2017 18:10:00', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into T_POST (p_id, p_sid, p_uid, p_title, p_content, p_jpgadd, p_posttime, p_replycount, p_clickcount, p_modifytime, p_essence, p_top)
values ('0569D75F02B9443D90A923D3776B9346', '43', 'F4B02FA5BB8742748F119E9889ED89C2', '开车贴', '请勿乱入', null, to_date('18-09-2017 09:21:50', 'dd-mm-yyyy hh24:mi:ss'), 0, 0, to_date('18-09-2017 09:21:50', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into T_POST (p_id, p_sid, p_uid, p_title, p_content, p_jpgadd, p_posttime, p_replycount, p_clickcount, p_modifytime, p_essence, p_top)
values ('081B2827EF2749938B60998DA2EA1B33', '44', 'F4D674CE4D2140F198EDF1A3B4FA0CDD', '习近平用这支“指挥棒” 引领中国发展前行', '创新、协调、绿色、开放、共享的发展理念，集中体现了“十三五”乃至更长时期我国的发展思路、发展方向、发展着力点，是管全局、管根本、管长远的导向。' || chr(13) || '' || chr(10) || '' || chr(13) || '' || chr(10) || '', '/upload/post\/c/c\E23961369BC74594B475CABFB05FEE83.jpg', to_date('18-09-2017 09:10:40', 'dd-mm-yyyy hh24:mi:ss'), 0, 0, to_date('18-09-2017 09:10:40', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into T_POST (p_id, p_sid, p_uid, p_title, p_content, p_jpgadd, p_posttime, p_replycount, p_clickcount, p_modifytime, p_essence, p_top)
values ('53', '42', 'fjwuxoqp9385nvjd827wysh46xysizms', '华为在中国测试5G网络 刷新业界低频峰值纪录', '华为是IMT-2020 (5G)推进组的核心成员之一，并为积极为试验做贡献。华为已在怀柔外场部署7个5G测试基站和30余个5G测试终端，大规模外场测试环境已基本形成。在去年去年结束的第一阶段测试以及今年6月IMT-2020(5G)峰会第二阶段测试成果汇报中，华为均率先完成相关测试内容并取得领先结果。华为将再接再厉，在中国5G技术研发试验中再创佳绩。', null, to_date('11-09-2017 11:05:51', 'dd-mm-yyyy hh24:mi:ss'), 1, 0, to_date('11-09-2017 11:05:51', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into T_POST (p_id, p_sid, p_uid, p_title, p_content, p_jpgadd, p_posttime, p_replycount, p_clickcount, p_modifytime, p_essence, p_top)
values ('54', '43', 'fjwuxoqp9385nvjd827wysh46xysizms', '男子玩游戏开挂被网管发现：再这么干，信不信我打你', '网管：“我最看不起的人就是开挂的，我曾经和我哥说过，我见一个打一个！”', null, to_date('11-09-2017 14:21:50', 'dd-mm-yyyy hh24:mi:ss'), 0, 0, to_date('11-09-2017 14:21:50', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into T_POST (p_id, p_sid, p_uid, p_title, p_content, p_jpgadd, p_posttime, p_replycount, p_clickcount, p_modifytime, p_essence, p_top)
values ('55', '43', 'fjwuxoqp9385nvjd827wysh46xysizms', '2017英雄联盟洲际系列赛观赛数据公布', '洲际系列赛是《英雄联盟》在2017年推出的一项全新跨地区国际赛事，在这里，全球不同联赛的队伍通过经典的殊死决杀，来解决彼此之间的旧怨。在7月3日至7月9日经历了前后一周的激烈争夺后，最终中国LPL（亚洲对抗赛）、北美NA LCS（欧美对抗赛）、土耳其TCL（俄土对抗赛）、巴西CBLOL（南美对抗赛）、日本LJL（太平洋对抗赛）分别赢得了各自区域对抗赛的冠军荣誉。', null, to_date('11-09-2017 14:24:04', 'dd-mm-yyyy hh24:mi:ss'), 2, 0, to_date('11-09-2017 14:24:04', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into T_POST (p_id, p_sid, p_uid, p_title, p_content, p_jpgadd, p_posttime, p_replycount, p_clickcount, p_modifytime, p_essence, p_top)
values ('CBC285E4AF6F48CF95B46A44A1E0BDC2', '44', '64085BFEC9B64FBE8F069C8A80E5BA1D', '冯提莫深夜直播，为了吸粉这样？土豪怒刷200万', '话题' || chr(13) || '' || chr(10) || '右擒苍。会挽雕弓如' || chr(13) || '' || chr(10) || '老夫聊发恋晨狂，' || chr(13) || '' || chr(10) || '左三狼，' || chr(13) || '' || chr(10) || '满月，野区望，' || chr(13) || '' || chr(10) || '出大棒。我就' || chr(13) || '' || chr(10) || '河蟹王。' || chr(13) || '' || chr(10) || '治慎亏，' || chr(13) || '' || chr(10) || '腰缠万贯，不吃' || chr(13) || '' || chr(10) || '是身高足有一丈二，英俊潇洒，' || chr(13) || '' || chr(10) || '葡萄不吐葡萄皮，' || chr(13) || '' || chr(10) || '吃了葡萄我爱吐不吐葡萄皮的' || chr(13) || '' || chr(10) || '任性小编恋晨解说参上! 今天小编给大家带来一' || chr(13) || '' || chr(10) || '些最新的直播圈子里面的趣事希望大家喜欢。' || chr(13) || '' || chr(10) || '牛' || chr(13) || '' || chr(10) || '冯提莫可以说是当下最火爆的女主播之一了，这' || chr(13) || '' || chr(10) || '个女主播可以说是现在少有的人美歌甜的女主播' || chr(13) || '' || chr(10) || '了，可以说是非常有才华了，而且最近冯提莫的' || chr(13) || '' || chr(10) || '去向也是让人们非常的关注。' || chr(13) || '' || chr(10) || '', '/upload/post\/7/1\F0CE1A4C8CD04F56A1DD69B1E4CFED38.jpg', to_date('18-09-2017 09:41:26', 'dd-mm-yyyy hh24:mi:ss'), 2, 0, to_date('18-09-2017 09:43:37', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
commit;
prompt 33 records loaded
prompt Loading T_COLLECT...
insert into T_COLLECT (ct_id, ct_pid, ct_uid)
values ('CE083104861B4434BA755128A4FA1472', '83', 'fjwuxwwp9385nvjd827ccch46xysizms');
insert into T_COLLECT (ct_id, ct_pid, ct_uid)
values ('F44B09BECFCC4390ABA03B080DEEF845', '74', 'F4D674CE4D2140F198EDF1A3B4FA0CDD');
insert into T_COLLECT (ct_id, ct_pid, ct_uid)
values ('810B7552F70A4670B09E0AA34532DB56', '941587A173AE48D18E8D01148E739CC3', 'F4D674CE4D2140F198EDF1A3B4FA0CDD');
insert into T_COLLECT (ct_id, ct_pid, ct_uid)
values ('84', '49', 'TIX55QX9369XBH3NIWOBS427ZM2NMANK');
insert into T_COLLECT (ct_id, ct_pid, ct_uid)
values ('85', '53', '360FF0F5F7F6422F99DF5617B5C0C72E');
insert into T_COLLECT (ct_id, ct_pid, ct_uid)
values ('86', '53', 'D5E8F4BF725E4CFC89CC9DB5F59A09AC');
insert into T_COLLECT (ct_id, ct_pid, ct_uid)
values ('87', '55', '6G56PDKMCYIO501O2H2ADMZUAMAOM2GP');
insert into T_COLLECT (ct_id, ct_pid, ct_uid)
values ('88', '55', 'D5E8F4BF725E4CFC89CC9DB5F59A09AC');
insert into T_COLLECT (ct_id, ct_pid, ct_uid)
values ('40EC52F0DDE84319B9FEC78D1418338F', '98', 'fjwuxwwp9385nvjd827ccch46xysizms');
insert into T_COLLECT (ct_id, ct_pid, ct_uid)
values ('D56C15B5EEDE41EA9015ADD11279E61A', '103', 'fjwuxwwp9385nvjd827ccch46xysizms');
insert into T_COLLECT (ct_id, ct_pid, ct_uid)
values ('92', '75', 'KK0VPE4H3OVQ8DMHW36DZFK5R60CKJZ0');
insert into T_COLLECT (ct_id, ct_pid, ct_uid)
values ('93', '74', 'SPIHXH85RD66XWMJVLP6AC0WSOCIHCYD');
insert into T_COLLECT (ct_id, ct_pid, ct_uid)
values ('109', '83', 'S1NUXKFKRGS1UNLPIELR9G1574A2396V');
insert into T_COLLECT (ct_id, ct_pid, ct_uid)
values ('108', '83', 'K1FMFZ221OFTUS0BI2W72WN1CBE4WL6A');
insert into T_COLLECT (ct_id, ct_pid, ct_uid)
values ('107', '82', 'S1NUXKFKRGS1UNLPIELR9G1574A2396V');
insert into T_COLLECT (ct_id, ct_pid, ct_uid)
values ('106', '81', '360FF0F5F7F6422F99DF5617B5C0C72E');
insert into T_COLLECT (ct_id, ct_pid, ct_uid)
values ('104', '79', 'YXW9AH9C6FFNNGTO2J2TWNAGXSNNZ9Q3');
insert into T_COLLECT (ct_id, ct_pid, ct_uid)
values ('103', '78', 'RMLWN9ZDY7I1MHQYYXVCMDI5AOYZBDTW');
insert into T_COLLECT (ct_id, ct_pid, ct_uid)
values ('101', '76', 'SPIHXH85RD66XWMJVLP6AC0WSOCIHCYD');
insert into T_COLLECT (ct_id, ct_pid, ct_uid)
values ('99', '74', '360FF0F5F7F6422F99DF5617B5C0C72E');
insert into T_COLLECT (ct_id, ct_pid, ct_uid)
values ('125', '104', 'S1NUXKFKRGS1UNLPIELR9G1574A2396V');
insert into T_COLLECT (ct_id, ct_pid, ct_uid)
values ('124', '103', '5W4454EEDSFGR5D8DS2C5DQQ5WHJ6SD8');
insert into T_COLLECT (ct_id, ct_pid, ct_uid)
values ('123', '102', '65A5E3FBEF4F4210B968370289B227F9');
insert into T_COLLECT (ct_id, ct_pid, ct_uid)
values ('122', '101', 'fjwuxwwp9385nvjd827ccch46xysizms');
insert into T_COLLECT (ct_id, ct_pid, ct_uid)
values ('121', '100', '5W4454EEDSFGR5D8DS2C5DQQ5WHJ6SD8');
insert into T_COLLECT (ct_id, ct_pid, ct_uid)
values ('117', '96', '6G56PDKMCYIO501O2H2ADMZUAMAOM2GP');
insert into T_COLLECT (ct_id, ct_pid, ct_uid)
values ('F16F9BE162C249428D354FFACDE27475', '5605947B5808422EB961DEB6C2363CE6', 'F4D674CE4D2140F198EDF1A3B4FA0CDD');
insert into T_COLLECT (ct_id, ct_pid, ct_uid)
values ('73', '54', 'SPIHXH85RD66XWMJVLP6AC0WSOCIHCYD');
insert into T_COLLECT (ct_id, ct_pid, ct_uid)
values ('74', '80', '6G56PDKMCYIO501O2H2ADMZUAMAOM2GP');
insert into T_COLLECT (ct_id, ct_pid, ct_uid)
values ('76', '82', 'SW6HA4XOSVL62QKGKCOFSFY7202XZLNX');
insert into T_COLLECT (ct_id, ct_pid, ct_uid)
values ('79', '80', '65A5E3FBEF4F4210B968370289B227F9');
insert into T_COLLECT (ct_id, ct_pid, ct_uid)
values ('80', '81', 'fjwuxoqp9385nvjd827wysh46xysizms');
insert into T_COLLECT (ct_id, ct_pid, ct_uid)
values ('81', '81', 'RMLWN9ZDY7I1MHQYYXVCMDI5AOYZBDTW');
insert into T_COLLECT (ct_id, ct_pid, ct_uid)
values ('192AEC50F49D47EEB18E3CAC1564134D', '103', 'F4D674CE4D2140F198EDF1A3B4FA0CDD');
insert into T_COLLECT (ct_id, ct_pid, ct_uid)
values ('7B060C36E9904BB0BE7AB3C5474B5312', '74', 'fjwuxwwp9385nvjd827ccch46xysizms');
insert into T_COLLECT (ct_id, ct_pid, ct_uid)
values ('4CEE4C1B5A2D48D0907C67D1FF61B80C', '96', 'fjwuxwwp9385nvjd827ccch46xysizms');
commit;
prompt 36 records loaded
prompt Loading T_REPLY...
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('110A6189123B447794651825A0B443B6', 'E86BAAEC6E1F4622A45E2244BAC894F6', 'F4D674CE4D2140F198EDF1A3B4FA0CDD', '哈哈哈哈哈哈', null, to_date('18-09-2017 09:21:40', 'dd-mm-yyyy hh24:mi:ss'), '9525058C8459421DA4E025B8D5398872', 1);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('681B484ED19F45BE8BB95581F4E6BF1B', '9FD67D92CC764D0BA437689EF811F2DD', '8FD249A2984B45AFA171DE8A2F36BB22', '是的  是的 。。。。。。。。。。。。。', '/upload/reply\/5/e\77DFEE0828B74331858641BFCB1660DD.jpg', to_date('18-09-2017 09:21:00', 'dd-mm-yyyy hh24:mi:ss'), '9525058C8459421DA4E025B8D5398872', 1);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('B4FAA62192904AEF982D1192CCE59909', '98', 'fjwuxwwp9385nvjd827ccch46xysizms', '糊里糊涂' || chr(13) || '' || chr(10) || '' || chr(13) || '' || chr(10) || '', null, to_date('14-09-2017 14:50:05', 'dd-mm-yyyy hh24:mi:ss'), '2549A196799C4AEB80B4E55624B6A774', 0);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('6DBD3E80344345D18171AE360CB3E33F', '107', 'fjwuxwwp9385nvjd827ccch46xysizms', '速度发送方', null, to_date('14-09-2017 14:51:51', 'dd-mm-yyyy hh24:mi:ss'), 'YXW9AH9C6FFNNGTO2J2TWNAGXSNNZ9Q3', 0);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('9B788B014AC04E60A4DD9600C25C8913', '9FD67D92CC764D0BA437689EF811F2DD', 'fjwuxwwp9385nvjd827ccch46xysizms', '其实就是个瓜皮', '/upload/reply\/7/1\E95B317D85384CFAA3985B0B361410A4.jpg', to_date('18-09-2017 09:21:02', 'dd-mm-yyyy hh24:mi:ss'), '9525058C8459421DA4E025B8D5398872', 1);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('FC24B29B83F5413A80A73BA96661D0BC', '83', 'fjwuxwwp9385nvjd827ccch46xysizms', '烦烦烦烦烦烦烦烦烦烦烦烦烦烦烦烦烦烦发', null, to_date('14-09-2017 15:02:16', 'dd-mm-yyyy hh24:mi:ss'), 'K1FMFZ221OFTUS0BI2W72WN1CBE4WL6A', 0);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('7E2A51C2C500461CBD0DE9A435B588EA', '9FD67D92CC764D0BA437689EF811F2DD', '9525058C8459421DA4E025B8D5398872', '哈哈哈哈哈哈哈哈哈', '/upload/reply\/8/6\7E01676EB6E74BE2A8FD3BA328825B62.jpg', to_date('18-09-2017 09:22:10', 'dd-mm-yyyy hh24:mi:ss'), '9525058C8459421DA4E025B8D5398872', 1);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('1E98B22883984F34915B9294509DE670', '9FD67D92CC764D0BA437689EF811F2DD', '9525058C8459421DA4E025B8D5398872', '那个屌丝报上名来', null, to_date('18-09-2017 09:24:23', 'dd-mm-yyyy hh24:mi:ss'), 'fjwuxwwp9385nvjd827ccch46xysizms', 1);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('7DD562D84C9C4EDE8324C57D05AE4FC8', '5BF9EC6356534FDBBE92255C2EC35590', 'F4B02FA5BB8742748F119E9889ED89C2', '楼主说得好', null, to_date('18-09-2017 09:30:10', 'dd-mm-yyyy hh24:mi:ss'), '64085BFEC9B64FBE8F069C8A80E5BA1D', 0);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('3F529092D0B94368B79F2650D6C61715', '5BF9EC6356534FDBBE92255C2EC35590', 'F4B02FA5BB8742748F119E9889ED89C2', '一楼永远是楼主的', null, to_date('18-09-2017 09:33:26', 'dd-mm-yyyy hh24:mi:ss'), '64085BFEC9B64FBE8F069C8A80E5BA1D', 0);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('102', '55', '2549A196799C4AEB80B4E55624B6A774', '法国大润发', null, to_date('13-09-2017 15:43:34', 'dd-mm-yyyy hh24:mi:ss'), 'GK9YOYJK7ZYAFRJUXAJZ8YLC4ETFU90Y', 1);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('2A642A85A19C4C528BC673A0B7095E40', '96', 'fjwuxwwp9385nvjd827ccch46xysizms', '呀呀呀', '/upload/reply\/f/d\9EED52FB32C94F818632A748CA6722B5.jpg', to_date('15-09-2017 15:04:10', 'dd-mm-yyyy hh24:mi:ss'), 'S1NUXKFKRGS1UNLPIELR9G1574A2396V', 0);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('109', '75', '2549A196799C4AEB80B4E55624B6A774', '绥芬河而粉色的发', null, to_date('13-09-2017 15:43:34', 'dd-mm-yyyy hh24:mi:ss'), 'fjwuxoqp9385nvjd827wysh46xysizms', 1);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('DFE6E5DE50464363BED7E6E34BD7981F', '74', 'fjwuxwwp9385nvjd827ccch46xysizms', '在座的各位都是垃圾', '/upload/reply\/5/4\BD7E217F64B546EABFD2F3E311DCA2C1.jpg', to_date('15-09-2017 15:06:01', 'dd-mm-yyyy hh24:mi:ss'), 'D5E8F4BF725E4CFC89CC9DB5F59A09AC', 0);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('116', '78', '5W4454EEDSFGR5D8DS2C5DQQ5WHJ6SD8', '蓄势待发额', null, to_date('13-09-2017 15:43:34', 'dd-mm-yyyy hh24:mi:ss'), '360FF0F5F7F6422F99DF5617B5C0C72E', 1);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('F4B6B498E4AE4F4AB39F4B3ACF43E474', '74', 'fjwuxwwp9385nvjd827ccch46xysizms', '多多少少', '/upload/reply\/0/2\29E2C697637C40C9BECBC0BA090275D0.jpg', to_date('15-09-2017 15:15:43', 'dd-mm-yyyy hh24:mi:ss'), 'D5E8F4BF725E4CFC89CC9DB5F59A09AC', 0);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('117', '83', '5W4454EEDSFGR5D8DS2C5DQQ5WHJ6SD8', '招待费输入范围发生地方', null, to_date('13-09-2017 15:43:34', 'dd-mm-yyyy hh24:mi:ss'), '5W4454EEDSFGR5D8DS2C5DQQ5WHJ6SD8', 1);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('126', '98', '5W4454EEDSFGR5D8DS2C5DQQ5WHJ6SD8', '紫粉色法王额', null, to_date('13-09-2017 15:43:34', 'dd-mm-yyyy hh24:mi:ss'), 'SW6HA4XOSVL62QKGKCOFSFY7202XZLNX', 1);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('3D2FE1D41E824A699155AE145193669E', '107', 'fjwuxwwp9385nvjd827ccch46xysizms', '哈哈哈哈哈哈哈哈哈哈' || chr(13) || '' || chr(10) || '', null, to_date('14-09-2017 14:51:36', 'dd-mm-yyyy hh24:mi:ss'), 'SPIHXH85RD66XWMJVLP6AC0WSOCIHCYD', 0);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('68FF10E142BF441DA38414186EA24F06', '107', 'fjwuxwwp9385nvjd827ccch46xysizms', '这是个傻逼', null, to_date('14-09-2017 14:53:27', 'dd-mm-yyyy hh24:mi:ss'), 'SPIHXH85RD66XWMJVLP6AC0WSOCIHCYD', 0);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('94', '100', 'SPIHXH85RD66XWMJVLP6AC0WSOCIHCYD', '防守打法问额', null, to_date('13-09-2017 15:43:34', 'dd-mm-yyyy hh24:mi:ss'), 'S1NUXKFKRGS1UNLPIELR9G1574A2396V', 0);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('101', '55', 'SPIHXH85RD66XWMJVLP6AC0WSOCIHCYD', '申达股份色认为', null, to_date('13-09-2017 15:43:34', 'dd-mm-yyyy hh24:mi:ss'), 'TIX55QX9369XBH3NIWOBS427ZM2NMANK', 1);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('B79788B5C4F14D538BD8B04B087DF83E', '941587A173AE48D18E8D01148E739CC3', 'F4D674CE4D2140F198EDF1A3B4FA0CDD', '学了个皮毛很难受', null, to_date('17-09-2017 12:41:52', 'dd-mm-yyyy hh24:mi:ss'), 'F4D674CE4D2140F198EDF1A3B4FA0CDD', 1);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('110', '75', 'SW6HA4XOSVL62QKGKCOFSFY7202XZLNX', '阿斯蒂芬斯蒂芬顾问费', null, to_date('13-09-2017 15:43:34', 'dd-mm-yyyy hh24:mi:ss'), '2549A196799C4AEB80B4E55624B6A774', 0);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('108', '74', 'SW6HA4XOSVL62QKGKCOFSFY7202XZLNX', '自行车顾问费', null, to_date('13-09-2017 15:43:34', 'dd-mm-yyyy hh24:mi:ss'), 'S1NUXKFKRGS1UNLPIELR9G1574A2396V', 0);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('93', '100', 'SW6HA4XOSVL62QKGKCOFSFY7202XZLNX', '十多副', null, to_date('13-09-2017 15:43:34', 'dd-mm-yyyy hh24:mi:ss'), 'SPIHXH85RD66XWMJVLP6AC0WSOCIHCYD', 1);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('95', '105', 'YXW9AH9C6FFNNGTO2J2TWNAGXSNNZ9Q3', '十多副在线在线程', null, to_date('13-09-2017 15:43:34', 'dd-mm-yyyy hh24:mi:ss'), '2549A196799C4AEB80B4E55624B6A774', 1);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('97', '107', 'YXW9AH9C6FFNNGTO2J2TWNAGXSNNZ9Q3', '从V型穿粉色', null, to_date('13-09-2017 15:43:34', 'dd-mm-yyyy hh24:mi:ss'), '360FF0F5F7F6422F99DF5617B5C0C72E', 1);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('96', '105', 'YXW9AH9C6FFNNGTO2J2TWNAGXSNNZ9Q3', '线程VR是十多副', null, to_date('13-09-2017 15:43:34', 'dd-mm-yyyy hh24:mi:ss'), 'S1NUXKFKRGS1UNLPIELR9G1574A2396V', 1);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('115', '78', 'YXW9AH9C6FFNNGTO2J2TWNAGXSNNZ9Q3', '爱上单位是敌对撒', null, to_date('13-09-2017 15:43:34', 'dd-mm-yyyy hh24:mi:ss'), '65A5E3FBEF4F4210B968370289B227F9', 1);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('F3B6F917AECF4178B6E938857DC70F5E', '107', 'fjwuxwwp9385nvjd827ccch46xysizms', '哈哈哈哈哈哈哈哈哈哈' || chr(13) || '' || chr(10) || '', null, to_date('14-09-2017 14:51:18', 'dd-mm-yyyy hh24:mi:ss'), 'SPIHXH85RD66XWMJVLP6AC0WSOCIHCYD', 0);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('7525E5BA123347FE8637C5C00E424B14', '107', 'fjwuxwwp9385nvjd827ccch46xysizms', '电影不咋的，宣传到挺好', null, to_date('14-09-2017 14:54:00', 'dd-mm-yyyy hh24:mi:ss'), 'SPIHXH85RD66XWMJVLP6AC0WSOCIHCYD', 0);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('04B46ACA15754A1EB875D1E91EF73BBC', '107', 'fjwuxwwp9385nvjd827ccch46xysizms', '垃圾的广电总局', null, to_date('14-09-2017 14:54:15', 'dd-mm-yyyy hh24:mi:ss'), 'SPIHXH85RD66XWMJVLP6AC0WSOCIHCYD', 0);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('0DC6556D583B48F8B68ECF5C1A2DD459', '83', 'fjwuxwwp9385nvjd827ccch46xysizms', '东方时尚', null, to_date('14-09-2017 15:02:42', 'dd-mm-yyyy hh24:mi:ss'), '5W4454EEDSFGR5D8DS2C5DQQ5WHJ6SD8', 0);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('54CA20153A814917B6F39C03546CBEE4', '83', 'fjwuxwwp9385nvjd827ccch46xysizms', '如果公司', null, to_date('14-09-2017 15:03:03', 'dd-mm-yyyy hh24:mi:ss'), 'GK9YOYJK7ZYAFRJUXAJZ8YLC4ETFU90Y', 0);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('A9CCB24D9F5C47EABCE8BB02FEC00539', '5BF9EC6356534FDBBE92255C2EC35590', 'F4B02FA5BB8742748F119E9889ED89C2', '还有人没' || chr(13) || '' || chr(10) || '', null, to_date('18-09-2017 09:30:49', 'dd-mm-yyyy hh24:mi:ss'), '64085BFEC9B64FBE8F069C8A80E5BA1D', 0);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('92', '78', 'K1FMFZ221OFTUS0BI2W72WN1CBE4WL6A', '权威太阳反弹合适的', null, to_date('12-09-2017 18:18:09', 'dd-mm-yyyy hh24:mi:ss'), 'TIX55QX9369XBH3NIWOBS427ZM2NMANK', 0);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('85', '83', 'GK9YOYJK7ZYAFRJUXAJZ8YLC4ETFU90Y', 'as的绘图员', null, to_date('12-09-2017 18:18:09', 'dd-mm-yyyy hh24:mi:ss'), 'S1NUXKFKRGS1UNLPIELR9G1574A2396V', 0);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('70', '53', 'fjwuxwwp9385nvjd827ccch46xysizms', '神操作', null, to_date('11-09-2017 15:59:29', 'dd-mm-yyyy hh24:mi:ss'), 'fjwuxoqp9385nvjd827wysh46xysizms', 1);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('51', '49', 'fjwuxoqp9385nvjd827wysh46xysizms', '我靠，服了', null, to_date('11-09-2017 15:59:29', 'dd-mm-yyyy hh24:mi:ss'), 'fjwuxoqp9385nvjd827wysh46xysizms', 1);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('91', '74', 'S65VYYCF0PPRKW6RL0YNAMX1QY1AZ0WQ', '啊蜀都赋干啥的呀', null, to_date('12-09-2017 18:18:09', 'dd-mm-yyyy hh24:mi:ss'), 'RMLWN9ZDY7I1MHQYYXVCMDI5AOYZBDTW', 0);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('9AA8CA97AFE34F0DAB20256984EBA995', '5BF9EC6356534FDBBE92255C2EC35590', '64085BFEC9B64FBE8F069C8A80E5BA1D', '2.捧脸杀' || chr(13) || '' || chr(10) || '捧脸杀比摸头更亲密，是只属于恋人的动作，' || chr(13) || '' || chr(10) || '会' || chr(13) || '' || chr(10) || '给对方传递出一种信号，' || chr(13) || '' || chr(10) || '你很可爱，我很喜欢' || chr(13) || '' || chr(10) || '你。女人的脸是女人最得意的部分，男人不仅仅' || chr(13) || '' || chr(10) || '更要通过触碰表达欣赏。' || chr(13) || '' || chr(10) || '要通过语言赞美，', '/upload/reply\/3/a\73C4A99C28314F50951FB07DA55929ED.jpg', to_date('18-09-2017 09:32:51', 'dd-mm-yyyy hh24:mi:ss'), '64085BFEC9B64FBE8F069C8A80E5BA1D', 0);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('83', '53', 'K1FMFZ221OFTUS0BI2W72WN1CBE4WL6A', '肝i7wefh', null, to_date('12-09-2017 18:18:09', 'dd-mm-yyyy hh24:mi:ss'), '65A5E3FBEF4F4210B968370289B227F9', 1);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('82', '79', 'TIX55QX9369XBH3NIWOBS427ZM2NMANK', '啊蜀都赋', null, to_date('12-09-2017 18:18:09', 'dd-mm-yyyy hh24:mi:ss'), 'RMLWN9ZDY7I1MHQYYXVCMDI5AOYZBDTW', 0);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('81', '81', 'S1NUXKFKRGS1UNLPIELR9G1574A2396V', '千万人哈闪电发货', null, to_date('12-09-2017 18:18:09', 'dd-mm-yyyy hh24:mi:ss'), 'K1FMFZ221OFTUS0BI2W72WN1CBE4WL6A', 0);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('86F85EF3F1EE49EB80F8CAB98DF58EB3', '74', 'fjwuxwwp9385nvjd827ccch46xysizms', '2312431是的撒多所', '/upload/reply\/f/d\0262475A2597485A9E8C8D4C15B67C02.jpg', to_date('15-09-2017 15:15:33', 'dd-mm-yyyy hh24:mi:ss'), 'D5E8F4BF725E4CFC89CC9DB5F59A09AC', 0);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('79', '81', '65A5E3FBEF4F4210B968370289B227F9', '阿阿斯顿(⊙o⊙)…人', null, to_date('12-09-2017 18:18:09', 'dd-mm-yyyy hh24:mi:ss'), 'K1FMFZ221OFTUS0BI2W72WN1CBE4WL6A', 0);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('65DA5C9DC8CD4C4CA2749B5B69D8C7E8', '5BF9EC6356534FDBBE92255C2EC35590', 'F4B02FA5BB8742748F119E9889ED89C2', '多少上热门', null, to_date('18-09-2017 09:30:58', 'dd-mm-yyyy hh24:mi:ss'), '64085BFEC9B64FBE8F069C8A80E5BA1D', 0);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('77', '75', 'TIX55QX9369XBH3NIWOBS427ZM2NMANK', '自行车收刀入鞘', null, to_date('12-09-2017 18:18:09', 'dd-mm-yyyy hh24:mi:ss'), 'K1FMFZ221OFTUS0BI2W72WN1CBE4WL6A', 0);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('8C38DB75829F4895A6084CAC08C51CFC', '5BF9EC6356534FDBBE92255C2EC35590', 'F4B02FA5BB8742748F119E9889ED89C2', '3.牵手杀' || chr(13) || '' || chr(10) || '所有的女孩子，对于牵手都有一种梦幻般的追' || chr(13) || '' || chr(10) || '求，牵手往往是和女孩确定恋爱的方式，只有当' || chr(13) || '' || chr(10) || '', null, to_date('18-09-2017 09:33:05', 'dd-mm-yyyy hh24:mi:ss'), '64085BFEC9B64FBE8F069C8A80E5BA1D', 0);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('75', '78', 'D5E8F4BF725E4CFC89CC9DB5F59A09AC', '千万人翁敢死队风格 ', null, to_date('12-09-2017 18:18:09', 'dd-mm-yyyy hh24:mi:ss'), 'SPIHXH85RD66XWMJVLP6AC0WSOCIHCYD', 0);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('74', '80', 'D5E8F4BF725E4CFC89CC9DB5F59A09AC', 'asdasd安慰', null, to_date('12-09-2017 18:18:09', 'dd-mm-yyyy hh24:mi:ss'), '65A5E3FBEF4F4210B968370289B227F9', 1);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('73', '49', 'TIX55QX9369XBH3NIWOBS427ZM2NMANK', '在线充值小彩蛋 ', null, to_date('12-09-2017 18:18:09', 'dd-mm-yyyy hh24:mi:ss'), 'S65VYYCF0PPRKW6RL0YNAMX1QY1AZ0WQ', 1);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('72', '80', 'TIX55QX9369XBH3NIWOBS427ZM2NMANK', 'asdasd安心现在才', null, to_date('12-09-2017 18:18:09', 'dd-mm-yyyy hh24:mi:ss'), 'S1NUXKFKRGS1UNLPIELR9G1574A2396V', 0);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('71', '78', '65A5E3FBEF4F4210B968370289B227F9', 'as大神大时代', null, to_date('12-09-2017 18:18:09', 'dd-mm-yyyy hh24:mi:ss'), 'RMLWN9ZDY7I1MHQYYXVCMDI5AOYZBDTW', 0);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('9256320BCE3343AF8A1D2F7651F12AE5', 'CBC285E4AF6F48CF95B46A44A1E0BDC2', 'F4B02FA5BB8742748F119E9889ED89C2', '我不服', null, to_date('18-09-2017 09:43:37', 'dd-mm-yyyy hh24:mi:ss'), '64085BFEC9B64FBE8F069C8A80E5BA1D', 0);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('B32ED2A71BB041EE873A2C694E06BE7D', '9FD67D92CC764D0BA437689EF811F2DD', '9525058C8459421DA4E025B8D5398872', '---  ----' || chr(13) || '' || chr(10) || '    o', '/upload/reply\/b/7\ECC41121BE7443FC90F31250B9382B7B.jpg', to_date('18-09-2017 09:33:11', 'dd-mm-yyyy hh24:mi:ss'), '9525058C8459421DA4E025B8D5398872', 1);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('53ACC08C365A453CB28AC2A2901A7AC8', '74', 'fjwuxwwp9385nvjd827ccch46xysizms', '222121', '/upload/reply\/f/d\D948A427C15B49829534732DDEC543FB.jpg', to_date('15-09-2017 14:55:03', 'dd-mm-yyyy hh24:mi:ss'), 'D5E8F4BF725E4CFC89CC9DB5F59A09AC', 0);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('19E234EE792D4A5CA86C6B1807E0EF6B', '96', 'fjwuxwwp9385nvjd827ccch46xysizms', '无处debug啊啊啊', '/upload/reply\/0/2\40BAD094E58E4ED08CA9A5184FEF3392.jpg', to_date('15-09-2017 15:11:08', 'dd-mm-yyyy hh24:mi:ss'), 'S1NUXKFKRGS1UNLPIELR9G1574A2396V', 0);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('6F1E1082086E4833A4A5789F7AEF99A8', '9FD67D92CC764D0BA437689EF811F2DD', 'fjwuxwwp9385nvjd827ccch46xysizms', '666', '/upload/reply\/8/4\E638EFE226124A9A860E9E4508F049B8.jpg', to_date('18-09-2017 09:26:24', 'dd-mm-yyyy hh24:mi:ss'), '9525058C8459421DA4E025B8D5398872', 1);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('0E10805E4623428B9509026AE0D3BDF5', '5BF9EC6356534FDBBE92255C2EC35590', 'F4B02FA5BB8742748F119E9889ED89C2', '能不能上热门', null, to_date('18-09-2017 09:31:14', 'dd-mm-yyyy hh24:mi:ss'), '64085BFEC9B64FBE8F069C8A80E5BA1D', 0);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('937CD4545061496D85336F1BE762EB56', '5BF9EC6356534FDBBE92255C2EC35590', 'F4B02FA5BB8742748F119E9889ED89C2', '热门', null, to_date('18-09-2017 09:34:52', 'dd-mm-yyyy hh24:mi:ss'), '64085BFEC9B64FBE8F069C8A80E5BA1D', 0);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('5F81BE4AF29B4E4A99EEE680BFFCA2D9', 'E86BAAEC6E1F4622A45E2244BAC894F6', 'F5ABCA325D074ECF8E3BE4DB6705C11B', '333', null, to_date('18-09-2017 09:39:57', 'dd-mm-yyyy hh24:mi:ss'), '9525058C8459421DA4E025B8D5398872', 1);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('8FA5DF2E8F4B467DB1278B834645CAC9', '103', 'F4D674CE4D2140F198EDF1A3B4FA0CDD', '666', null, to_date('17-09-2017 12:49:05', 'dd-mm-yyyy hh24:mi:ss'), 'K1FMFZ221OFTUS0BI2W72WN1CBE4WL6A', 0);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('EE2394A8354545F595C4D129DDE89BFD', 'CBC285E4AF6F48CF95B46A44A1E0BDC2', 'F4B02FA5BB8742748F119E9889ED89C2', '666666666666', null, to_date('18-09-2017 09:43:32', 'dd-mm-yyyy hh24:mi:ss'), '64085BFEC9B64FBE8F069C8A80E5BA1D', 0);
commit;
prompt 65 records loaded
prompt Enabling foreign key constraints for T_CARE...
alter table T_CARE enable constraint FK_CUSER_ID;
alter table T_CARE enable constraint FK_FUSER_ID;
prompt Enabling foreign key constraints for T_SECTION...
alter table T_SECTION enable constraint FK_S_ADMIN;
prompt Enabling foreign key constraints for T_POST...
alter table T_POST enable constraint FK_SECTION_ID;
alter table T_POST enable constraint FK_USER_ID;
prompt Enabling foreign key constraints for T_COLLECT...
alter table T_COLLECT enable constraint FK_CTPOST_ID;
alter table T_COLLECT enable constraint FK_CTUSER_ID;
prompt Enabling foreign key constraints for T_REPLY...
alter table T_REPLY enable constraint FK_POST_ID;
alter table T_REPLY enable constraint FK_RUSER_ID;
prompt Enabling triggers for T_ADMIN...
alter table T_ADMIN enable all triggers;
prompt Enabling triggers for T_USER...
alter table T_USER enable all triggers;
prompt Enabling triggers for T_CARE...
alter table T_CARE enable all triggers;
prompt Enabling triggers for T_SECTION...
alter table T_SECTION enable all triggers;
prompt Enabling triggers for T_POST...
alter table T_POST enable all triggers;
prompt Enabling triggers for T_COLLECT...
alter table T_COLLECT enable all triggers;
prompt Enabling triggers for T_REPLY...
alter table T_REPLY enable all triggers;
set feedback on
set define on
prompt Done.
