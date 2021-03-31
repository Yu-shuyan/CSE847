function [] = plotdata(par, auc, num)
name = 'AUC for different par';
    figure('NumberTitle', 'off', 'Name', name);
    plot(par,auc);
    xlabel('par') 
    ylabel('AUC')
    title(name);
 name = 'The number of features selected for different par';
    figure('NumberTitle', 'off', 'Name', name);
    plot(par,num);
    xlabel('par') 
    ylabel('The number of features selected')
    title(name);
end

