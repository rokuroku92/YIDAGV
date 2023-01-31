CREATE DATABASE `AGV`;
CREATE TABLE `analysis`( -- 建造analysis TABLE
    `analysis_id` bigint AUTO_INCREMENT PRIMARY KEY, -- 主鍵
    `year` int NOT NULL, -- 年
    `month` int NOT NULL, -- 月
    `day` int NOT NULL, -- 日
    `week` int NOT NULL, -- 星期
    `working_hours` int, -- 工作時數
    `open_hours` int, -- 開機時數
    `task` int -- 任務數
);
select DISTINCT year,month from analysis order by year, month; -- 顯示月列表
select * from analysis where year=2022 AND month=11;
select * from analysis;
drop table analysis;
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2022,11,1,2,10,14,42);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2022,11,2,3,10,14,40);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2022,11,3,4,8,14,33);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2022,11,4,5,6,14,22);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2022,11,5,6,9,14,34);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2022,11,6,7,12,14,41);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2022,11,7,1,12,14,49);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2022,11,8,2,6,14,28);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2022,11,9,3,8,14,35);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2022,11,10,4,9,14,34);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2022,11,11,5,11,14,42);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2022,11,12,6,12,14,44);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2022,11,13,7,10,14,38);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2022,11,14,1,6,14,22);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2022,11,15,2,7,14,29);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2022,11,16,3,8,14,32);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2022,11,17,4,9,14,34);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2022,11,18,5,10,14,38);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2022,11,19,6,6,14,23);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2022,11,20,7,11,14,40);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2022,11,21,1,20,14,38);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2022,11,22,2,13,14,55);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2022,11,23,3,12,14,45);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2022,11,24,4,10,14,32);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2022,11,25,5,9,14,29);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2022,11,26,6,10,14,34);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2022,11,27,7,11,14,38);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2022,11,28,1,11,14,42);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2022,11,29,2,12,14,48);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2022,11,30,3,9,14,33);

INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2022,12,1,4,10,14,42);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2022,12,2,5,10,14,40);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2022,12,3,6,8,14,33);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2022,12,4,7,6,14,22);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2022,12,5,1,9,14,34);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2022,12,6,2,12,14,41);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2022,12,7,3,12,14,49);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2022,12,8,4,6,14,28);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2022,12,9,5,8,14,35);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2022,12,10,6,9,14,34);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2022,12,11,7,11,14,42);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2022,12,12,1,12,14,44);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2022,12,13,2,10,14,38);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2022,12,14,3,6,14,22);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2022,12,15,4,7,14,29);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2022,12,16,5,8,14,32);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2022,12,17,6,9,14,34);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2022,12,18,7,10,14,38);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2022,12,19,1,6,14,23);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2022,12,20,2,11,14,40);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2022,12,21,3,10,14,38);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2022,12,22,4,13,14,55);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2022,12,23,5,12,14,45);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2022,12,24,6,10,14,32);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2022,12,25,7,9,14,29);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2022,12,26,1,10,14,34);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2022,12,27,2,11,14,38);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2022,12,28,3,11,14,42);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2022,12,29,4,12,14,48);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2022,12,30,5,9,14,33);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2022,12,31,6,11,14,40);

INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2023,1,1,7,10,14,42);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2023,1,2,1,10,14,40);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2023,1,3,2,8,14,33);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2023,1,4,3,6,14,22);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2023,1,5,4,9,14,34);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2023,1,6,5,12,14,41);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2023,1,7,6,12,14,49);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2023,1,8,7,6,14,28);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2023,1,9,1,8,14,35);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2023,1,10,2,9,14,34);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2023,1,11,3,11,14,42);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2023,1,12,4,12,14,44);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2023,1,13,5,10,14,38);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2023,1,14,6,6,14,22);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2023,1,15,7,7,14,29);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2023,1,16,1,8,14,32);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2023,1,17,2,9,14,34);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2023,1,18,3,10,14,38);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2023,1,19,4,6,14,23);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2023,1,20,5,11,14,40);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2023,1,21,6,10,14,38);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2023,1,22,7,13,14,55);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2023,1,23,1,12,14,45);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2023,1,24,2,10,14,32);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2023,1,25,3,9,14,29);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2023,1,26,4,10,14,34);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2023,1,27,5,11,14,38);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2023,1,28,6,11,14,42);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2023,1,29,7,12,14,48);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2023,1,30,1,9,14,33);
INSERT INTO `analysis`(`year`,`month`,`day`,`week`,`working_hours`,`open_hours`,`task`) VALUES(2023,1,31,2,4,14,10);
