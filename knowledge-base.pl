% Student exercise profile

% Only for the WEB editor

/*
:- set_prolog_flag(occurs_check, error).        % disallow cyclic terms
:- set_prolog_stack(global, limit(8 000 000)).  % limit term space (8Mb)
:- set_prolog_stack(local,  limit(2 000 000)).  % limit environment space
*/

% Your program goes here


/** <examples> Your example queries go here, e.g.
?- member(X, [cat, mouse]).
*/


% Eduardo Castillo
% Final Project Proposal

% I would appreciate feedback to get 12 points in the project

% ISR (Income Tax) Calculator using SAT Official Tables

% Context: Everyone living or generating income in Mexico 
% is required by Law to pay Impuesto Sobre la Renta (ISR).

% The tax rate varies depending on the actual income, and the tax
% admin service has a defined table with income ranges to calculate
% the taxes to be paid.

% This prolog script attempts to calculate the appropiate amount
% Using the offical table and ranges by encoding them in the
% knowledeg base of the program.


% The official tables can be found here:
% https://www.elcontribuyente.mx/2020/01/tablas-isr-2020/

% I will start with the monthly rate, and will work to
% encode the daily, weekly, 15 day, and yearly rates in the project.


% I belive Prolog and logical programing is an excelent choice to perform
% this tax because the knowledege base can be change to accomodate changes
% in the law or even adapt it to different countries and juritictions


% Knowledge base
% it contains the lower limit, the upper limit, the fixed quota
% and the percentage to tax based on the difference between the
% perecived income and the lower rate.

% This does not take into account subsidies
% and fiscal incentives, it objective is to
% calculate the take home salary and how
% much tax should be witheld according to
% the law. (retencion ISR de ley)

% itax stands for Income Tax

% Knowledge based derived from the tables defined in the
% law for their respective years

% BEGIN 2017 ----------------------------------------------------------------------

% Monthly 2017
itax(0.01,496.07,0.00,1.92, monthly, 2017).
itax(496.08,4210.41,9.52,6.40, monthly, 2017).
itax(4210.42,7399.42,247.24,10.88, monthly, 2017).
itax(7399.43,8601.50,594.21,16.00, monthly, 2017).
itax(8601.51,10298.35,786.54,17.92, monthly, 2017).
itax(10298.36,20770.29,1090.61,21.36, monthly, 2017).
itax(20770.30,32736.83,3327.42,23.52, monthly, 2017).
itax(32736.84,62500.00,6141.95,30.00, monthly, 2017).
itax(62500.01,83333.33,15070.90,32.00, monthly, 2017).
itax(83333.34,250000.00,21737.57,34.00, monthly, 2017).
itax(250000.01,9999999999.99,78404.23,35.00, monthly, 2017).


% Biweekly 2017
itax(0.01,244.80,0.00,1.92,biweekly,2017).
itax(244.81,2077.50,4.65,6.40,biweekly,2017).
itax(2077.51,3651.00,121.95,10.88,biweekly,2017).
itax(3651.01,4244.10,293.25,16.00,biweekly,2017).
itax(4244.11,5081.40,388.05,17.92,biweekly,2017).
itax(5081.41,10248.45,538.20,21.36,biweekly,2017).
itax(10248.46,16153.05,1641.75,23.52,biweekly,2017).
itax(16153.06,30838.80,3030.60,30.00,biweekly,2017).
itax(30838.81,41118.45,7436.25,32.00,biweekly,2017).
itax(41118.46,123355.20,10725.75,34.00,biweekly,2017).
itax(123355.21,9999999999.99,38686.35,35.00,biweekly,2017).


% yearly 2017
itax(0.01,5952.84,0.00,1.92,yearly,2017).
itax(5952.85,50524.92,114.29,6.40,yearly,2017).
itax(50524.93,88793.04,2966.91,10.88,yearly,2017).
itax(88793.05,103218.00,7130.48,16.00,yearly,2017).
itax(103218.01,123580.20,9438.47,17.92,yearly,2017).
itax(123580.21,249243.48,13087.37,21.36,yearly,2017).
itax(249243.49,392841.96,39929.05,23.52,yearly,2017).
itax(392841.97,750000.00,73703.41,30.00,yearly,2017).
itax(750000.01,1000000.00,180850.82,32.00,yearly,2017).
itax(1000000.01,3000000.00,260850.81,34.00,yearly,2017).
itax(3000000.01,9999999999.99,940850.81,35.00,yearly,2017).


