%%Written and debugged: Anvita Patel, Harika Matta, Anagha Chavan, Raghavi Raghuraman,
%%Vaani Shukla
%%Group 12 - Spring 2015

function [a]=train_stock_class

clear

%% load train data 
stocktraindata

%% construct 'spider' SVM input data
d = data([X1; X2; X3; X4], [Y1; Y2; Y3; Y4]);

%% do classification  setting the SVM parameters and training
k  = kernel('rbf',5);
a1 = one_vs_rest(svm({k}));
s  = group({a1 ,knn(k),knn('k=3')});
a  = cv(s,'folds=5'); %%folds = 10
[r a] = train(a,d);

clear X1 X2 X3 X4 X5 X6 X7 Y1 Y2 Y3 Y4 Y5 Y6 Y7 d

end