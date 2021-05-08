function printKMeansClusters(X1, X2, numberOfClusers, xlabelToUse, ylabelToUse, titleToUse, country)

    %% Find Guatemala index
    indexGuatemala = 1;
    for i = 1:length(country)
        if(isequal(country{i},'Guatemala'))
            indexGuatemala = i;
        end
    end

        
    %% Graph k-means
    rng('default')
    
    indicationMessage = ['Displaying "' titleToUse '" cluster ...'];
    disp(indicationMessage)
    
    X=[X1 X2];

    [idx,C] = kmeans(X,numberOfClusers);

    figure
    %set(gcf,'Position',[100 100 1000 700])
    gscatter(X(:,1),X(:,2),idx,'bgm')
    hold on
    plot(C(:,1),C(:,2),'kx','MarkerSize',20, 'color', 'red', 'linewidth',2)
        
    plot(X(indexGuatemala,1),X(indexGuatemala,2),'r*','MarkerSize',20,'linewidth',2)
    legend('Cluster 1','Cluster 2','Cluster 3','Cluster Centroid', 'Guatemala')
    
    xlabel(xlabelToUse);
    ylabel(ylabelToUse);
    title(titleToUse);


end

