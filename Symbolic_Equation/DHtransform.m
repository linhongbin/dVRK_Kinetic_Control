function T = DHtransform(theta,d,a,alpha,method)
%take in four standard DH parameters between two consecutive frames and 
%return 4x4 homogeneous intermediate transformation matrix between
%the links
if(method == 'Standard')
    T = transl(d,'z')*rot(theta,'z')*transl(a,'x')*rot(alpha,'x');
elseif(method == 'Modified')
    T = transl(a,'x')*rot(alpha,'x')*transl(d,'z')*rot(theta,'z');
end
for r=1:4
    for c=1:4
        if isa(T(r,c), 'sym')
        elseif abs(T(r,c))<1e-4
           T(r,c)=0;
        end
    end
end

end
