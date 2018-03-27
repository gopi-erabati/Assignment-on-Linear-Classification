function X_lab = extractData( X,label )
%this function to extract male and female data according to label

X_lab = [];

for nsub = 1:size(X,1)
    if X(nsub,1) == uint8(label)
        X_lab = [X_lab; X(nsub,2:end)];
    end
end

end

