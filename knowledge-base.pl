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
% law for the year 2020

% Monthly calculation
itax(0.01,578.52,0.00,1.92, monthly).
itax(578.53,4910.18,11.11,6.40, monthly).
itax(4910.19,8629.20,288.33,10.88, monthly).
itax(8629.21,10031.07,692.96,16.00, monthly).
itax(10031.08,12009.94,917.26,17.92, monthly).
itax(12009.95,24222.31,1271.87,21.36, monthly).
itax(24222.32,38177.69,3880.44,23.52, monthly).
itax(38177.70,72887.50,7162.74,30.00, monthly).
itax(72887.51,97183.33,17575.69,32.00, monthly).
itax(97183.34,291550.00,25350.35,34.00, monthly).
itax(291550.01,9999999999,91435.02,35.00, monthly).

% Weekly calculation
itax(0.01,133.21,0.00,1.92,weekly).
itax(133.22,1130.64,2.59,6.40,weekly).
itax(1130.65,1987.02,66.36,10.88,weekly).
itax(1987.03,2309.79,159.53,16.00,weekly).
itax(2309.80,2765.42,211.19,17.92,weekly).
itax(2765.43,5577.53,292.88,21.36,weekly).
itax(5577.54,8790.95,893.55,23.52,weekly).
itax(8790.96,16783.34,1649.34,30.00,weekly).
itax(16783.35,22377.74,4047.05,32.00,weekly).
itax(22377.75,67133.22,5837.23,34.00,weekly).
itax(67133.23,9999999999,21054.11,35.00,weekly).

% Daily calculation
itax(0.01,19.03,0.00,1.92,daily).
itax(19.04,161.52,0.37,6.40,daily).
itax(161.53,283.86,9.48,10.88,daily).
itax(283.87,329.97,22.79,16.00,daily).
itax(329.98,395.06,30.17,17.92,daily).
itax(395.07,796.79,41.84,21.36,daily).
itax(796.80,1255.85,127.65,23.52,daily).
itax(1255.86,2397.62,235.62,30.00,daily).
itax(2397.63,3196.82,578.15,32.00,daily).
itax(3196.83,9590.46,833.89,34.00,daily).
itax(9590.47,9999999999,3007.73,35.00,daily).

% Yearly calculation
itax(0.01,6942.20,0.00,1.92,yearly).
itax(6942.21,58922.16,133.28,6.40,yearly).
itax(58922.17,103550.44,3460.01,10.88,yearly).
itax(103550.45,120372.83,8315.57,16.00,yearly).
itax(120372.84,144119.23,11007.14,17.92,yearly).
itax(144119.24,290667.75,15262.49,21.36,yearly).
itax(290667.76,458132.29,46565.26,23.52,yearly).
itax(458132.30,874650.00,85952.92,30.00,yearly).
itax(874650.01,1166200.00,210908.23,32.00,yearly).
itax(1166200.01,3498600.00,304204.21,34.00,yearly).
itax(3498600.01,9999999999,1097220.21,35.00,yearly).


% Biweekly Calculation (Quincena)
itax(0.01,285.45,0.00,1.92, biweekly).
itax(285.46,2422.80,5.55,6.40, biweekly).
itax(2422.81,4257.90,142.20,10.88, biweekly).
itax(4257.91,4949.55,341.85,16.00, biweekly).
itax(4949.56,5925.90,452.55,17.92, biweekly).
itax(5925.91,11951.85,627.60,21.36, biweekly).
itax(11951.86,18837.75,1914.75,23.52, biweekly).
itax(18837.76,35964.30,3534.30,30.00, biweekly).
itax(35964.31,47952.30,8672.25,32.00, biweekly).
itax(47952.31,143856.90,12508.35,34.00, biweekly).
itax(143856.91,9999999999,45115.95,35.00, biweekly).

% 10 day calculation
itax(0.01,190.3,0,1.92, tenday).
itax(190.31,1615.2,3.7,6.4, tenday).
itax(1615.21,2838.6,94.8,10.88, tenday).
itax(2838.61,3299.7,227.9,16, tenday).
itax(3299.71,3950.6,301.7,17.92, tenday).
itax(3950.61,7967.9,418.4,21.36, tenday).
itax(7967.91,12558.5,1276.5,23.52, tenday).
itax(12558.51,23976.2,2356.2,30, tenday).
itax(23976.21,31968.2,5781.5,32, tenday).
itax(31968.21,95904.6,8338.9,34, tenday).
itax(95904.61,9999999999,30077.3,35, tenday).


% Probably the American or Canadian ones here
% /Isn't it funny how about 90% of the code is just data?)



% End of Knowledge Base----------------------------------------

% Predicates to be called later

% This predicate helps us query the data from the Knowledge Base
% so it can be used for further calculations
bracket_data(Income, Period,LowerLimit,Fixed, Percentage) :- 
    itax(LowerLimit, UpperLimit, Fixed, Percentage, Period),
    LowerLimit < Income,
    UpperLimit > Income.

% This is the entry point of the program, and it contains
% the formula to calculate the tax and the payment.
% So good Prolog can "return" multiple results in one call
payment(Income, Period, Retencion, Pay) :-
    % Get the data
    bracket_data(Income, Period, LowerLimit, Fixed, Percentage),
    Dif is Income - LowerLimit,
    Retencion is Fixed + Dif * Percentage/100,
    Pay is Income - Retencion.