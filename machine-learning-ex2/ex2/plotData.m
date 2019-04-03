function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%%拿出一行，第三列如果是0的话这样打印，如果不是0的话，就这样打印
% all=[X,y];
% for i = 1:size(all,1)
%     if all(:,3) == 1
%         plot(all(:,1),all(:,2),'k+');
%     elseif all(:,3) == 0
%         plot(all(:,1),all(:,2),'ko');
%     end
% end
pos = find(y==1);
neg = find(y==0);
% plot(X(pos,1), X(pos,2),'k+','MarkerSize','7');
% plot(X(neg,1), X(neg,2),'ko','MarkerSize','7');
plot(X(pos, 1), X(pos, 2), 'k+','LineWidth',2,'Color','r');
plot(X(neg, 1), X(neg, 2), 'ko','MarkerFaceColor','g');




% =========================================================================



hold off;

end
