%%Written and debugged: Anvita Patel, Harika Matta, Anagha Chavan, Raghavi Raghuraman,
%%Vaani Shukla
%%Group 12 - Spring 2015


function [n]=test_stock_class(x,a)

%% @brief  Routine to classify a new data sample using the SVM algorithm 
%%         trained with 'train_svm_class'.
%%
     dtest = data(x);
     rtest = test(a, dtest);

     i = 1;
     while( rtest.X(1,i) == -1 )
          i = i + 1;
     end
     n = i;

     clear dtest rtest i
end
