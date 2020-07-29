fea=[];
Name=dir('C:\Users\s2881167\Desktop\New folder (4)\dataset\Liveness code\Newdata');
for j=3:length(Name)
   name=dir(strcat('C:\Users\s2881167\Desktop\New folder (4)\dataset\Liveness code\Newdata\',Name(j).name));
    for i=3:length(name)
        I=imread(strcat('C:\Users\s2881167\Desktop\New folder (4)\dataset\Liveness code\Newdata\',Name(j).name,'\',name(i).name));
        %I1=im2bw(I);
        %seg=imread(strcat(Name(j).name,'/s',name(i).name));
        if(size(I,1)>1500)
        [ci,cp,out]=thresh(imresize(I,0.05),20,40);
        ci=ci*20;         cp=cp*20;
        a=I;
        end
        if(size(I,1)<1500)
        [ci,cp,out]=thresh(imresize(I,0.1),10,25);
        ci=ci*10;         cp=cp*10;  %a=I;
             a=imresize(I,[2448 3264]);
        end
        m=im2bw(a);
        %m=ones( size(I,1),  size(I,2));
        for k=1:1:size(a,1)
             for l=1:1:size(a,2)
                 if(((k-ci(1))*(k-ci(1))+(l-ci(2))*(l-ci(2))>ci(3)*ci(3)))
                     if(m(k,l)==0)
                          a(k,l,1:3)=0;
                     end
                     
                 end
             end
        end
       a(1:ci(1)-ci(3),:,:)=0;a(ci(1)+ci(3):size(a,1),:,:)=0;a(:,1:ci(2)-2*ci(3),:)=0; a(:,ci(2)+2*ci(3):size(a,2),:)=0;
         I=a;
        %I(:,:,1)= histeq(I(:,:,1));
%          I(:,:,2)= histeq(I(:,:,2));
%           I(:,:,3)= histeq(I(:,:,3));
        %[ci,cp,out]=thresh(I,30,60);
       % figure,imshow(out)
%         ci=ci*10;
%         cp=cp*10;
% G=graycomatrix(rgb2gray(I));
% [m n]=size(G);
%  GLCMl=0;  % left 
%  GLCMr=0; % right 
%  for x=1:m
%     for y=1:n
%         GLCMl=GLCMl+x*G(x,y);
%         GLCMr=GLCMr+y*G(x,y);
%     end
% end
%   ;,:,3      fea(((j-3)*20)+(i-2),1)= (GLCMl+GLCMr)/2; 
%I=I(:,:,3);
count=0;sm=0;
        for a=1:2448*3264
            if( I(a)>10 && I(a)<245)
                count=count+1;
                sm=sm+floor((double(I(a)))/10);
            end
        end
        fea(((j-3)*20)+(i-2),2)=sm/count;
%         fea(((j-3)*20)+(i-2),3:5)= mean(mean(I));
%         fea(((j-3)*20)+(i-2),6)=ci(3)/ size(I,2);
%         fea(((j-3)*20)+(i-2),7)=ci(3)/ size(I,2);
%         fea(((j-3)*20)+(i-2),8)=cp(3)/ size(I,1);
%         fea(((j-3)*20)+(i-2),9)=cp(3)/ size(I,1);
%--------------------------------------------------------------
%        for c=1:size(seg,2)
%            if(sum(seg(:,c))>0)
%                Sls=c;
%                break;
%            end
%        end
%        c=size(seg,2);
%        while c>1
%            if(sum(seg(:,c))>0)
%                Sle=c;
%                break;
%            end
%            c=c-1;
%        end
%        Sl=Sle-Sls;
% %------------------------------------------------------------------------------
%       fea(((j-3)*8)+(i-2),10)=Sl/2400;  
%       fea(((j-3)*8)+(i-2),11)=Sl/3200;
%       fea(((j-3)*8)+(i-2),12)=Sl/ci(3);
%       fea(((j-3)*8)+(i-2),13)=sum(sum(seg))/sum(sum(im2bw(I,graythresh(I))));
%       fea(((j-3)*8)+(i-2),14)=Sl/cp(3);
      
    end   
end