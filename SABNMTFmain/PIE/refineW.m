function W=refineW(W,l,C)
W(1:l,1:l)=0;
for i=1:C
    W((i-1)*(l/C)+1:(i)*(l/C),(i-1)*(l/C)+1:(i)*(l/C))=1/(l/C);%1/(l/c)
end
% for i=1:C
%         W((i-1)*(l/C)+1:(i)*(l/C),(i-1)*(l/C)+1:(i)*(l/C))=repmat(sum(1:l,(i-1)*(l/C)+1:(i)*(l/C))/(l/c),l/c,1);
% end