prompt PL/SQL Developer import file
prompt Created on 2017��9��18�� by George Luo
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
values ('7EA958B8CA1B4B2A9100553170174670', 'һͷţ', '0b4e7a0e5fe84ad35fb5f95b9ceeac79', '401432612@qq.com', 'male', '14-9�� -17', null, null, to_date('14-09-2017 14:48:18', 'dd-mm-yyyy hh24:mi:ss'), '53B3C680D2514AE8A10F3A3057D41A9C', 2, 0);
insert into T_USER (u_id, u_name, u_pwd, u_email, u_sex, u_birth, u_show, u_head, u_time, u_code, u_status, u_member)
values ('27A21B72BC7C4B40929AF2C6D452D43D', '˭���߶Է�', '76419c58730d9f35de7ac538c2fd6737', 'd''f''s''d''fgsfd@fdgs.con', 'male', '14-9�� -17', null, null, to_date('14-09-2017 15:06:53', 'dd-mm-yyyy hh24:mi:ss'), 'BE06B030BB604226A7618878D2A1513F', 2, 0);
insert into T_USER (u_id, u_name, u_pwd, u_email, u_sex, u_birth, u_show, u_head, u_time, u_code, u_status, u_member)
values ('330F4FCC46424B4AB05D2F6E503A1A1D', '�����', '200820e3227815ed1756a6b531e7e0d2', 'qqqqq@dd.com', 'male', '14-9�� -17', null, null, to_date('14-09-2017 15:07:49', 'dd-mm-yyyy hh24:mi:ss'), '06E90D6B6380407780911BC732930B87', 1, 0);
insert into T_USER (u_id, u_name, u_pwd, u_email, u_sex, u_birth, u_show, u_head, u_time, u_code, u_status, u_member)
values ('27D3E699B9F04C3A95C68B2E59B517D9', '��������', 'e10adc3949ba59abbe56e057f20f883e', '2422730690@qq.com', 'male', null, null, null, to_date('17-09-2017 22:38:02', 'dd-mm-yyyy hh24:mi:ss'), '1BB74A5C1EFE4B68A9C20223413BB909', 0, 0);
insert into T_USER (u_id, u_name, u_pwd, u_email, u_sex, u_birth, u_show, u_head, u_time, u_code, u_status, u_member)
values ('8FD249A2984B45AFA171DE8A2F36BB22', 'ak47', 'cd87cd5ef753a06ee79fc75dc7cfe66c', '2022365796@qq.com', 'male', '1998-09-18', '������������', '/upload/userhead\/6/0\660C2AF1813B4A55AD47A97060A71906.jpg', to_date('18-09-2017 09:14:43', 'dd-mm-yyyy hh24:mi:ss'), '554EB90114744D839BE5DB6F7FF869B2', 1, 0);
insert into T_USER (u_id, u_name, u_pwd, u_email, u_sex, u_birth, u_show, u_head, u_time, u_code, u_status, u_member)
values ('9525058C8459421DA4E025B8D5398872', '����˧', 'e10adc3949ba59abbe56e057f20f883e', '1094950759@qq.com', 'male', null, 'ʷ���������˧������', '/upload/userhead\/8/8\69B88059C72B4AEF91AFA295513C1AAD.jpg', to_date('18-09-2017 09:15:22', 'dd-mm-yyyy hh24:mi:ss'), 'E66EB7F1624D48A4B3EE17E0A25C33B7', 1, 0);
insert into T_USER (u_id, u_name, u_pwd, u_email, u_sex, u_birth, u_show, u_head, u_time, u_code, u_status, u_member)
values ('F4B02FA5BB8742748F119E9889ED89C2', '111', 'e10adc3949ba59abbe56e057f20f883e', '2495784510@qq.com', 'male', '2017-09-01', null, '/upload/userhead\/b/1\448C6C8EED914D46ADC902EF02CB04DF.jpg', to_date('18-09-2017 09:19:31', 'dd-mm-yyyy hh24:mi:ss'), 'E01F0832008F4C10AC9614EC69A08A57', 1, 0);
insert into T_USER (u_id, u_name, u_pwd, u_email, u_sex, u_birth, u_show, u_head, u_time, u_code, u_status, u_member)
values ('64085BFEC9B64FBE8F069C8A80E5BA1D', 't1076682076', '9b6808d1bbe438d31d16c32a6da8a300', '1310847353@qq.com', 'male', null, null, null, to_date('18-09-2017 09:21:02', 'dd-mm-yyyy hh24:mi:ss'), '10CB0EAB20904B9EAE8BD8458AD78345', 1, 0);
insert into T_USER (u_id, u_name, u_pwd, u_email, u_sex, u_birth, u_show, u_head, u_time, u_code, u_status, u_member)
values ('F4D674CE4D2140F198EDF1A3B4FA0CDD', '�����ҵ�', 'fcea920f7412b5da7be0cf42b8c93759', '464499027@qq.com', 'female', '2012-05-29', null, '/upload/userhead\/c/c\BB73072AE13A472BA77768C8AE4FA22C.jpg', to_date('17-09-2017 12:39:27', 'dd-mm-yyyy hh24:mi:ss'), '9D6A35AE15434029AD204F7784F2B3A9', 1, 0);
insert into T_USER (u_id, u_name, u_pwd, u_email, u_sex, u_birth, u_show, u_head, u_time, u_code, u_status, u_member)
values ('D5E8F4BF725E4CFC89CC9DB5F59A09AC', '��˹�ٷ�', 'e10adc3949ba59abbe56e057f20f883e', '13223123212@qq.com', 'male', '1997/03/13', '�����ļ����Ͱ���', null, to_date('08-09-2017 12:46:53', 'dd-mm-yyyy hh24:mi:ss'), '96837028', 1, 0);
insert into T_USER (u_id, u_name, u_pwd, u_email, u_sex, u_birth, u_show, u_head, u_time, u_code, u_status, u_member)
values ('5W4454EEDSFGR5D8DS2C5DQQ5WHJ6SD8', 'Tomcat', 'e10adc3949ba59abbe56e057f20f883e', 'tomcat@qq.com', 'female', '2017/09/13', '����ô���Ƿ�����', null, to_date('13-09-2017 14:12:16', 'dd-mm-yyyy hh24:mi:ss'), 'utWW780k', 2, 0);
insert into T_USER (u_id, u_name, u_pwd, u_email, u_sex, u_birth, u_show, u_head, u_time, u_code, u_status, u_member)
values ('F5SSS125D48F48Q9S61D5F47G123A54S', '�ǿ�', 'e10adc3949ba59abbe56e057f20f883e', 'guke123@163.com', 'female', '2000/01/01', 'Ŷ�ǺǺ�', null, to_date('13-09-2017 17:15:20', 'dd-mm-yyyy hh24:mi:ss'), 'utDH780k', 1, 1);
insert into T_USER (u_id, u_name, u_pwd, u_email, u_sex, u_birth, u_show, u_head, u_time, u_code, u_status, u_member)
values ('FKJD1S5D2Q3W6E4Z5S4D2F5Q8W6E5S1Z', '��֭��', 'e10adc3949ba59abbe56e057f20f883e', 'tangzhiheng@126.com', 'female', '1988/05/01', '��������', null, to_date('13-09-2017 17:17:04', 'dd-mm-yyyy hh24:mi:ss'), '96837028', 2, 1);
insert into T_USER (u_id, u_name, u_pwd, u_email, u_sex, u_birth, u_show, u_head, u_time, u_code, u_status, u_member)
values ('QWE4S5D4F8XZ1CC2A3S6D5ZSD5Q8SD5Q', '���Ƴ�', 'e10adc3949ba59abbe56e057f20f883e', 'zhouwencheng99@163.com', 'male', '1999/09/09', '�׺�', null, to_date('13-09-2017 17:18:58', 'dd-mm-yyyy hh24:mi:ss'), 'utDH780k', 2, 1);
insert into T_USER (u_id, u_name, u_pwd, u_email, u_sex, u_birth, u_show, u_head, u_time, u_code, u_status, u_member)
values ('F5ABCA325D074ECF8E3BE4DB6705C11B', 'lp', 'e10adc3949ba59abbe56e057f20f883e', '707652936@qq.com', 'male', null, null, null, to_date('18-09-2017 09:26:38', 'dd-mm-yyyy hh24:mi:ss'), '47AC81927D4140E5ACC5ECACE309F410', 1, 0);
insert into T_USER (u_id, u_name, u_pwd, u_email, u_sex, u_birth, u_show, u_head, u_time, u_code, u_status, u_member)
values ('360FF0F5F7F6422F99DF5617B5C0C72E', '٤����', 'e10adc3949ba59abbe56e057f20f883e', '13231212@qq.com', 'male', '2002-04-18', '�ǵ����������', '/upload/userhead\/f/d\7BE3DD1D94D6430290AC834D2C9CAE77.jpg', to_date('08-09-2017 12:45:11', 'dd-mm-yyyy hh24:mi:ss'), '96837028', 1, 0);
insert into T_USER (u_id, u_name, u_pwd, u_email, u_sex, u_birth, u_show, u_head, u_time, u_code, u_status, u_member)
values ('1F5CE01B15AD405DA60C473B7A95B2EA', '������', 'e10adc3949ba59abbe56e057f20f883e', 'luo1663088396@163.com', 'male', null, null, null, to_date('18-09-2017 09:36:16', 'dd-mm-yyyy hh24:mi:ss'), '370B5898065B46118F8969A64B5E3CA7', 1, 0);
insert into T_USER (u_id, u_name, u_pwd, u_email, u_sex, u_birth, u_show, u_head, u_time, u_code, u_status, u_member)
values ('fjwuxoqp9385nvjd827wysh46xysizms', 'һ������', 'e10adc3949ba59abbe56e057f20f883e', 'luo1584434540@163.com', 'male', '1995/10/12', '����д������', null, to_date('08-09-2017 12:37:14', 'dd-mm-yyyy hh24:mi:ss'), 'utDH780k', 2, 0);
insert into T_USER (u_id, u_name, u_pwd, u_email, u_sex, u_birth, u_show, u_head, u_time, u_code, u_status, u_member)
values ('fjwuxwwp9385nvjd827ccch46xysizms', '������', 'e10adc3949ba59abbe56e057f20f883e', '1584434540@qq.com', 'female', '1996-09-23', '������С��ڶ���Ҫ���ˣ��ø���jjjjjjjjjj', '/upload/userhead\/a/a\885B3060538844529EC74EB6D87E764F.gif', to_date('08-09-2017 12:37:14', 'dd-mm-yyyy hh24:mi:ss'), 'utWW780k', 1, 1);
insert into T_USER (u_id, u_name, u_pwd, u_email, u_sex, u_birth, u_show, u_head, u_time, u_code, u_status, u_member)
values ('65A5E3FBEF4F4210B968370289B227F9', '��ҹ��è', 'e10adc3949ba59abbe56e057f20f883e', '889584589@qq.com', 'male', '1997/03/13', '����һ���ǲ������', null, to_date('08-09-2017 12:37:15', 'dd-mm-yyyy hh24:mi:ss'), '96837028', 1, 0);
insert into T_USER (u_id, u_name, u_pwd, u_email, u_sex, u_birth, u_show, u_head, u_time, u_code, u_status, u_member)
values ('2549A196799C4AEB80B4E55624B6A774', 'ɽ�����������ٷ�', 'e10adc3949ba59abbe56e057f20f883e', '990212@qq.com', 'male', '1997/03/13', '�����ļ����Ͱ���', null, to_date('08-09-2017 12:47:50', 'dd-mm-yyyy hh24:mi:ss'), '96837028', 2, 0);
insert into T_USER (u_id, u_name, u_pwd, u_email, u_sex, u_birth, u_show, u_head, u_time, u_code, u_status, u_member)
values ('S1NUXKFKRGS1UNLPIELR9G1574A2396V', '��ҹ��', 'e10adc3949ba59abbe56e057f20f883e', 'huiyeji@163.com', 'female', '2017/09/07', '�Ҿ��Ǹ�����', null, to_date('12-09-2017 14:23:52', 'dd-mm-yyyy hh24:mi:ss'), 'utDH780k', 1, 1);
insert into T_USER (u_id, u_name, u_pwd, u_email, u_sex, u_birth, u_show, u_head, u_time, u_code, u_status, u_member)
values ('YXW9AH9C6FFNNGTO2J2TWNAGXSNNZ9Q3', '��ɵ�������', 'e10adc3949ba59abbe56e057f20f883e', 'asdasdasd@qq.com', 'female', '1999/05/08', 'ȥί��ί��ί������', null, to_date('12-09-2017 14:38:00', 'dd-mm-yyyy hh24:mi:ss'), 'utDH780k', 2, 0);
insert into T_USER (u_id, u_name, u_pwd, u_email, u_sex, u_birth, u_show, u_head, u_time, u_code, u_status, u_member)
values ('6G56PDKMCYIO501O2H2ADMZUAMAOM2GP', '�ܾ���', 'e10adc3949ba59abbe56e057f20f883e', 'ljs1991@163.com', 'female', '1992/12/25', 'vDVD���', null, to_date('12-09-2017 14:38:00', 'dd-mm-yyyy hh24:mi:ss'), 'utWW780k', 2, 0);
insert into T_USER (u_id, u_name, u_pwd, u_email, u_sex, u_birth, u_show, u_head, u_time, u_code, u_status, u_member)
values ('SPIHXH85RD66XWMJVLP6AC0WSOCIHCYD', '������', 'e10adc3949ba59abbe56e057f20f883e', 'pengxinqiu@qq.com', 'male', '1982/11/30', '΢�Ų�ѯ֧��������', null, to_date('12-09-2017 14:38:00', 'dd-mm-yyyy hh24:mi:ss'), 'utWW780k', 1, 0);
insert into T_USER (u_id, u_name, u_pwd, u_email, u_sex, u_birth, u_show, u_head, u_time, u_code, u_status, u_member)
values ('RMLWN9ZDY7I1MHQYYXVCMDI5AOYZBDTW', '���ݺ�', 'e10adc3949ba59abbe56e057f20f883e', 'ninihong@qq.com', 'female', '2002/10/08', '��ζ������', null, to_date('12-09-2017 14:38:00', 'dd-mm-yyyy hh24:mi:ss'), 'utWW780k', 1, 1);
insert into T_USER (u_id, u_name, u_pwd, u_email, u_sex, u_birth, u_show, u_head, u_time, u_code, u_status, u_member)
values ('TIX55QX9369XBH3NIWOBS427ZM2NMANK', 'ҹ�ӳ�', 'e10adc3949ba59abbe56e057f20f883e', 'yejiacheng@126.com', 'male', '1993/07/22', '���Է����˹���', null, to_date('12-09-2017 14:38:00', 'dd-mm-yyyy hh24:mi:ss'), 'utDH780k', 1, 1);
insert into T_USER (u_id, u_name, u_pwd, u_email, u_sex, u_birth, u_show, u_head, u_time, u_code, u_status, u_member)
values ('SW6HA4XOSVL62QKGKCOFSFY7202XZLNX', 'ţ��', 'e10adc3949ba59abbe56e057f20f883e', 'niupei@qq.com', 'female', '1991/04/11', 'as�Գ����ĳ�����', null, to_date('12-09-2017 14:38:00', 'dd-mm-yyyy hh24:mi:ss'), 'utWW780k', 1, 0);
insert into T_USER (u_id, u_name, u_pwd, u_email, u_sex, u_birth, u_show, u_head, u_time, u_code, u_status, u_member)
values ('K1FMFZ221OFTUS0BI2W72WN1CBE4WL6A', '����٤����', 'e10adc3949ba59abbe56e057f20f883e', 'afjdl@qq.com', 'female', '1994/02/13', '�Һ�������', null, to_date('12-09-2017 14:38:00', 'dd-mm-yyyy hh24:mi:ss'), 'utDH780k', 2, 0);
insert into T_USER (u_id, u_name, u_pwd, u_email, u_sex, u_birth, u_show, u_head, u_time, u_code, u_status, u_member)
values ('KK0VPE4H3OVQ8DMHW36DZFK5R60CKJZ0', '��ͯ��', 'e10adc3949ba59abbe56e057f20f883e', 'heitongzi@126.com', 'male', '1995/02/25', '�ܶ൶��ϴ��', null, to_date('12-09-2017 14:38:00', 'dd-mm-yyyy hh24:mi:ss'), '96837028', 2, 1);
insert into T_USER (u_id, u_name, u_pwd, u_email, u_sex, u_birth, u_show, u_head, u_time, u_code, u_status, u_member)
values ('S65VYYCF0PPRKW6RL0YNAMX1QY1AZ0WQ', '������', 'e10adc3949ba59abbe56e057f20f883e', 'yaodaoji@alibaodu.com', 'female', '1998/04/08', 'һ����ϴ��', null, to_date('12-09-2017 14:38:00', 'dd-mm-yyyy hh24:mi:ss'), 'utDH780k', 2, 0);
insert into T_USER (u_id, u_name, u_pwd, u_email, u_sex, u_birth, u_show, u_head, u_time, u_code, u_status, u_member)
values ('GK9YOYJK7ZYAFRJUXAJZ8YLC4ETFU90Y', '�����', 'e10adc3949ba59abbe56e057f20f883e', 'maikenji@163.com', 'female', '1992/08/07', '�óԲ��󣬽���ʵ��', null, to_date('12-09-2017 14:38:00', 'dd-mm-yyyy hh24:mi:ss'), '96837028', 2, 0);
insert into T_USER (u_id, u_name, u_pwd, u_email, u_sex, u_birth, u_show, u_head, u_time, u_code, u_status, u_member)
values ('6756D9DF46DA4492B866ED4ACB4384F3', '��ͷʹ��', '350c9d901b7f1c73a481e240ec1b7c0b', '1663088396@qq.com', 'male', '15-9�� -17', null, null, to_date('15-09-2017 16:23:39', 'dd-mm-yyyy hh24:mi:ss'), '175670AA16334579B92493BAB4D00F9E', 1, 0);
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
values ('61', '��������', '����ʲô���ԣ������ҵ�������ͬ��', 2, 'fjwuxoqp9385nvjd827wysh46xysizms');
insert into T_SECTION (s_id, s_name, s_show, s_count, s_admin)
values ('42', '�Ƽ�����', '�Ƽ��ı�����', 7, 'fjwuxwwp9385nvjd827ccch46xysizms');
insert into T_SECTION (s_id, s_name, s_show, s_count, s_admin)
values ('43', '��Ϸ�ش�', 'steam,psp,xbox,û�����Ҳ�����ֻ�����벻��', 15, '27A21B72BC7C4B40929AF2C6D452D43D');
insert into T_SECTION (s_id, s_name, s_show, s_count, s_admin)
values ('44', '��������', '���෹��Ʒζ����', 9, '65A5E3FBEF4F4210B968370289B227F9');
insert into T_SECTION (s_id, s_name, s_show, s_count, s_admin)
values ('5CF4B239B18C4925A1B31DFD62E3A46E', '��������', '��������������������', 0, '330F4FCC46424B4AB05D2F6E503A1A1D');
commit;
prompt 5 records loaded
prompt Loading T_POST...
insert into T_POST (p_id, p_sid, p_uid, p_title, p_content, p_jpgadd, p_posttime, p_replycount, p_clickcount, p_modifytime, p_essence, p_top)
values ('9FD67D92CC764D0BA437689EF811F2DD', '44', '9525058C8459421DA4E025B8D5398872', '������˧����˭������', '��С������˧������Ĺ�����������������������������', null, to_date('18-09-2017 09:16:59', 'dd-mm-yyyy hh24:mi:ss'), 6, 0, to_date('18-09-2017 09:33:11', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into T_POST (p_id, p_sid, p_uid, p_title, p_content, p_jpgadd, p_posttime, p_replycount, p_clickcount, p_modifytime, p_essence, p_top)
values ('9E6E84BCB4204628952361B431A1E1EF', '42', 'fjwuxwwp9385nvjd827ccch46xysizms', '������Ŷ', '������Ŷ������Ŷ������Ŷ������Ŷ������Ŷ������Ŷ', '/upload/post\/c/3\C8AB8879C7CC496296DDAF377D06FBC6.jpg', to_date('18-09-2017 09:41:22', 'dd-mm-yyyy hh24:mi:ss'), 0, 0, to_date('18-09-2017 09:41:22', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into T_POST (p_id, p_sid, p_uid, p_title, p_content, p_jpgadd, p_posttime, p_replycount, p_clickcount, p_modifytime, p_essence, p_top)
values ('E86BAAEC6E1F4622A45E2244BAC894F6', '61', '9525058C8459421DA4E025B8D5398872', '�ҵļ�������õ�', '����С���Ǳ��ʷ����ǿ����', null, to_date('18-09-2017 09:18:06', 'dd-mm-yyyy hh24:mi:ss'), 2, 0, to_date('18-09-2017 09:39:57', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into T_POST (p_id, p_sid, p_uid, p_title, p_content, p_jpgadd, p_posttime, p_replycount, p_clickcount, p_modifytime, p_essence, p_top)
values ('5605947B5808422EB961DEB6C2363CE6', '42', 'F4D674CE4D2140F198EDF1A3B4FA0CDD', '�μ�ƻ��iPhone X��������ʲô���ĸо�?', '��IT168 ��Ѷ�����ھ���������۶��ԣ�ͨ����ӫĻ�ۿ���ƻ�������᲻�������������������ķ�����ȴ��0���ֳ��μӷ�����ĸо����?ת����ͷ֮��ķ����᾿��������?�����μ�iPhone X������ļ���Dan Frommer���ø�����Ƭ��¼���˴˴�ʢ�ᣬ��׽������Ƶת�����ﲻ����ϸ�ڣ����㼴ʹû�������ֳ�Ҳ���Ա�������������Ⱦ��' || chr(13) || '' || chr(10) || '����ƻ����iPhone X�����Ტ��ֻ��һ���ֻ������ᣬ������ƻ���״���������ý����ߡ���ҵ�߹��Լ���ƻ���������ǡ�չʾȫ��Apple Park��һ�λ��ᣬDan Fro', null, to_date('18-09-2017 09:20:36', 'dd-mm-yyyy hh24:mi:ss'), 0, 0, to_date('18-09-2017 09:20:36', 'dd-mm-yyyy hh24:mi:ss'), 0, 1);
insert into T_POST (p_id, p_sid, p_uid, p_title, p_content, p_jpgadd, p_posttime, p_replycount, p_clickcount, p_modifytime, p_essence, p_top)
values ('107', '44', 'SPIHXH85RD66XWMJVLP6AC0WSOCIHCYD', '�⾩�Լ�һ����ռ3����λ���һ�����Щ��λ���Լ�����', 'ֻ����ǰ��ʱ��Ϊ������ս��2��Ʊ��������ߣ��⾩������ս��2����Ҳ����ͣ�����ȫ����ʮ������֮�����ر�������·�ݻ���������ȥ��һ���⾩���ˣ������᲻�Ǹ����ѡ���෴���صĻ������ܼ�����æµ����Ӱ��' || chr(10) || '' || chr(10) || ' ' || chr(10) || '' || chr(10) || 'ֻ��������һ�����µ�æµ�������⾩�������Ҳ��ʼ�Բ����ˣ�����Ϣ�����ʱ���������ź����������Ͼ�����˯�� ', null, to_date('13-09-2017 10:36:48', 'dd-mm-yyyy hh24:mi:ss'), 7, 0, to_date('13-09-2017 10:36:48', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into T_POST (p_id, p_sid, p_uid, p_title, p_content, p_jpgadd, p_posttime, p_replycount, p_clickcount, p_modifytime, p_essence, p_top)
values ('941587A173AE48D18E8D01148E739CC3', '43', 'F4D674CE4D2140F198EDF1A3B4FA0CDD', 'hello world', 'ѧ��java hello world ������ܾúܾúܾ���', null, to_date('17-09-2017 12:41:12', 'dd-mm-yyyy hh24:mi:ss'), 1, 0, to_date('17-09-2017 12:41:52', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into T_POST (p_id, p_sid, p_uid, p_title, p_content, p_jpgadd, p_posttime, p_replycount, p_clickcount, p_modifytime, p_essence, p_top)
values ('105', '44', 'RMLWN9ZDY7I1MHQYYXVCMDI5AOYZBDTW', '��������տ���ߣ���������� ����ȫ��ʮָ����', '�����������¼�ơ����ִ�Ӫ���������ѱ��Ϸ������������ɳĳ�տ���ߣ�����������㡣����һ·ʮָ���ۣ�����������Ű����', null, to_date('13-09-2017 10:36:48', 'dd-mm-yyyy hh24:mi:ss'), 2, 0, to_date('13-09-2017 10:36:48', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into T_POST (p_id, p_sid, p_uid, p_title, p_content, p_jpgadd, p_posttime, p_replycount, p_clickcount, p_modifytime, p_essence, p_top)
values ('104', '44', 'SW6HA4XOSVL62QKGKCOFSFY7202XZLNX', '��˼��Ž��򸾶���ǣ�� �ź��������������ȿɰ�', '�Ž���΢��ɹ�������Ż�˼��һ��μ�ĳ�����Ƭ����Ƭ�У�����ǣ��������˼��촽���ޣ������źߴ�����������������裬ʮ�ֿɰ���', null, to_date('13-09-2017 10:36:48', 'dd-mm-yyyy hh24:mi:ss'), 0, 0, to_date('13-09-2017 10:36:48', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into T_POST (p_id, p_sid, p_uid, p_title, p_content, p_jpgadd, p_posttime, p_replycount, p_clickcount, p_modifytime, p_essence, p_top)
values ('103', '43', 'K1FMFZ221OFTUS0BI2W72WN1CBE4WL6A', 'LPL�������������Ķ�S7�ھ� ���ѣ�����������ڣ�', 'OMG����ADC˾�����������㲻���Դǣ���������ǿ���ĸ�����������������������ڣ��Ǹ��������ܵĴ����ν�OMG�������ı�Ե���أ���ȻOMG�˴�û��ɱ����������������Ҳ����ΪLPL�����е�һԱ���ԡ��������������սS7��', null, to_date('13-09-2017 10:36:48', 'dd-mm-yyyy hh24:mi:ss'), 1, 0, to_date('18-09-2017 09:39:42', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into T_POST (p_id, p_sid, p_uid, p_title, p_content, p_jpgadd, p_posttime, p_replycount, p_clickcount, p_modifytime, p_essence, p_top)
values ('102', '43', '360FF0F5F7F6422F99DF5617B5C0C72E', '���϶��㸴�������������ɵ������ǲ��ҽ��͸�������', '' || chr(10) || '������Ϸ > �����Ѷ > ����ҳ' || chr(10) || '���϶��㸴�������������ɵ������ǲ��ҽ��͸�������' || chr(10) || '2017-09-12 11:45:19   ��Դ��������Ϸ' || chr(10) || '' || chr(10) || '��Һã�������������Ϸ����������С�ܡ�����һ���µ������־����������䶨��---�����ڶ��㸴���ˡ��ӱ����Ͽ���ֱ�����������ɺܸߣ����ж����������˵ľͲ��ö�֪�ˣ�����С����ֱ���䣬��û�������ܽ���ͣ����һ���϶��ڽ���ҷ��ԣ��⹤��Ҳ�����۵ġ�', null, to_date('13-09-2017 10:36:48', 'dd-mm-yyyy hh24:mi:ss'), 0, 0, to_date('13-09-2017 10:36:48', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into T_POST (p_id, p_sid, p_uid, p_title, p_content, p_jpgadd, p_posttime, p_replycount, p_clickcount, p_modifytime, p_essence, p_top)
values ('101', '43', 'S1NUXKFKRGS1UNLPIELR9G1574A2396V', '����ʦ���ı���Ϸʷ����һ������ľ��ǿ��ֻ�������Ϸ', '����ֵ����ʦ��ϵ����Ϸ����ʮ���꣬����CDPR�Լҷ��ˡ��ϼһ�������Ƶ����ף��������Ϸ��վarhn.euҲ������һ�������2��Сʱ�ļ�¼Ƭ�����ء���ʦ��ԭ���ı���Ϸ����ʷ���ⲿ��Ϊ�����ǣ�������ʦ����ʷ����Bia?y Wilk: Historia komputerowego Wied?mina���ļ�¼ƬΪ������������Ӣ����Ļ������������ҿ��Ե��ǰ���͹ܲ鿴���ڴ������ȼ�Ҫ���ܽ�һ�¼�¼Ƭ����Ȥ�����ݡ�', null, to_date('13-09-2017 10:36:48', 'dd-mm-yyyy hh24:mi:ss'), 0, 0, to_date('13-09-2017 10:36:48', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into T_POST (p_id, p_sid, p_uid, p_title, p_content, p_jpgadd, p_posttime, p_replycount, p_clickcount, p_modifytime, p_essence, p_top)
values ('100', '43', '65A5E3FBEF4F4210B968370289B227F9', '�Ա�������Ϸ���������¹涨 ��������Ʒ��ǿ���¼�', '�Ա���Ϸ�������ۼ���¹湫����Ϊ�淶��Ϸ����г��ľ�Ӫ�����������׼��Ҫ���Ա���������Ȩ�棬���Ͼ�Ӫ�淶�����ݡ��������г�����涨����������Ϸ�����������ľ�Ӫ��ȡ����Ӧ�ľ�Ӫ���֤��', null, to_date('13-09-2017 10:36:48', 'dd-mm-yyyy hh24:mi:ss'), 2, 0, to_date('13-09-2017 10:36:48', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into T_POST (p_id, p_sid, p_uid, p_title, p_content, p_jpgadd, p_posttime, p_replycount, p_clickcount, p_modifytime, p_essence, p_top)
values ('98', '42', '2549A196799C4AEB80B4E55624B6A774', 'iPhone X��ƻ���ĵ߸����¾���ð��������', '��Ȼ�����������൱��ʵ����������������Ӳ����������һֱ�ڵȴ�������ѹ���ϷiPhone X��������������ǰ��Ľ�����Щ�߳���', null, to_date('13-09-2017 10:36:48', 'dd-mm-yyyy hh24:mi:ss'), 2, 0, to_date('15-09-2017 14:33:28', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into T_POST (p_id, p_sid, p_uid, p_title, p_content, p_jpgadd, p_posttime, p_replycount, p_clickcount, p_modifytime, p_essence, p_top)
values ('96', '42', 'S1NUXKFKRGS1UNLPIELR9G1574A2396V', '����Note8��д��S Pen���飺�ڿƼ�������', 'һֱ������S Pen������Noteϵ�����������㡣' || chr(10) || '' || chr(10) || '������Ӳ������棬����Galaxy Note8��S Pen��д�ʲ�û�кܴ���������Ͼ�����ȥ����Ѿ���Noteϵ��S Pen��д�ʵ�ѹ����������4096������Ҫ֪������һ�����Ѿ�Զ����������ֻ���������Ҫ��', null, to_date('13-09-2017 10:36:48', 'dd-mm-yyyy hh24:mi:ss'), 2, 0, to_date('13-09-2017 10:36:48', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into T_POST (p_id, p_sid, p_uid, p_title, p_content, p_jpgadd, p_posttime, p_replycount, p_clickcount, p_modifytime, p_essence, p_top)
values ('5BF9EC6356534FDBBE92255C2EC35590', '43', '64085BFEC9B64FBE8F069C8A80E5BA1D', 'Ů������ϲ���������������������ط����ᰮ���㣡', '' || chr(13) || '' || chr(10) || '1.��ͷɱ' || chr(13) || '' || chr(10) || '��ͷɱ��ʱ���ǳ���Ҫ��һ��Ҫ���ںͶԷ�����' || chr(13) || '' || chr(10) || 'Ц���ɵĻ����£�ͻȻͣ�������Է���ͷ������' || chr(13) || '' || chr(10) || '����Ů�������Լ����ܳ谮������Ҫ����Ļ���' || chr(13) || '' || chr(10) || 'Ů�˶�ϲ�����˳��ţ�Ҳ��ϲ��˳�ӣ���������' || chr(13) || '' || chr(10) || 'һ��Ҫͨ���ʵ�����ͷ����Ů�˶���Թ�������', '/upload/post\/6/f\5512017D99A1450DB8D6E93158A4F5EB.jpg', to_date('18-09-2017 09:29:48', 'dd-mm-yyyy hh24:mi:ss'), 8, 0, to_date('18-09-2017 09:34:52', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into T_POST (p_id, p_sid, p_uid, p_title, p_content, p_jpgadd, p_posttime, p_replycount, p_clickcount, p_modifytime, p_essence, p_top)
values ('49', '42', 'fjwuxoqp9385nvjd827wysh46xysizms', ' ��������4���£�������Զ�ֲ����� Ѿͷ���ϲ��Է���', '��������4���£�������Զ�ֲ�������~~һ������20���~~    ������ʷ�����һ����������' || chr(10) || '  ��һ����ÿ���糿�ĵ�һ���¾��Ǵ���ˮ����һ���µĵ���ˮ(���������)����ˮ�����峦�� ' || chr(10) || '������100����ˮ��ˮ������0.9�ˣ�������ˮ���Ա���Ƥ������ʹƤ����ã����������������û�и����á� ' || chr(10) || '���Ϻ�һ������ˮ,�������ͨ���� ' || chr(10) || '����������ˮ���Բ���ˮ�ֺ͵���ʣ������컹��Ԥ����� ' || chr(10) || '' || chr(10) || '', null, to_date('08-09-2017 23:58:23', 'dd-mm-yyyy hh24:mi:ss'), 2, 0, to_date('08-09-2017 23:58:23', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into T_POST (p_id, p_sid, p_uid, p_title, p_content, p_jpgadd, p_posttime, p_replycount, p_clickcount, p_modifytime, p_essence, p_top)
values ('64B9A33A2A6C4563A00075695AB986D7', '61', '9525058C8459421DA4E025B8D5398872', '����������', '������������������С�м�', null, to_date('18-09-2017 09:27:39', 'dd-mm-yyyy hh24:mi:ss'), 0, 0, to_date('18-09-2017 09:27:39', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into T_POST (p_id, p_sid, p_uid, p_title, p_content, p_jpgadd, p_posttime, p_replycount, p_clickcount, p_modifytime, p_essence, p_top)
values ('BECB60823E1042B8BECAD7C01BF5CA4A', '43', '9525058C8459421DA4E025B8D5398872', '���������淨', '�ܵ���˵�����Ҹ������ú��Ҹ���', null, to_date('18-09-2017 09:31:52', 'dd-mm-yyyy hh24:mi:ss'), 0, 0, to_date('18-09-2017 09:31:52', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into T_POST (p_id, p_sid, p_uid, p_title, p_content, p_jpgadd, p_posttime, p_replycount, p_clickcount, p_modifytime, p_essence, p_top)
values ('74', '42', 'D5E8F4BF725E4CFC89CC9DB5F59A09AC', '��ý��iPhone 8�ۼ�̫�� �й�����������̶Ȳ���', '���ֻ����۸ߴ�1000��Ԫ����߶˵�iPhone 7 Plus����800��Ԫ������ʦ��Ϊ��������ߣ�������������������̫��Ӱ�죬�������й��ɲ��������ģ�1000��Ԫ�൱���й���ƽ���¹��ʵ�2����' || chr(10) || '' || chr(10) || '����Counterpoint�ṩ��������ʾ�������������㣬2015��iPhone���й��ķݶ�ԼΪ14%������1-6�½�����9%����Ȼ2014��iPhone 6�񱩷�һ��ϯ���й��������Դ�֮���й��˶��»��ķ�Ӧ�º��˺ܶࡣ', null, to_date('12-09-2017 18:09:29', 'dd-mm-yyyy hh24:mi:ss'), 8, 0, to_date('17-09-2017 12:59:57', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into T_POST (p_id, p_sid, p_uid, p_title, p_content, p_jpgadd, p_posttime, p_replycount, p_clickcount, p_modifytime, p_essence, p_top)
values ('75', '43', 'K1FMFZ221OFTUS0BI2W72WN1CBE4WL6A', 'ս��2��ʦ���Ρ���֮��2��ˬս����д��Ѫ����', 'ս��������9��15��13��00���̰���������2017����������Ρ���֮��2����ʽӭ��������ɾ�����ԣ������ս��2��ʦ��һ�����Ե��ٴ����ܼ����Ϸ�����������ʱ������ܡ�ˬս���ĺ�����Ϸ���飡����Ϸ�з������У���Ϊ��һ����˰�������ɱ����ս�ȴ����淨�־�����������Ϸ����֮ǰ����ע���᳹��ˬս����Ϸ������ڣ�����֮��2��ˬս�Ź�����ļ��Ա����Ը��ս��2��ʦһ����дһ�������Լ�����Ѫ�뼤��ʷʫ��', null, to_date('12-09-2017 18:09:29', 'dd-mm-yyyy hh24:mi:ss'), 3, 0, to_date('12-09-2017 18:09:29', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into T_POST (p_id, p_sid, p_uid, p_title, p_content, p_jpgadd, p_posttime, p_replycount, p_clickcount, p_modifytime, p_essence, p_top)
values ('76', '44', 'SPIHXH85RD66XWMJVLP6AC0WSOCIHCYD', '�̲�������ҹ�״�ֱ�� ���Ѵ������пɰ��ӵ���', '��Լ����ʱ��9��12���賿2��3�㣬�̲������������״�ֱ������������ڲμ�ŦԼʱװ�ܣ���˺͹�����ʱ��ⳡֱ�����ں��٣���Լֻ��200���ˣ��������ۡ�����о������������µ���ʶ���������������������Ϊ���ɰ���ը�� ���Ľӵ�����', null, to_date('12-09-2017 18:09:29', 'dd-mm-yyyy hh24:mi:ss'), 0, 0, to_date('12-09-2017 18:09:29', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into T_POST (p_id, p_sid, p_uid, p_title, p_content, p_jpgadd, p_posttime, p_replycount, p_clickcount, p_modifytime, p_essence, p_top)
values ('78', '44', '65A5E3FBEF4F4210B968370289B227F9', '����-����Ů��ҹ�ú����լ �����˻�Ӧ�����Ѽ�������', '��������Ѷ ���գ���ý���ĵ�����[΢��]�ɻ���������Իص�ס������Ϥ����¥��ÿƽ�׾�����11�����ϡ�����8�����ң�ĳ��������Ů��ҹ�����ã��������������绰������δ����ã�����ɫT��������ñ�ӣ������д��ĺ�����¥Ϊ��Ů�ӿ��š���6Сʱ���賿���㣬��Ů���ٶ����������뿪��Ԣ���Ʒ����������㣬æ�����ڵ���������ɫ��æ��', null, to_date('12-09-2017 18:09:29', 'dd-mm-yyyy hh24:mi:ss'), 5, 0, to_date('12-09-2017 18:09:29', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into T_POST (p_id, p_sid, p_uid, p_title, p_content, p_jpgadd, p_posttime, p_replycount, p_clickcount, p_modifytime, p_essence, p_top)
values ('79', '43', '360FF0F5F7F6422F99DF5617B5C0C72E', 'LOL���ż������� ������ǿ������ս����', '���ŸĶ���Ŀ������ϲ����һӢ�۵�����ܴ���ḻ��Ȥ�Ĳ��������������ǿ���ɶʱ���š���������ȱ��һЩ�ܹ����ż����Ļ��ᣬ�����ⷽ��Ҳ���ǿ��ͬʱ��Ӣ����֪�ϣ�Ŀǰ�ļ���û�кܺõĴ������λӢ�۵����ԣ���˹ٷ������������µļ��ܣ����Ķ����У���������1V1����ս���и������۵ı��֡�', null, to_date('12-09-2017 18:09:29', 'dd-mm-yyyy hh24:mi:ss'), 0, 0, to_date('12-09-2017 18:09:29', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into T_POST (p_id, p_sid, p_uid, p_title, p_content, p_jpgadd, p_posttime, p_replycount, p_clickcount, p_modifytime, p_essence, p_top)
values ('80', '44', 'GK9YOYJK7ZYAFRJUXAJZ8YLC4ETFU90Y', '���Ǻ�����!������ɹŮ����Ϊ��������', '9��12�գ���������΢����ɹ��һ��Ů��СŴ�׵Ļ����������ģ���ÿ��������ף�������һλ��Ŷ��յ�С��Ů~�������ѡ�Ŵ���������ݣ����տ��֡��������Ҳת������������΢���������Ͱ��ģ��������ϴ������˲��͵Ĵ��ԡ�', null, to_date('12-09-2017 18:09:29', 'dd-mm-yyyy hh24:mi:ss'), 2, 0, to_date('12-09-2017 18:09:29', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into T_POST (p_id, p_sid, p_uid, p_title, p_content, p_jpgadd, p_posttime, p_replycount, p_clickcount, p_modifytime, p_essence, p_top)
values ('81', '43', 'fjwuxwwp9385nvjd827ccch46xysizms', '�˶��ռӵ½��١��籩Ӣ�ۡ� ��Ƥ���½���������', '��Ϊһλ�ᴩ��ħ������III���͡�ħ�����硷�������ڡ�¯ʯ��˵����Ҳ������Ӱ��֪����ɫ���˶��ռӵ¿�ν������һ����ѩ��ҵ��黳������������ڴ�֮�£��������˶��ռӵ�������ʽ����ʱ����Ŧ����Ӧ���ڰ�����֮�����ٻ�������Ӯȡ��ʱ������ͬʱ������ȵ���������֮������������Ʒ��֮���ߣ������������һ������������°汾��Щʲô�����ݡ�', null, to_date('12-09-2017 18:09:29', 'dd-mm-yyyy hh24:mi:ss'), 2, 0, to_date('12-09-2017 18:09:29', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into T_POST (p_id, p_sid, p_uid, p_title, p_content, p_jpgadd, p_posttime, p_replycount, p_clickcount, p_modifytime, p_essence, p_top)
values ('82', '43', '6G56PDKMCYIO501O2H2ADMZUAMAOM2GP', '������ҫ�İ������ �޶�Ƥ���г�һƬ����', '���죨9.12�����������������ˡ��ع�Ͽ�ȵĴ󶼶��������ܺ����Ըı�ܶ࣬�������Ӿ�Ч��Ҳ���ˡ��������˽��޶�Ƥ�����氮���ϡ�����褣��ų������ܵ�ʱ������һ�Ż��棬����һƬõ�廨���İ�����褶����������Է�3�Σ��ټ���1���ܵ�Ч�����ڵ����������γ�5��2���ܵķ�ΧЧ����������Ͽ�ȳ���һƬ��������ֱ�����ˡ�С���Ѿ���������Ϸ��ֻ�뿴������', null, to_date('12-09-2017 18:10:00', 'dd-mm-yyyy hh24:mi:ss'), 0, 0, to_date('12-09-2017 18:10:00', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into T_POST (p_id, p_sid, p_uid, p_title, p_content, p_jpgadd, p_posttime, p_replycount, p_clickcount, p_modifytime, p_essence, p_top)
values ('83', '43', 'K1FMFZ221OFTUS0BI2W72WN1CBE4WL6A', '��ѧ������ ������ʦ����ʾ���Ĵ���������', '1.��������ǲ���ƽ�ģ����˵�һ����Ǵ�ľ��������һ�ٳ�������SR��û��������' || chr(10) || '2.����Ϊ��������ǹ�ƽ�ģ���Ҷ�����������ʵ����ˣ��ڿ������Ļ�����˼�RMB��ҿ���ÿ�������ǧ�ϰٴλ��ᡣ' || chr(10) || '3.��ֵ��������������ʦ�������һ�������ġ�ϡ�еĶ����úÿ���������칷�����̡�ͬ���ĵ���' || chr(10) || '4.�����������Զ����Ҫ����������Ϊ�������ò������㣿Ҳ���˼Ҹ�������ֻ������㵱������', null, to_date('12-09-2017 18:10:00', 'dd-mm-yyyy hh24:mi:ss'), 5, 0, to_date('12-09-2017 18:10:00', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into T_POST (p_id, p_sid, p_uid, p_title, p_content, p_jpgadd, p_posttime, p_replycount, p_clickcount, p_modifytime, p_essence, p_top)
values ('0569D75F02B9443D90A923D3776B9346', '43', 'F4B02FA5BB8742748F119E9889ED89C2', '������', '��������', null, to_date('18-09-2017 09:21:50', 'dd-mm-yyyy hh24:mi:ss'), 0, 0, to_date('18-09-2017 09:21:50', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into T_POST (p_id, p_sid, p_uid, p_title, p_content, p_jpgadd, p_posttime, p_replycount, p_clickcount, p_modifytime, p_essence, p_top)
values ('081B2827EF2749938B60998DA2EA1B33', '44', 'F4D674CE4D2140F198EDF1A3B4FA0CDD', 'ϰ��ƽ����֧��ָ�Ӱ��� �����й���չǰ��', '���¡�Э������ɫ�����š�����ķ�չ������������ˡ�ʮ���塱��������ʱ���ҹ��ķ�չ˼·����չ���򡢷�չ�����㣬�ǹ�ȫ�֡��ܸ������ܳ�Զ�ĵ���' || chr(13) || '' || chr(10) || '' || chr(13) || '' || chr(10) || '', '/upload/post\/c/c\E23961369BC74594B475CABFB05FEE83.jpg', to_date('18-09-2017 09:10:40', 'dd-mm-yyyy hh24:mi:ss'), 0, 0, to_date('18-09-2017 09:10:40', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into T_POST (p_id, p_sid, p_uid, p_title, p_content, p_jpgadd, p_posttime, p_replycount, p_clickcount, p_modifytime, p_essence, p_top)
values ('53', '42', 'fjwuxoqp9385nvjd827wysh46xysizms', '��Ϊ���й�����5G���� ˢ��ҵ���Ƶ��ֵ��¼', '��Ϊ��IMT-2020 (5G)�ƽ���ĺ��ĳ�Ա֮һ����Ϊ����Ϊ���������ס���Ϊ���ڻ����ⳡ����7��5G���Ի�վ��30���5G�����նˣ����ģ�ⳡ���Ի����ѻ����γɡ���ȥ��ȥ������ĵ�һ�׶β����Լ�����6��IMT-2020(5G)���ڶ��׶β��Գɹ��㱨�У���Ϊ�����������ز������ݲ�ȡ�����Ƚ������Ϊ���ٽ����������й�5G�����з��������ٴ��Ѽ���', null, to_date('11-09-2017 11:05:51', 'dd-mm-yyyy hh24:mi:ss'), 1, 0, to_date('11-09-2017 11:05:51', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into T_POST (p_id, p_sid, p_uid, p_title, p_content, p_jpgadd, p_posttime, p_replycount, p_clickcount, p_modifytime, p_essence, p_top)
values ('54', '43', 'fjwuxoqp9385nvjd827wysh46xysizms', '��������Ϸ���ұ����ܷ��֣�����ô�ɣ��Ų����Ҵ���', '���ܣ������������˾��ǿ��ҵģ����������Ҹ�˵�����Ҽ�һ����һ������', null, to_date('11-09-2017 14:21:50', 'dd-mm-yyyy hh24:mi:ss'), 0, 0, to_date('11-09-2017 14:21:50', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into T_POST (p_id, p_sid, p_uid, p_title, p_content, p_jpgadd, p_posttime, p_replycount, p_clickcount, p_modifytime, p_essence, p_top)
values ('55', '43', 'fjwuxoqp9385nvjd827wysh46xysizms', '2017Ӣ�������޼�ϵ�����������ݹ���', '�޼�ϵ�����ǡ�Ӣ�����ˡ���2017���Ƴ���һ��ȫ�¿�����������£������ȫ��ͬ�����Ķ���ͨ�������������ɱ��������˴�֮��ľ�Թ����7��3����7��9�վ�����ǰ��һ�ܵļ�������������й�LPL�����޶Կ�����������NA LCS��ŷ���Կ�������������TCL�������Կ�����������CBLOL�������Կ��������ձ�LJL��̫ƽ��Կ������ֱ�Ӯ���˸�������Կ����Ĺھ�������', null, to_date('11-09-2017 14:24:04', 'dd-mm-yyyy hh24:mi:ss'), 2, 0, to_date('11-09-2017 14:24:04', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
insert into T_POST (p_id, p_sid, p_uid, p_title, p_content, p_jpgadd, p_posttime, p_replycount, p_clickcount, p_modifytime, p_essence, p_top)
values ('CBC285E4AF6F48CF95B46A44A1E0BDC2', '44', '64085BFEC9B64FBE8F069C8A80E5BA1D', '����Ī��ҹֱ����Ϊ����������������ŭˢ200��', '����' || chr(13) || '' || chr(10) || '���ܲԡ��������' || chr(13) || '' || chr(10) || '�Ϸ��ķ�������' || chr(13) || '' || chr(10) || '�����ǣ�' || chr(13) || '' || chr(10) || '���£�Ұ������' || chr(13) || '' || chr(10) || '��������Ҿ�' || chr(13) || '' || chr(10) || '��з����' || chr(13) || '' || chr(10) || '��������' || chr(13) || '' || chr(10) || '������ᣬ����' || chr(13) || '' || chr(10) || '���������һ�ɶ���Ӣ��������' || chr(13) || '' || chr(10) || '���Ѳ�������Ƥ��' || chr(13) || '' || chr(10) || '���������Ұ��²�������Ƥ��' || chr(13) || '' || chr(10) || '����С��������˵����! ����С�����Ҵ���һ' || chr(13) || '' || chr(10) || 'Щ���µ�ֱ��Ȧ�������Ȥ��ϣ�����ϲ����' || chr(13) || '' || chr(10) || 'ţ' || chr(13) || '' || chr(10) || '����Ī����˵�ǵ�����𱬵�Ů����֮һ�ˣ���' || chr(13) || '' || chr(10) || '��Ů��������˵���������е����������Ů����' || chr(13) || '' || chr(10) || '�ˣ�����˵�Ƿǳ��вŻ��ˣ������������Ī��' || chr(13) || '' || chr(10) || 'ȥ��Ҳ�������Ƿǳ��Ĺ�ע��' || chr(13) || '' || chr(10) || '', '/upload/post\/7/1\F0CE1A4C8CD04F56A1DD69B1E4CFED38.jpg', to_date('18-09-2017 09:41:26', 'dd-mm-yyyy hh24:mi:ss'), 2, 0, to_date('18-09-2017 09:43:37', 'dd-mm-yyyy hh24:mi:ss'), 0, 0);
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
values ('110A6189123B447794651825A0B443B6', 'E86BAAEC6E1F4622A45E2244BAC894F6', 'F4D674CE4D2140F198EDF1A3B4FA0CDD', '������������', null, to_date('18-09-2017 09:21:40', 'dd-mm-yyyy hh24:mi:ss'), '9525058C8459421DA4E025B8D5398872', 1);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('681B484ED19F45BE8BB95581F4E6BF1B', '9FD67D92CC764D0BA437689EF811F2DD', '8FD249A2984B45AFA171DE8A2F36BB22', '�ǵ�  �ǵ� ��������������������������', '/upload/reply\/5/e\77DFEE0828B74331858641BFCB1660DD.jpg', to_date('18-09-2017 09:21:00', 'dd-mm-yyyy hh24:mi:ss'), '9525058C8459421DA4E025B8D5398872', 1);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('B4FAA62192904AEF982D1192CCE59909', '98', 'fjwuxwwp9385nvjd827ccch46xysizms', '�����Ϳ' || chr(13) || '' || chr(10) || '' || chr(13) || '' || chr(10) || '', null, to_date('14-09-2017 14:50:05', 'dd-mm-yyyy hh24:mi:ss'), '2549A196799C4AEB80B4E55624B6A774', 0);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('6DBD3E80344345D18171AE360CB3E33F', '107', 'fjwuxwwp9385nvjd827ccch46xysizms', '�ٶȷ��ͷ�', null, to_date('14-09-2017 14:51:51', 'dd-mm-yyyy hh24:mi:ss'), 'YXW9AH9C6FFNNGTO2J2TWNAGXSNNZ9Q3', 0);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('9B788B014AC04E60A4DD9600C25C8913', '9FD67D92CC764D0BA437689EF811F2DD', 'fjwuxwwp9385nvjd827ccch46xysizms', '��ʵ���Ǹ���Ƥ', '/upload/reply\/7/1\E95B317D85384CFAA3985B0B361410A4.jpg', to_date('18-09-2017 09:21:02', 'dd-mm-yyyy hh24:mi:ss'), '9525058C8459421DA4E025B8D5398872', 1);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('FC24B29B83F5413A80A73BA96661D0BC', '83', 'fjwuxwwp9385nvjd827ccch46xysizms', '��������������������������������������', null, to_date('14-09-2017 15:02:16', 'dd-mm-yyyy hh24:mi:ss'), 'K1FMFZ221OFTUS0BI2W72WN1CBE4WL6A', 0);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('7E2A51C2C500461CBD0DE9A435B588EA', '9FD67D92CC764D0BA437689EF811F2DD', '9525058C8459421DA4E025B8D5398872', '������������������', '/upload/reply\/8/6\7E01676EB6E74BE2A8FD3BA328825B62.jpg', to_date('18-09-2017 09:22:10', 'dd-mm-yyyy hh24:mi:ss'), '9525058C8459421DA4E025B8D5398872', 1);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('1E98B22883984F34915B9294509DE670', '9FD67D92CC764D0BA437689EF811F2DD', '9525058C8459421DA4E025B8D5398872', '�Ǹ���˿��������', null, to_date('18-09-2017 09:24:23', 'dd-mm-yyyy hh24:mi:ss'), 'fjwuxwwp9385nvjd827ccch46xysizms', 1);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('7DD562D84C9C4EDE8324C57D05AE4FC8', '5BF9EC6356534FDBBE92255C2EC35590', 'F4B02FA5BB8742748F119E9889ED89C2', '¥��˵�ú�', null, to_date('18-09-2017 09:30:10', 'dd-mm-yyyy hh24:mi:ss'), '64085BFEC9B64FBE8F069C8A80E5BA1D', 0);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('3F529092D0B94368B79F2650D6C61715', '5BF9EC6356534FDBBE92255C2EC35590', 'F4B02FA5BB8742748F119E9889ED89C2', 'һ¥��Զ��¥����', null, to_date('18-09-2017 09:33:26', 'dd-mm-yyyy hh24:mi:ss'), '64085BFEC9B64FBE8F069C8A80E5BA1D', 0);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('102', '55', '2549A196799C4AEB80B4E55624B6A774', '��������', null, to_date('13-09-2017 15:43:34', 'dd-mm-yyyy hh24:mi:ss'), 'GK9YOYJK7ZYAFRJUXAJZ8YLC4ETFU90Y', 1);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('2A642A85A19C4C528BC673A0B7095E40', '96', 'fjwuxwwp9385nvjd827ccch46xysizms', 'ѽѽѽ', '/upload/reply\/f/d\9EED52FB32C94F818632A748CA6722B5.jpg', to_date('15-09-2017 15:04:10', 'dd-mm-yyyy hh24:mi:ss'), 'S1NUXKFKRGS1UNLPIELR9G1574A2396V', 0);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('109', '75', '2549A196799C4AEB80B4E55624B6A774', '��ҺӶ���ɫ�ķ�', null, to_date('13-09-2017 15:43:34', 'dd-mm-yyyy hh24:mi:ss'), 'fjwuxoqp9385nvjd827wysh46xysizms', 1);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('DFE6E5DE50464363BED7E6E34BD7981F', '74', 'fjwuxwwp9385nvjd827ccch46xysizms', '�����ĸ�λ��������', '/upload/reply\/5/4\BD7E217F64B546EABFD2F3E311DCA2C1.jpg', to_date('15-09-2017 15:06:01', 'dd-mm-yyyy hh24:mi:ss'), 'D5E8F4BF725E4CFC89CC9DB5F59A09AC', 0);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('116', '78', '5W4454EEDSFGR5D8DS2C5DQQ5WHJ6SD8', '���ƴ�����', null, to_date('13-09-2017 15:43:34', 'dd-mm-yyyy hh24:mi:ss'), '360FF0F5F7F6422F99DF5617B5C0C72E', 1);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('F4B6B498E4AE4F4AB39F4B3ACF43E474', '74', 'fjwuxwwp9385nvjd827ccch46xysizms', '�������', '/upload/reply\/0/2\29E2C697637C40C9BECBC0BA090275D0.jpg', to_date('15-09-2017 15:15:43', 'dd-mm-yyyy hh24:mi:ss'), 'D5E8F4BF725E4CFC89CC9DB5F59A09AC', 0);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('117', '83', '5W4454EEDSFGR5D8DS2C5DQQ5WHJ6SD8', '�д������뷶Χ�����ط�', null, to_date('13-09-2017 15:43:34', 'dd-mm-yyyy hh24:mi:ss'), '5W4454EEDSFGR5D8DS2C5DQQ5WHJ6SD8', 1);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('126', '98', '5W4454EEDSFGR5D8DS2C5DQQ5WHJ6SD8', '�Ϸ�ɫ������', null, to_date('13-09-2017 15:43:34', 'dd-mm-yyyy hh24:mi:ss'), 'SW6HA4XOSVL62QKGKCOFSFY7202XZLNX', 1);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('3D2FE1D41E824A699155AE145193669E', '107', 'fjwuxwwp9385nvjd827ccch46xysizms', '��������������������' || chr(13) || '' || chr(10) || '', null, to_date('14-09-2017 14:51:36', 'dd-mm-yyyy hh24:mi:ss'), 'SPIHXH85RD66XWMJVLP6AC0WSOCIHCYD', 0);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('68FF10E142BF441DA38414186EA24F06', '107', 'fjwuxwwp9385nvjd827ccch46xysizms', '���Ǹ�ɵ��', null, to_date('14-09-2017 14:53:27', 'dd-mm-yyyy hh24:mi:ss'), 'SPIHXH85RD66XWMJVLP6AC0WSOCIHCYD', 0);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('94', '100', 'SPIHXH85RD66XWMJVLP6AC0WSOCIHCYD', '���ش��ʶ�', null, to_date('13-09-2017 15:43:34', 'dd-mm-yyyy hh24:mi:ss'), 'S1NUXKFKRGS1UNLPIELR9G1574A2396V', 0);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('101', '55', 'SPIHXH85RD66XWMJVLP6AC0WSOCIHCYD', '���ɷ�ɫ��Ϊ', null, to_date('13-09-2017 15:43:34', 'dd-mm-yyyy hh24:mi:ss'), 'TIX55QX9369XBH3NIWOBS427ZM2NMANK', 1);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('B79788B5C4F14D538BD8B04B087DF83E', '941587A173AE48D18E8D01148E739CC3', 'F4D674CE4D2140F198EDF1A3B4FA0CDD', 'ѧ�˸�Ƥë������', null, to_date('17-09-2017 12:41:52', 'dd-mm-yyyy hh24:mi:ss'), 'F4D674CE4D2140F198EDF1A3B4FA0CDD', 1);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('110', '75', 'SW6HA4XOSVL62QKGKCOFSFY7202XZLNX', '��˹�ٷ�˹�ٷҹ��ʷ�', null, to_date('13-09-2017 15:43:34', 'dd-mm-yyyy hh24:mi:ss'), '2549A196799C4AEB80B4E55624B6A774', 0);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('108', '74', 'SW6HA4XOSVL62QKGKCOFSFY7202XZLNX', '���г����ʷ�', null, to_date('13-09-2017 15:43:34', 'dd-mm-yyyy hh24:mi:ss'), 'S1NUXKFKRGS1UNLPIELR9G1574A2396V', 0);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('93', '100', 'SW6HA4XOSVL62QKGKCOFSFY7202XZLNX', 'ʮ�ั', null, to_date('13-09-2017 15:43:34', 'dd-mm-yyyy hh24:mi:ss'), 'SPIHXH85RD66XWMJVLP6AC0WSOCIHCYD', 1);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('95', '105', 'YXW9AH9C6FFNNGTO2J2TWNAGXSNNZ9Q3', 'ʮ�ั�������߳�', null, to_date('13-09-2017 15:43:34', 'dd-mm-yyyy hh24:mi:ss'), '2549A196799C4AEB80B4E55624B6A774', 1);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('97', '107', 'YXW9AH9C6FFNNGTO2J2TWNAGXSNNZ9Q3', '��V�ʹ���ɫ', null, to_date('13-09-2017 15:43:34', 'dd-mm-yyyy hh24:mi:ss'), '360FF0F5F7F6422F99DF5617B5C0C72E', 1);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('96', '105', 'YXW9AH9C6FFNNGTO2J2TWNAGXSNNZ9Q3', '�߳�VR��ʮ�ั', null, to_date('13-09-2017 15:43:34', 'dd-mm-yyyy hh24:mi:ss'), 'S1NUXKFKRGS1UNLPIELR9G1574A2396V', 1);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('115', '78', 'YXW9AH9C6FFNNGTO2J2TWNAGXSNNZ9Q3', '���ϵ�λ�ǵж���', null, to_date('13-09-2017 15:43:34', 'dd-mm-yyyy hh24:mi:ss'), '65A5E3FBEF4F4210B968370289B227F9', 1);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('F3B6F917AECF4178B6E938857DC70F5E', '107', 'fjwuxwwp9385nvjd827ccch46xysizms', '��������������������' || chr(13) || '' || chr(10) || '', null, to_date('14-09-2017 14:51:18', 'dd-mm-yyyy hh24:mi:ss'), 'SPIHXH85RD66XWMJVLP6AC0WSOCIHCYD', 0);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('7525E5BA123347FE8637C5C00E424B14', '107', 'fjwuxwwp9385nvjd827ccch46xysizms', '��Ӱ��զ�ģ�������ͦ��', null, to_date('14-09-2017 14:54:00', 'dd-mm-yyyy hh24:mi:ss'), 'SPIHXH85RD66XWMJVLP6AC0WSOCIHCYD', 0);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('04B46ACA15754A1EB875D1E91EF73BBC', '107', 'fjwuxwwp9385nvjd827ccch46xysizms', '�����Ĺ���ܾ�', null, to_date('14-09-2017 14:54:15', 'dd-mm-yyyy hh24:mi:ss'), 'SPIHXH85RD66XWMJVLP6AC0WSOCIHCYD', 0);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('0DC6556D583B48F8B68ECF5C1A2DD459', '83', 'fjwuxwwp9385nvjd827ccch46xysizms', '����ʱ��', null, to_date('14-09-2017 15:02:42', 'dd-mm-yyyy hh24:mi:ss'), '5W4454EEDSFGR5D8DS2C5DQQ5WHJ6SD8', 0);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('54CA20153A814917B6F39C03546CBEE4', '83', 'fjwuxwwp9385nvjd827ccch46xysizms', '�����˾', null, to_date('14-09-2017 15:03:03', 'dd-mm-yyyy hh24:mi:ss'), 'GK9YOYJK7ZYAFRJUXAJZ8YLC4ETFU90Y', 0);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('A9CCB24D9F5C47EABCE8BB02FEC00539', '5BF9EC6356534FDBBE92255C2EC35590', 'F4B02FA5BB8742748F119E9889ED89C2', '������û' || chr(13) || '' || chr(10) || '', null, to_date('18-09-2017 09:30:49', 'dd-mm-yyyy hh24:mi:ss'), '64085BFEC9B64FBE8F069C8A80E5BA1D', 0);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('92', '78', 'K1FMFZ221OFTUS0BI2W72WN1CBE4WL6A', 'Ȩ��̫���������ʵ�', null, to_date('12-09-2017 18:18:09', 'dd-mm-yyyy hh24:mi:ss'), 'TIX55QX9369XBH3NIWOBS427ZM2NMANK', 0);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('85', '83', 'GK9YOYJK7ZYAFRJUXAJZ8YLC4ETFU90Y', 'as�Ļ�ͼԱ', null, to_date('12-09-2017 18:18:09', 'dd-mm-yyyy hh24:mi:ss'), 'S1NUXKFKRGS1UNLPIELR9G1574A2396V', 0);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('70', '53', 'fjwuxwwp9385nvjd827ccch46xysizms', '�����', null, to_date('11-09-2017 15:59:29', 'dd-mm-yyyy hh24:mi:ss'), 'fjwuxoqp9385nvjd827wysh46xysizms', 1);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('51', '49', 'fjwuxoqp9385nvjd827wysh46xysizms', '�ҿ�������', null, to_date('11-09-2017 15:59:29', 'dd-mm-yyyy hh24:mi:ss'), 'fjwuxoqp9385nvjd827wysh46xysizms', 1);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('91', '74', 'S65VYYCF0PPRKW6RL0YNAMX1QY1AZ0WQ', '���񶼸���ɶ��ѽ', null, to_date('12-09-2017 18:18:09', 'dd-mm-yyyy hh24:mi:ss'), 'RMLWN9ZDY7I1MHQYYXVCMDI5AOYZBDTW', 0);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('9AA8CA97AFE34F0DAB20256984EBA995', '5BF9EC6356534FDBBE92255C2EC35590', '64085BFEC9B64FBE8F069C8A80E5BA1D', '2.����ɱ' || chr(13) || '' || chr(10) || '����ɱ����ͷ�����ܣ���ֻ�������˵Ķ�����' || chr(13) || '' || chr(10) || '��' || chr(13) || '' || chr(10) || '���Է����ݳ�һ���źţ�' || chr(13) || '' || chr(10) || '��ܿɰ����Һ�ϲ��' || chr(13) || '' || chr(10) || '�㡣Ů�˵�����Ů�������Ĳ��֣����˲�����' || chr(13) || '' || chr(10) || '��Ҫͨ������������͡�' || chr(13) || '' || chr(10) || 'Ҫͨ������������', '/upload/reply\/3/a\73C4A99C28314F50951FB07DA55929ED.jpg', to_date('18-09-2017 09:32:51', 'dd-mm-yyyy hh24:mi:ss'), '64085BFEC9B64FBE8F069C8A80E5BA1D', 0);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('83', '53', 'K1FMFZ221OFTUS0BI2W72WN1CBE4WL6A', '��i7wefh', null, to_date('12-09-2017 18:18:09', 'dd-mm-yyyy hh24:mi:ss'), '65A5E3FBEF4F4210B968370289B227F9', 1);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('82', '79', 'TIX55QX9369XBH3NIWOBS427ZM2NMANK', '���񶼸�', null, to_date('12-09-2017 18:18:09', 'dd-mm-yyyy hh24:mi:ss'), 'RMLWN9ZDY7I1MHQYYXVCMDI5AOYZBDTW', 0);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('81', '81', 'S1NUXKFKRGS1UNLPIELR9G1574A2396V', 'ǧ���˹����緢��', null, to_date('12-09-2017 18:18:09', 'dd-mm-yyyy hh24:mi:ss'), 'K1FMFZ221OFTUS0BI2W72WN1CBE4WL6A', 0);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('86F85EF3F1EE49EB80F8CAB98DF58EB3', '74', 'fjwuxwwp9385nvjd827ccch46xysizms', '2312431�ǵ�������', '/upload/reply\/f/d\0262475A2597485A9E8C8D4C15B67C02.jpg', to_date('15-09-2017 15:15:33', 'dd-mm-yyyy hh24:mi:ss'), 'D5E8F4BF725E4CFC89CC9DB5F59A09AC', 0);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('79', '81', '65A5E3FBEF4F4210B968370289B227F9', '����˹��(��o��)����', null, to_date('12-09-2017 18:18:09', 'dd-mm-yyyy hh24:mi:ss'), 'K1FMFZ221OFTUS0BI2W72WN1CBE4WL6A', 0);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('65DA5C9DC8CD4C4CA2749B5B69D8C7E8', '5BF9EC6356534FDBBE92255C2EC35590', 'F4B02FA5BB8742748F119E9889ED89C2', '����������', null, to_date('18-09-2017 09:30:58', 'dd-mm-yyyy hh24:mi:ss'), '64085BFEC9B64FBE8F069C8A80E5BA1D', 0);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('77', '75', 'TIX55QX9369XBH3NIWOBS427ZM2NMANK', '���г��յ�����', null, to_date('12-09-2017 18:18:09', 'dd-mm-yyyy hh24:mi:ss'), 'K1FMFZ221OFTUS0BI2W72WN1CBE4WL6A', 0);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('8C38DB75829F4895A6084CAC08C51CFC', '5BF9EC6356534FDBBE92255C2EC35590', 'F4B02FA5BB8742748F119E9889ED89C2', '3.ǣ��ɱ' || chr(13) || '' || chr(10) || '���е�Ů���ӣ�����ǣ�ֶ���һ���λð��׷' || chr(13) || '' || chr(10) || '��ǣ�������Ǻ�Ů��ȷ�������ķ�ʽ��ֻ�е�' || chr(13) || '' || chr(10) || '', null, to_date('18-09-2017 09:33:05', 'dd-mm-yyyy hh24:mi:ss'), '64085BFEC9B64FBE8F069C8A80E5BA1D', 0);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('75', '78', 'D5E8F4BF725E4CFC89CC9DB5F59A09AC', 'ǧ�����̸����ӷ�� ', null, to_date('12-09-2017 18:18:09', 'dd-mm-yyyy hh24:mi:ss'), 'SPIHXH85RD66XWMJVLP6AC0WSOCIHCYD', 0);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('74', '80', 'D5E8F4BF725E4CFC89CC9DB5F59A09AC', 'asdasd��ο', null, to_date('12-09-2017 18:18:09', 'dd-mm-yyyy hh24:mi:ss'), '65A5E3FBEF4F4210B968370289B227F9', 1);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('73', '49', 'TIX55QX9369XBH3NIWOBS427ZM2NMANK', '���߳�ֵС�ʵ� ', null, to_date('12-09-2017 18:18:09', 'dd-mm-yyyy hh24:mi:ss'), 'S65VYYCF0PPRKW6RL0YNAMX1QY1AZ0WQ', 1);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('72', '80', 'TIX55QX9369XBH3NIWOBS427ZM2NMANK', 'asdasd�������ڲ�', null, to_date('12-09-2017 18:18:09', 'dd-mm-yyyy hh24:mi:ss'), 'S1NUXKFKRGS1UNLPIELR9G1574A2396V', 0);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('71', '78', '65A5E3FBEF4F4210B968370289B227F9', 'as�����ʱ��', null, to_date('12-09-2017 18:18:09', 'dd-mm-yyyy hh24:mi:ss'), 'RMLWN9ZDY7I1MHQYYXVCMDI5AOYZBDTW', 0);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('9256320BCE3343AF8A1D2F7651F12AE5', 'CBC285E4AF6F48CF95B46A44A1E0BDC2', 'F4B02FA5BB8742748F119E9889ED89C2', '�Ҳ���', null, to_date('18-09-2017 09:43:37', 'dd-mm-yyyy hh24:mi:ss'), '64085BFEC9B64FBE8F069C8A80E5BA1D', 0);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('B32ED2A71BB041EE873A2C694E06BE7D', '9FD67D92CC764D0BA437689EF811F2DD', '9525058C8459421DA4E025B8D5398872', '---  ----' || chr(13) || '' || chr(10) || '    o', '/upload/reply\/b/7\ECC41121BE7443FC90F31250B9382B7B.jpg', to_date('18-09-2017 09:33:11', 'dd-mm-yyyy hh24:mi:ss'), '9525058C8459421DA4E025B8D5398872', 1);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('53ACC08C365A453CB28AC2A2901A7AC8', '74', 'fjwuxwwp9385nvjd827ccch46xysizms', '222121', '/upload/reply\/f/d\D948A427C15B49829534732DDEC543FB.jpg', to_date('15-09-2017 14:55:03', 'dd-mm-yyyy hh24:mi:ss'), 'D5E8F4BF725E4CFC89CC9DB5F59A09AC', 0);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('19E234EE792D4A5CA86C6B1807E0EF6B', '96', 'fjwuxwwp9385nvjd827ccch46xysizms', '�޴�debug������', '/upload/reply\/0/2\40BAD094E58E4ED08CA9A5184FEF3392.jpg', to_date('15-09-2017 15:11:08', 'dd-mm-yyyy hh24:mi:ss'), 'S1NUXKFKRGS1UNLPIELR9G1574A2396V', 0);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('6F1E1082086E4833A4A5789F7AEF99A8', '9FD67D92CC764D0BA437689EF811F2DD', 'fjwuxwwp9385nvjd827ccch46xysizms', '666', '/upload/reply\/8/4\E638EFE226124A9A860E9E4508F049B8.jpg', to_date('18-09-2017 09:26:24', 'dd-mm-yyyy hh24:mi:ss'), '9525058C8459421DA4E025B8D5398872', 1);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('0E10805E4623428B9509026AE0D3BDF5', '5BF9EC6356534FDBBE92255C2EC35590', 'F4B02FA5BB8742748F119E9889ED89C2', '�ܲ���������', null, to_date('18-09-2017 09:31:14', 'dd-mm-yyyy hh24:mi:ss'), '64085BFEC9B64FBE8F069C8A80E5BA1D', 0);
insert into T_REPLY (r_id, r_pid, r_uid, r_content, r_jpgadd, r_replytime, r_buid, r_status)
values ('937CD4545061496D85336F1BE762EB56', '5BF9EC6356534FDBBE92255C2EC35590', 'F4B02FA5BB8742748F119E9889ED89C2', '����', null, to_date('18-09-2017 09:34:52', 'dd-mm-yyyy hh24:mi:ss'), '64085BFEC9B64FBE8F069C8A80E5BA1D', 0);
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
