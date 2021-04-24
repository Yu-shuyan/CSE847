function [X] = generate_data()
Category1=[normrnd(2,1,100,2)]; 
Category2=[normrnd(10,1,100,2)];
Category3=[normrnd(2,1,100,2)];
Category4=[normrnd(5,1,100,2)];
for i=1:100
    Category3(i,1)= Category3(i,1)+6;
end
for i=1:100
    Category4(i,1)= Category4(i,1)-6;
end
X=[Category1;Category2;Category3;Category4];
end

