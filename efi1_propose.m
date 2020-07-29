r=2;r1=2;dist='euclidean';a=zeros(100,2);
efi=0;efi1=0;c=1;
while c<=980
    real=(fea(c,r:r1)+fea(c+1,r:r1)+fea(c+2,r:r1)+fea(c+3,r:r1)+fea(c+4,r:r1))/5;
    forge=(fea(c+10,r:r1)+fea(c+11,r:r1)+fea(c+13,r:r1)+fea(c+14,r:r1)+fea(c+12,r:r1))/5;
    y=0;
    for i=c+5:c+9
    if( pdist2(real,fea(i,r:r1),dist)<pdist2(forge,fea(i,r:r1),dist))
        efi=efi+1;
        y=y+1;
    end
    end
    a((c+19)/20,1)=y;z=0;
    for i=c+15:c+19
    if( pdist2(real,fea(i,r:r1),dist)>=pdist2(forge,fea(i,r:r1),dist))
        efi1=efi1+1;z=z+1;
    end
    end
     a((c+19)/20,2)=z;
    c=c+20;
end