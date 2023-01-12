CREATE DATABASE `AGV`;
CREATE TABLE `analysis`( -- 建造analysis TABLE
	`analysis_id` bigint AUTO_INCREMENT PRIMARY KEY, -- 主鍵
    `year` int NOT NULL, -- 年
    `month` int NOT NULL, -- 月
    `day` int NOT NULL, -- 日
    `working_hours` int, -- 工作時數
    `open_hours` int, -- 開機時數
    `task` int -- 任務數
);
select DISTINCT year,month from analysis order by year, month; -- 顯示月列表
select * from analysis where year=2022 AND month=11;
select * from analysis;
drop table analysis;
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2022,11,1,10,14,42);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2022,11,2,10,14,40);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2022,11,3,8,14,33);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2022,11,4,6,14,22);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2022,11,5,9,14,34);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2022,11,6,12,14,41);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2022,11,7,12,14,49);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2022,11,8,6,14,28);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2022,11,9,8,14,35);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2022,11,10,9,14,34);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2022,11,11,11,14,42);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2022,11,12,12,14,44);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2022,11,13,10,14,38);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2022,11,14,6,14,22);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2022,11,15,7,14,29);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2022,11,16,8,14,32);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2022,11,17,9,14,34);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2022,11,18,10,14,38);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2022,11,19,6,14,23);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2022,11,20,11,14,40);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2022,11,21,10,14,38);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2022,11,22,13,14,55);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2022,11,23,12,14,45);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2022,11,24,10,14,32);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2022,11,25,9,14,29);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2022,11,26,10,14,34);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2022,11,27,11,14,38);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2022,11,28,11,14,42);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2022,11,29,12,14,48);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2022,11,30,9,14,33);

INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2022,12,1,10,14,42);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2022,12,2,10,14,40);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2022,12,3,8,14,33);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2022,12,4,6,14,22);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2022,12,5,9,14,34);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2022,12,6,12,14,41);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2022,12,7,12,14,49);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2022,12,8,6,14,28);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2022,12,9,8,14,35);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2022,12,10,9,14,34);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2022,12,11,11,14,42);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2022,12,12,12,14,44);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2022,12,13,10,14,38);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2022,12,14,6,14,22);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2022,12,15,7,14,29);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2022,12,16,8,14,32);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2022,12,17,9,14,34);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2022,12,18,10,14,38);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2022,12,19,6,14,23);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2022,12,20,11,14,40);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2022,12,21,10,14,38);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2022,12,22,13,14,55);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2022,12,23,12,14,45);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2022,12,24,10,14,32);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2022,12,25,9,14,29);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2022,12,26,10,14,34);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2022,12,27,11,14,38);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2022,12,28,11,14,42);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2022,12,29,12,14,48);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2022,12,30,9,14,33);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2022,12,31,11,14,40);

INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2023,1,1,10,14,42);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2023,1,2,10,14,40);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2023,1,3,8,14,33);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2023,1,4,6,14,22);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2023,1,5,9,14,34);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2023,1,6,12,14,41);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2023,1,7,12,14,49);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2023,1,8,6,14,28);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2023,1,9,8,14,35);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2023,1,10,9,14,34);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2023,1,11,11,14,42);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2023,1,12,12,14,44);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2023,1,13,10,14,38);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2023,1,14,6,14,22);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2023,1,15,7,14,29);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2023,1,16,8,14,32);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2023,1,17,9,14,34);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2023,1,18,10,14,38);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2023,1,19,6,14,23);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2023,1,20,11,14,40);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2023,1,21,10,14,38);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2023,1,22,13,14,55);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2023,1,23,12,14,45);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2023,1,24,10,14,32);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2023,1,25,9,14,29);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2023,1,26,10,14,34);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2023,1,27,11,14,38);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2023,1,28,11,14,42);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2023,1,29,12,14,48);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2023,1,30,9,14,33);
INSERT INTO `analysis`(`year`,`month`,`day`,`working_hours`,`open_hours`,`task`) VALUES(2023,1,31,4,14,10);
