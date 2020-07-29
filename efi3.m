r=2;r1=2;dist='jaccard';
efi=0;efi2=0;c=1;real=[0 ];forge=[0 ];
while c<196
    real=(fea(c,r:r1)+fea(c+1,r:r1))+fea(c+2,r:r1)+fea(c+3,r:r1)/4+real;
    forge=(fea(c+4,r:r1)+fea(c+5,r:r1))+fea(c+6,r:r1)+fea(c+7,r:r1)/4+forge;
    c=c+8;
end
while c<385
    if( pdist2(real,fea(c,r:r1),dist)<= pdist2(forge,fea(c,r:r1),dist))
        efi=efi+1;
    end
    if( pdist2(real,fea(c+1,r:r1),dist)<= pdist2(forge,fea(c+1,r:r1),dist))
        efi=efi+1;
    end
    if( pdist2(real,fea(c+2,r:r1),dist)<= pdist2(forge,fea(c+2,r:r1),dist))
        efi=efi+1;
    end
    if( pdist2(real,fea(c+3,r:r1),dist)<= pdist2(forge,fea(c+3,r:r1),dist))
        efi=efi+1;
    end
    if( pdist2(real,fea(c+4,r:r1),dist)>= pdist2(forge,fea(c+4,r:r1),dist))
        efi2=efi2+1;
    end
    if( pdist2(real,fea(c+5,r:r1),dist)>= pdist2(forge,fea(c+5,r:r1),dist))
        efi2=efi2+1;
    end
    if( pdist2(real,fea(c+6,r:r1),dist)>= pdist2(forge,fea(c+6,r:r1),dist))
        efi2=efi2+1;
    end
    if( pdist2(real,fea(c+7,r:r1),dist)>= pdist2(forge,fea(c+7,r:r1),dist))
        efi2=efi2+1;
    end
    c=c+8;
end