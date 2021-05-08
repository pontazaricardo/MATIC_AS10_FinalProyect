function printDendrogramDim01(X, xlabelToUse, ylabelToUse, titleToUse, country)

    rng('default')
    
    indicationMessage = ['Displaying "' titleToUse '" dendrogram ...'];
    disp(indicationMessage)
    
    X1 = X;
    figure
    Y1 = pdist(X1); % size = combination(165,2) porque hay 165 paises
    squareform(Y1);
    Z1 = linkage(Y1);
    [h1,nodes1,orig1] = dendrogram(Z1,0);
    set(gca, 'XTickLabel', country(orig1));
    xlabel(xlabelToUse);
    ylabel(ylabelToUse);
    xtickangle(90);

    % color Guatemala
    xticklabels1 = get(gca,'XTickLabel');
    ticklabels_new1 = cell(size(xticklabels1));
    for i = 1:length(xticklabels1)
        if(isequal(xticklabels1{i},'Guatemala'))
            ticklabels_new1{i} = ['\color{red} ' xticklabels1{i}];
        else
            ticklabels_new1{i} = ['\color{black} ' xticklabels1{i}];
        end
    end
    set(gca, 'XTickLabel', ticklabels_new1);
    title(titleToUse);

end