% Weekly 2017
itax(0.01,114.24,0.00,1.92,weekly,2017).
itax(114.25,969.50,2.17,6.40,weekly,2017).
itax(969.51,1703.80,56.91,10.88,weekly,2017).
itax(1703.81,1980.58,136.85,16.00,weekly,2017).
itax(1980.59,2371.32,181.09,17.92,weekly,2017).
itax(2371.33,4782.61,251.16,21.36,weekly,2017).
itax(4782.62,7538.09,766.15,23.52,weekly,2017).
itax(7538.10,14391.44,1414.28,30.00,weekly,2017).
itax(14391.45,19188.61,3470.25,32.00,weekly,2017).
itax(19188.62,57565.76,5005.35,34.00,weekly,2017).
itax(57565.77,9999999999.99,18053.63,35.00,weekly,2017).

% 10 day 2017
itax(0.01,163.20,0.00,1.92,tenday,2017).
itax(163.21,1385.00,3.10,6.40,tenday,2017).
itax(1385.01,2434.00,81.30,10.88,tenday,2017).
itax(2434.01,2829.40,195.50,16.00,tenday,2017).
itax(2829.41,3387.60,258.70,17.92,tenday,2017).
itax(3387.61,6832.30,358.80,21.36,tenday,2017).
itax(6832.31,10768.70,1094.50,23.52,tenday,2017).
itax(10768.71,20559.20,2020.40,30.00,tenday,2017).
itax(20559.21,27412.30,4957.50,32.00,tenday,2017).
itax(27412.31,82236.80,7150.50,34.00,tenday,2017).
itax(82236.81,9999999999.99,25790.90,35.00,tenday,2017).


% Daily 2017
itax(0.01,16.32,0.00,1.92,daily,2017).
itax(16.33,138.50,0.31,6.40,daily,2017).
itax(138.51,243.40,8.13,10.88,daily,2017).
itax(243.41,282.94,19.55,16.00,daily,2017).
itax(282.95,338.76,25.87,17.92,daily,2017).
itax(338.77,683.23,35.88,21.36,daily,2017).
itax(683.24,1076.87,109.45,23.52,daily,2017).
itax(1076.88,2055.92,202.04,30.00,daily,2017).
itax(2055.93,2741.23,495.75,32.00,daily,2017).
itax(2741.24,8223.68,715.05,34.00,daily,2017).
itax(8223.69,9999999999.99,2579.09,35.00,daily,2017).

% END 2017 ------------------------------------------------------------------------


% BEGIN 2018 ----------------------------------------------------------------------

% Monthly calculation
itax(0.01,578.52,0.00,1.92, monthly, 2018).
itax(578.53,4910.18,11.11,6.40, monthly, 2018).
itax(4910.19,8629.20,288.33,10.88, monthly, 2018).
itax(8629.21,10031.07,692.96,16.00, monthly, 2018).
itax(10031.08,12009.94,917.26,17.92, monthly, 2018).
itax(12009.95,24222.31,1271.87,21.36, monthly, 2018).
itax(24222.32,38177.69,3880.44,23.52, monthly, 2018).
itax(38177.70,72887.50,7162.74,30.00, monthly, 2018).
itax(72887.51,97183.33,17575.69,32.00, monthly, 2018).
itax(97183.34,291550.00,25350.35,34.00, monthly, 2018).
itax(291550.01,9999999999,91435.02,35.00, monthly, 2018).

% Weekly calculation
itax(0.01,133.21,0.00,1.92,weekly, 2018).
itax(133.22,1130.64,2.59,6.40,weekly, 2018).
itax(1130.65,1987.02,66.36,10.88,weekly, 2018).
itax(1987.03,2309.79,159.53,16.00,weekly, 2018).
itax(2309.80,2765.42,211.19,17.92,weekly, 2018).
itax(2765.43,5577.53,292.88,21.36,weekly, 2018).
itax(5577.54,8790.95,893.55,23.52,weekly, 2018).
itax(8790.96,16783.34,1649.34,30.00,weekly, 2018).
itax(16783.35,22377.74,4047.05,32.00,weekly, 2018).
itax(22377.75,67133.22,5837.23,34.00,weekly, 2018).
itax(67133.23,9999999999,21054.11,35.00,weekly, 2018).

