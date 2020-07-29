r=2;r1=2;dist='euclidean';
efi=0;efi1=0;c=1;real=[0];forge=[0];
while c<=20
 real1=fea(c,r:r1)+fea(c+1,r:r1)+fea(c+2,r:r1)+fea(c+3,r:r1)+fea(c+4,r:r1)+fea(c+5,r:r1)+fea(c+6,r:r1)+fea(c+7,r:r1)+fea(c+8,r:r1)+fea(c+9,r:r1);
 real=real1/10+real;
 forge1=(fea(c+10,r:r1)+fea(c+11,r:r1)+fea(c+12,r:r1)+fea(c+13,r:r1)+fea(c+14,r:r1)+fea(c+15,r:r1)+fea(c+16,r:r1)+fea(c+17,r:r1)+fea(c+18,r:r1))+fea(c+20,r:r1);
 forge=forge1/10+forge;
    c=c+20;
end
for c=491:20:980
    d=c;
    for i=d:(d+9)
    if( pdist2(real,fea(i,r:r1),dist)< pdist2(forge,fea(i,r:r1),dist))
        efi=efi+1;
    end
    end
    d=c+10;
    for i=d:(d+9)
    if( pdist2(real,fea(i,r:r1),dist)> pdist2(forge,fea(i,r:r1),dist))
        efi1=efi1+1;
    end
    end
    
end