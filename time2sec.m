function [ output ] = time2sec( input )
%function time2sec
%converts time to second easily
%useful for time-stamping in program code
%for estimation of execution time in a program
%and for algorithm performance analysis and optimization
%input: standard time after applying fix function
%output: equivalent time in seconds
%applicable range for input: days, hours, minutes, seconds
%zero coefficient for year, month

%{
application example:
t1 = fix(clock)
t1 =
        2015           1          23          17          55          37
t2 = fix(clock)
t2 =
        2015           1          23          17          55          43
ts1 = time2sec(t1)
ts1 =
     2051737
ts2 = time2sec(t2)
ts2 =
     2051743
texec = ts2 - ts1
texec =
     6
%}
    output = sum(input .* [0 0 24*3600 3600 60 1]);
end