% Daily calculation
itax(0.01,19.03,0.00,1.92,daily, 2018).
itax(19.04,161.52,0.37,6.40,daily, 2018).
itax(161.53,283.86,9.48,10.88,daily, 2018).
itax(283.87,329.97,22.79,16.00,daily, 2018).
itax(329.98,395.06,30.17,17.92,daily, 2018).
itax(395.07,796.79,41.84,21.36,daily, 2018).
itax(796.80,1255.85,127.65,23.52,daily, 2018).
itax(1255.86,2397.62,235.62,30.00,daily, 2018).
itax(2397.63,3196.82,578.15,32.00,daily, 2018).
itax(3196.83,9590.46,833.89,34.00,daily, 2018).
itax(9590.47,9999999999,3007.73,35.00,daily, 2018).

% Yearly calculation
itax(0.01,6942.20,0.00,1.92,yearly, 2018).
itax(6942.21,58922.16,133.28,6.40,yearly, 2018).
itax(58922.17,103550.44,3460.01,10.88,yearly, 2018).
itax(103550.45,120372.83,8315.57,16.00,yearly, 2018).
itax(120372.84,144119.23,11007.14,17.92,yearly, 2018).
itax(144119.24,290667.75,15262.49,21.36,yearly, 2018).
itax(290667.76,458132.29,46565.26,23.52,yearly, 2018).
itax(458132.30,874650.00,85952.92,30.00,yearly, 2018).
itax(874650.01,1166200.00,210908.23,32.00,yearly, 2018).
itax(1166200.01,3498600.00,304204.21,34.00,yearly, 2018).
itax(3498600.01,9999999999,1097220.21,35.00,yearly, 2018).


% Biweekly Calculation (Quincena)
itax(0.01,285.45,0.00,1.92, biweekly, 2018).
itax(285.46,2422.80,5.55,6.40, biweekly, 2018).
itax(2422.81,4257.90,142.20,10.88, biweekly, 2018).
itax(4257.91,4949.55,341.85,16.00, biweekly, 2018).
itax(4949.56,5925.90,452.55,17.92, biweekly, 2018).
itax(5925.91,11951.85,627.60,21.36, biweekly, 2018).
itax(11951.86,18837.75,1914.75,23.52, biweekly, 2018).
itax(18837.76,35964.30,3534.30,30.00, biweekly, 2018).
itax(35964.31,47952.30,8672.25,32.00, biweekly, 2018).
itax(47952.31,143856.90,12508.35,34.00, biweekly, 2018).
itax(143856.91,9999999999,45115.95,35.00, biweekly, 2018).

% 10 day calculation
itax(0.01,190.3,0,1.92, tenday, 2018).
itax(190.31,1615.2,3.7,6.4, tenday, 2018).
itax(1615.21,2838.6,94.8,10.88, tenday, 2018).
itax(2838.61,3299.7,227.9,16, tenday, 2018).
itax(3299.71,3950.6,301.7,17.92, tenday, 2018).
itax(3950.61,7967.9,418.4,21.36, tenday, 2018).
itax(7967.91,12558.5,1276.5,23.52, tenday, 2018).
itax(12558.51,23976.2,2356.2,30, tenday, 2018).
itax(23976.21,31968.2,5781.5,32, tenday, 2018).
itax(31968.21,95904.6,8338.9,34, tenday, 2018).
itax(95904.61,9999999999,30077.3,35, tenday, 2018).

% END 2018   ----------------------------------------------------------------------



% BEGIN 2019 ----------------------------------------------------------------------

% I just realized it is THE SAME as 2020
% Monthly calculation
itax(0.01,578.52,0.00,1.92, monthly, 2019).
itax(578.53,4910.18,11.11,6.40, monthly, 2019).
itax(4910.19,8629.20,288.33,10.88, monthly, 2019).
itax(8629.21,10031.07,692.96,16.00, monthly, 2019).
itax(10031.08,12009.94,917.26,17.92, monthly, 2019).
itax(12009.95,24222.31,1271.87,21.36, monthly, 2019).
itax(24222.32,38177.69,3880.44,23.52, monthly, 2019).
itax(38177.70,72887.50,7162.74,30.00, monthly, 2019).
itax(72887.51,97183.33,17575.69,32.00, monthly, 2019).
itax(97183.34,291550.00,25350.35,34.00, monthly, 2019).
itax(291550.01,9999999999,91435.02,35.00, monthly, 2019).

