
dataset = importdata('data131.txt');
nodes = dataset.data(:,:);
n = size(nodes,1); % numbers of node
c = 1;
s = nodes(randi([1 n]),:);
t = []; % tour
t = s; % Starting node
nodes(s(1,1),:) = []; % remove node

while c < n
    j = s;
    euclDist = inf;
    closest = inf;
    for i = 1:size(nodes,1);
        euclDist = sqrt((j(1,2)-nodes(i,2))^2+(j(1,3)-nodes(i,3))^2);
        if euclDist < closest;
            closest = euclDist;
            k = nodes(i,:);
        else
        end
    end
   t(c+1,:) = k;
   nodes(find(nodes == k(1,1),1),:) = [] ;
   j = k;
   c=c+1;
end
x=[];
y=[];
% x=[x,t(t(1,1),2)]
for i = 1:length(t)
    x=[x,t(t(i,1),2)]
    y=[y,t(t(i,1),3)]
end
 x=[x,t(t(1,1),2)]
 y=[y,t(t(1,1),3)]
 plot(x,y)
fprintf(['\n Done! \n'])