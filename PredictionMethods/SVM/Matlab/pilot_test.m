%%Written and debugged: Anvita Patel, Harika Matta, Anagha Chavan, Raghavi Raghuraman,
%%Vaani Shukla
%%Group 12 - Spring 2015

function pilot_test(x, a,k)

     M = 4;
     cl = zeros(1, M);

     [m,n] = size(x);
     
     for i=1:m
     r = test_stock_class(x(i,:), a); %% predicting the pattern
     cl(r) = cl(r) + 1;
     end
     
     m = max(cl);    
     for i=1:M
         if( cl(i) == m )
             fprintf( 1, 'class %d\n', i );
             
             if (i ==1)
                    n='Cup and Saucer' ;
                    q = 1; %BUY
             elseif (i ==2) 
                    n='Ascending triangle';
                     q = 1; %BUY
             elseif (i ==3) 
                    n='Descending triangle';
                     q = 2;% SELL
             elseif (i ==4)   
                    n='Head and Shoulders';
                     q = 2;% SELL
             end
             
             %n=i;
             %i=M;
         end
     end
     
     if(q==1)
         result='buy';
     else
         result='sell';
     end
        
     t=', ';
     fid=fopen('C:\SVM\decision.txt','a');
     fprintf(fid,'\n');
     fprintf(fid,'%s',result,t,n);
     fclose(fid);
     
     %dlmwrite('C:\Users\anvitapatel7\Desktop\Dummy\Group5\SVM\decision.txt', n1,'-append'); %%Writing the result to a file
          
     clear M c i r m k cl
end
