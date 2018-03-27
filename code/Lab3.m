filename = 'heightWeightData.txt';

Data = load(filename);

%% 1.1
% to extract data
X_men = extractData(Data,1);

figure(1)
scatter(X_men(:,1),X_men(:,2));
hold on
xlabel('height');
ylabel('weight');
title('men plot');

mean_data = mean(X_men);
std_data = cov(X_men);

% [X1,X2] = meshgrid(X_men(:,1),X_men(:,2));
% F = mvnpdf([X1(:),X2(:)],mean_data,std_data);
% F = reshape(F,size(X_men,1),size(X_men,1));
% 
% contour(X_men(:,1),X_men(:,2),F,[.0001 .001 .01 .05:.1:.95 .99 .999 .9999]);


GMModel = fitgmdist(X_men,1);


ezcontour(@(x1)pdf(GMModel,x1))
hold off