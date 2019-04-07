-- ebridge.sql
create table countries(country_id varchar(5), country_name varchar(60), primary key (country_id));
create table provinces(country_id varchar(5), province_id varchar(5), province_name varchar(60), province_map varchar(60), primary key (country_id, province_id));
create table merchants(country_id varchar(5), province_id varchar(5), merchant_id varchar(12), merchant_name varchar(60), merchant_location varchar(60), primary key (country_id, merchant_id));
create table terminals(country_id varchar(5), province_id varchar(5), merchant_id varchar(12), terminal_id varchar(30), terminal_narrative varchar(60), terminal_location varchar(60), primary key (country_id, province_id, merchant_id, terminal_id));
create table transactions(country_id varchar(5), province_id varchar(5), merchant_id varchar(12), terminal_id varchar(30), txn_id varchar(20), mti varchar(5), txn_date bigint,txn_code varchar(12), acquirer_id varchar(20), issuer_id varchar(20), txn_amount decimal(18,2), response_code varchar(5), primary key (country_id, province_id, merchant_id, terminal_id, txn_date, txn_id));
create table users(country_id varchar(5), province_id varchar(5), merchant_id varchar(12), user_id varchar(20), user_name varchar(60), user_mobile_number varchar(20), app_registration_status varchar(20), reg_status_date bigint, primary key(country_id, province_id, merchant_id, user_id));
create table audits(country_id varchar(5), province_id varchar(5), merchant_id varchar(12), terminal_id varchar(30), audit_id bigint, audit_date bigint, audit_narrative varchar(120), primary key (country_id, province_id, merchant_id, terminal_id, audit_id));
-- countries
insert into countries(country_id, country_name) values('716', 'Zimbabwe');
insert into countries(country_id, country_name) values('710', 'South Africa');
-- provinces
insert into provinces(country_id, province_id, province_name, province_map) values('716', 'BYO'  ,'Bulawayo','zimbabwe_bulawayo.svg');
insert into provinces(country_id, province_id, province_name, province_map) values('716', 'HRE'  ,'Harare','zimbabwe_harare.svg');
insert into provinces(country_id, province_id, province_name, province_map) values('716', 'MAN'  ,'Manicaland','zimbabwe_manicaland.svg');
insert into provinces(country_id, province_id, province_name, province_map) values('716', 'MASHC','Mashonaland Central','zimbabwe_mashonaland_central.svg');
insert into provinces(country_id, province_id, province_name, province_map) values('716', 'MASHE','Mashonaland East','zimbabwe_mashonaland_east.svg');
insert into provinces(country_id, province_id, province_name, province_map) values('716', 'MWEST','Mashonaland West','zimbabwe_mashonaland_west.svg');
insert into provinces(country_id, province_id, province_name, province_map) values('716', 'MASV', 'Masvingo','zimbabwe_masvingo.svg');
insert into provinces(country_id, province_id, province_name, province_map) values('716', 'MATN', 'Matabeleland North','zimbabwe_matabeleland_north.svg');
insert into provinces(country_id, province_id, province_name, province_map) values('716', 'MATS', 'Matabeleland South','zimbabwe_matabeleland_south.svg');
insert into provinces(country_id, province_id, province_name, province_map) values('716', 'MIDL', 'Midlands','zimbabwe_midlands.svg');
-- merchants
insert into merchants(country_id, province_id, merchant_id, merchant_name, merchant_location) values ('716','HRE','1001','Merchant 1', 'Harare 1');
insert into merchants(country_id, province_id, merchant_id, merchant_name, merchant_location) values ('716','HRE','1002','Merchant 2', 'Harare 2');
insert into merchants(country_id, province_id, merchant_id, merchant_name, merchant_location) values ('716','HRE','1003','Merchant 3', 'Harare 3');
insert into merchants(country_id, province_id, merchant_id, merchant_name, merchant_location) values ('716','HRE','1004','Merchant 4', 'Harare 4');
insert into merchants(country_id, province_id, merchant_id, merchant_name, merchant_location) values ('716','HRE','1005','Merchant 5', 'Harare 5');
insert into merchants(country_id, province_id, merchant_id, merchant_name, merchant_location) values ('716','HRE','1006','Merchant 6', 'Harare 6');
insert into merchants(country_id, province_id, merchant_id, merchant_name, merchant_location) values ('716','HRE','1007','Merchant 7', 'Harare 7');
insert into merchants(country_id, province_id, merchant_id, merchant_name, merchant_location) values ('716','HRE','1008','Merchant 8', 'Harare 8');
insert into merchants(country_id, province_id, merchant_id, merchant_name, merchant_location) values ('716','HRE','1009','Merchant 9', 'Harare 9');
insert into merchants(country_id, province_id, merchant_id, merchant_name, merchant_location) values ('716','HRE','1010','Merchant 10', 'Harare 10');
insert into merchants(country_id, province_id, merchant_id, merchant_name, merchant_location) values ('716','HRE','1011','Merchant 11', 'Harare 11');
insert into merchants(country_id, province_id, merchant_id, merchant_name, merchant_location) values ('716','HRE','1012','Merchant 11', 'Harare 12');



















































