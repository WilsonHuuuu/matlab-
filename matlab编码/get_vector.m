function vector_new = get_vector(H)
[vector,eigenvalue] = eig(H);
[eigenvalue, index]=sort(diag(eigenvalue), 'descend');
vector_new = vector(:, index(2));
end