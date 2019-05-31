function [ ysum,time] = LFPintegral(filename,nofpoint)

%this func. takes the name of the file which is gonna be plotted and 
%total number of electrods in surface
%put filename without 'dat' extension and also use apostrophe,i.e. ''
s=strcat(filename,'.dat');
temp=load(s);

%if file contains time column, remove it. 
if size(temp,2)==2
x=temp(:,2);
else
x=temp(:,1);
end

y=reshape(x,16001,nofpoint); %each point contains 16001 sample.
time=0:0.025:400; %400 ms used 0.025 sample time
ysum=sum(y,2)/nofpoint;
save ysum;

plot(time,ysum,'k','LineWidth',1)

end