% Weekly calculation
itax(0.01,133.21,0.00,1.92,weekly, 2019).
itax(133.22,1130.64,2.59,6.40,weekly, 2019).
itax(1130.65,1987.02,66.36,10.88,weekly, 2019).
itax(1987.03,2309.79,159.53,16.00,weekly, 2019).
itax(2309.80,2765.42,211.19,17.92,weekly, 2019).
itax(2765.43,5577.53,292.88,21.36,weekly, 2019).
itax(5577.54,8790.95,893.55,23.52,weekly, 2019).
itax(8790.96,16783.34,1649.34,30.00,weekly, 2019).
itax(16783.35,22377.74,4047.05,32.00,weekly, 2019).
itax(22377.75,67133.22,5837.23,34.00,weekly, 2019).
itax(67133.23,9999999999,21054.11,35.00,weekly, 2019).

% Daily calculation
itax(0.01,19.03,0.00,1.92,daily, 2019).
itax(19.04,161.52,0.37,6.40,daily, 2019).
itax(161.53,283.86,9.48,10.88,daily, 2019).
itax(283.87,329.97,22.79,16.00,daily, 2019).
itax(329.98,395.06,30.17,17.92,daily, 2019).
itax(395.07,796.79,41.84,21.36,daily, 2019).
itax(796.80,1255.85,127.65,23.52,daily, 2019).
itax(1255.86,2397.62,235.62,30.00,daily, 2019).
itax(2397.63,3196.82,578.15,32.00,daily, 2019).
itax(3196.83,9590.46,833.89,34.00,daily, 2019).
itax(9590.47,9999999999,3007.73,35.00,daily, 2019).

% Yearly calculation
itax(0.01,6942.20,0.00,1.92,yearly, 2019).
itax(6942.21,58922.16,133.28,6.40,yearly, 2019).
itax(58922.17,103550.44,3460.01,10.88,yearly, 2019).
itax(103550.45,120372.83,8315.57,16.00,yearly, 2019).
itax(120372.84,144119.23,11007.14,17.92,yearly, 2019).
itax(144119.24,290667.75,15262.49,21.36,yearly, 2019).
itax(290667.76,458132.29,46565.26,23.52,yearly, 2019).
itax(458132.30,874650.00,85952.92,30.00,yearly, 2019).
itax(874650.01,1166200.00,210908.23,32.00,yearly, 2019).
itax(1166200.01,3498600.00,304204.21,34.00,yearly, 2019).
itax(3498600.01,9999999999,1097220.21,35.00,yearly, 2019).


% Biweekly Calculation (Quincena)
itax(0.01,285.45,0.00,1.92, biweekly, 2019).
itax(285.46,2422.80,5.55,6.40, biweekly, 2019).
itax(2422.81,4257.90,142.20,10.88, biweekly, 2019).
itax(4257.91,4949.55,341.85,16.00, biweekly, 2019).
itax(4949.56,5925.90,452.55,17.92, biweekly, 2019).
itax(5925.91,11951.85,627.60,21.36, biweekly, 2019).
itax(11951.86,18837.75,1914.75,23.52, biweekly, 2019).
itax(18837.76,35964.30,3534.30,30.00, biweekly, 2019).
itax(35964.31,47952.30,8672.25,32.00, biweekly, 2019).
itax(47952.31,143856.90,12508.35,34.00, biweekly, 2019).
itax(143856.91,9999999999,45115.95,35.00, biweekly, 2019).

