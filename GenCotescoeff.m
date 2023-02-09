function q = GenCotescoeff(degree)
q = 0:degree;
m = fliplr(vander(q));
b = zeros(1,degree+1);
for i = 1:degree+1
    b(i) = degree^(i)/(i);
end
b = b.';
a = m.' \ b / degree;
disp(a)
end