%%Written and debugged: Anvita Patel, Harika Matta, Anagha Chavan, Raghavi Raghuraman,
%%Vaani Shukla
%%Group 12 - Spring 2015

clear all;
use_spider; %%initialize SPIDER
a = train_stock_class; %%Train the SVM
 
for s=1:20  %% Loop for picking up data files
    l = int2str(s);
    str = strcat('C:\SVM\h', l,'.txt');  
    q = dlmread(str);

    for w1=1:200
        q1(w1) = q(201-w1);
    end

    k=1;
    for i = 1:16:182  %% processing the data
        x(k)= sum(q1(i:i+15));
        k = k+1;
    end
    k=0;
    x = x/max(x);
    pilot_test(x,a,s);  %% function to calculate and write the result to a file.
end
exit