% 10 day calculation
itax(0.01,190.3,0,1.92, tenday, 2019).
itax(190.31,1615.2,3.7,6.4, tenday, 2019).
itax(1615.21,2838.6,94.8,10.88, tenday, 2019).
itax(2838.61,3299.7,227.9,16, tenday, 2019).
itax(3299.71,3950.6,301.7,17.92, tenday, 2019).
itax(3950.61,7967.9,418.4,21.36, tenday, 2019).
itax(7967.91,12558.5,1276.5,23.52, tenday, 2019).
itax(12558.51,23976.2,2356.2,30, tenday, 2019).
itax(23976.21,31968.2,5781.5,32, tenday, 2019).
itax(31968.21,95904.6,8338.9,34, tenday, 2019).
itax(95904.61,9999999999,30077.3,35, tenday, 2019).

% END 2019   ----------------------------------------------------------------------

% BEGIN 2020 ----------------------------------------------------------------------

% Monthly calculation
itax(0.01,578.52,0.00,1.92, monthly, 2020).
itax(578.53,4910.18,11.11,6.40, monthly, 2020).
itax(4910.19,8629.20,288.33,10.88, monthly, 2020).
itax(8629.21,10031.07,692.96,16.00, monthly, 2020).
itax(10031.08,12009.94,917.26,17.92, monthly, 2020).
itax(12009.95,24222.31,1271.87,21.36, monthly, 2020).
itax(24222.32,38177.69,3880.44,23.52, monthly, 2020).
itax(38177.70,72887.50,7162.74,30.00, monthly, 2020).
itax(72887.51,97183.33,17575.69,32.00, monthly, 2020).
itax(97183.34,291550.00,25350.35,34.00, monthly, 2020).
itax(291550.01,9999999999,91435.02,35.00, monthly, 2020).

% Weekly calculation
itax(0.01,133.21,0.00,1.92,weekly, 2020).
itax(133.22,1130.64,2.59,6.40,weekly, 2020).
itax(1130.65,1987.02,66.36,10.88,weekly, 2020).
itax(1987.03,2309.79,159.53,16.00,weekly, 2020).
itax(2309.80,2765.42,211.19,17.92,weekly, 2020).
itax(2765.43,5577.53,292.88,21.36,weekly, 2020).
itax(5577.54,8790.95,893.55,23.52,weekly, 2020).
itax(8790.96,16783.34,1649.34,30.00,weekly, 2020).
itax(16783.35,22377.74,4047.05,32.00,weekly, 2020).
itax(22377.75,67133.22,5837.23,34.00,weekly, 2020).
itax(67133.23,9999999999,21054.11,35.00,weekly, 2020).

% Daily calculation
itax(0.01,19.03,0.00,1.92,daily, 2020).
itax(19.04,161.52,0.37,6.40,daily, 2020).
itax(161.53,283.86,9.48,10.88,daily, 2020).
itax(283.87,329.97,22.79,16.00,daily, 2020).
itax(329.98,395.06,30.17,17.92,daily, 2020).
itax(395.07,796.79,41.84,21.36,daily, 2020).
itax(796.80,1255.85,127.65,23.52,daily, 2020).
itax(1255.86,2397.62,235.62,30.00,daily, 2020).
itax(2397.63,3196.82,578.15,32.00,daily, 2020).
itax(3196.83,9590.46,833.89,34.00,daily, 2020).
itax(9590.47,9999999999,3007.73,35.00,daily, 2020).

% Yearly calculation
itax(0.01,6942.20,0.00,1.92,yearly, 2020).
itax(6942.21,58922.16,133.28,6.40,yearly, 2020).
itax(58922.17,103550.44,3460.01,10.88,yearly, 2020).
itax(103550.45,120372.83,8315.57,16.00,yearly, 2020).
itax(120372.84,144119.23,11007.14,17.92,yearly, 2020).
itax(144119.24,290667.75,15262.49,21.36,yearly, 2020).
itax(290667.76,458132.29,46565.26,23.52,yearly, 2020).
itax(458132.30,874650.00,85952.92,30.00,yearly, 2020).
itax(874650.01,1166200.00,210908.23,32.00,yearly, 2020).
itax(1166200.01,3498600.00,304204.21,34.00,yearly, 2020).
itax(3498600.01,9999999999,1097220.21,35.00,yearly, 2020).


