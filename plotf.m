%clc;clear all; 
feaf=[];fear=[];f=0;r=0;
%load('feature.mat');
for i=1:1000
    if(mod(i,20)==1||mod(i,20)==2||mod(i,20)==3||mod(i,20)==4||mod(i,20)==5||mod(i,20)==6||mod(i,20)==7||mod(i,20)==8 ||mod(i,20)==9||mod(i,20)==10)
        r=r+1;
        fear(r,:)=fea(i,:);
    end
    if(mod(i,20)==11||mod(i,20)==12||mod(i,20)==13||mod(i,20)==14||mod(i,20)==15||mod(i,20)==16||mod(i,20)==17||mod(i,20)==18||mod(i,20)==19||mod(i,20)==0)
        f=f+1;
        feaf(f,:)=fea(i,:);
    end
end
% for i=1:4:196
%    for j=1:5
%     max1=max(fear(i:i+3,j));
%     fear(i:i+3,j)= fear(i:i+3,j)/max1;
%     max1=max(feaf(i:i+3,j));
%     feaf(i:i+3,j)= feaf(i:i+3,j)/max1;
%    end 
% end