% Biweekly Calculation (Quincena)
itax(0.01,285.45,0.00,1.92, biweekly, 2020).
itax(285.46,2422.80,5.55,6.40, biweekly, 2020).
itax(2422.81,4257.90,142.20,10.88, biweekly, 2020).
itax(4257.91,4949.55,341.85,16.00, biweekly, 2020).
itax(4949.56,5925.90,452.55,17.92, biweekly, 2020).
itax(5925.91,11951.85,627.60,21.36, biweekly, 2020).
itax(11951.86,18837.75,1914.75,23.52, biweekly, 2020).
itax(18837.76,35964.30,3534.30,30.00, biweekly, 2020).
itax(35964.31,47952.30,8672.25,32.00, biweekly, 2020).
itax(47952.31,143856.90,12508.35,34.00, biweekly, 2020).
itax(143856.91,9999999999,45115.95,35.00, biweekly, 2020).

% 10 day calculation
itax(0.01,190.3,0,1.92, tenday, 2020).
itax(190.31,1615.2,3.7,6.4, tenday, 2020).
itax(1615.21,2838.6,94.8,10.88, tenday, 2020).
itax(2838.61,3299.7,227.9,16, tenday, 2020).
itax(3299.71,3950.6,301.7,17.92, tenday, 2020).
itax(3950.61,7967.9,418.4,21.36, tenday, 2020).
itax(7967.91,12558.5,1276.5,23.52, tenday, 2020).
itax(12558.51,23976.2,2356.2,30, tenday, 2020).
itax(23976.21,31968.2,5781.5,32, tenday, 2020).
itax(31968.21,95904.6,8338.9,34, tenday, 2020).
itax(95904.61,9999999999,30077.3,35, tenday, 2020).

% END 2020 ----------------------------------------------------------------------

% BEGIN USA YEARLY ------------------------------------------------------------

% Put USA or Canada YEARLY here

% The United States calculates taxes differently than Mexico.
% Both countries share a Yearly Calculation with brackets and ranges.
% That is why, for the US, we will only encode the ANUAL income taxes,
% enforced by the american IRS 

% Usa Yearly Income Tax for the year 2020

%2017----------------------------------------

% Could not find brackets with fixed quota for this year

% END USA 2017 ----------------------------------------------

%2018----------------------------------------

% Could not find brackets with fixed quota for this year

% END USA 2018 ----------------------------------------------

% Beguin USA 2019----------------------------------------

itax(0.00,9700.00,0.00,10.00, usyearly, 2019).
itax(9700.01,39475.00,970,12.00, usyearly, 2019).
itax(39475.01,84200.00,4543.00,22.00, usyearly, 2019).
itax(84200.01,160725.00,14382.50,24.00, usyearly, 2019).
itax(160725.01,204100.00,32748.50,32.00, usyearly, 2019).
itax(204100.01,510300.00,46628.50,35.00, usyearly, 2019).
itax(510300.01,9999999999.99,153798.00,37.00, usyearly, 2019).

% END USA 2019 ----------------------------------------------

% Beguin USA 2020----------------------------------------
itax(0.00,9875.00,0.00,10.00, usyearly, 2020).
itax(9875.01,40125.00,987.50,12.00, usyearly, 2020).
itax(40125.01,85525.00,4617.50,22.00, usyearly, 2020).
itax(85525.01,163300.00,14605.50,24.00, usyearly, 2020).
itax(163300.01,207350.00,33271.50,32.00, usyearly, 2020).
itax(207350.01,518400.00,47367.50,35.00, usyearly, 2020).
itax(518400.01,9999999999.99,156235.00,37.00, usyearly, 2020).
% END USA 2020 ----------------------------------------------



% END USA YEARLY  ------------------------------------------------------------

% End of Knowledge Base----------------------------------------

% Predicates to be called later

% This predicate helps us query the data from the Knowledge Base
% so it can be used for further calculations
bracket_data(Income, Period,LowerLimit,Fixed, Percentage, Year) :- 
    itax(LowerLimit, UpperLimit, Fixed, Percentage, Period, Year),
    LowerLimit < Income,
    UpperLimit > Income.

% This is the entry point of the program, and it contains
% the formula to calculate the tax and the payment.
% So good Prolog can "return" multiple results in one call
payment(Income, Period, Retencion, Pay, Year) :-
    % Get the data
    bracket_data(Income, Period, LowerLimit, Fixed, Percentage, Year),
    Dif is Income - LowerLimit,
    Retencion is Fixed + Dif * Percentage/100,
    Pay is Income - Retencion.