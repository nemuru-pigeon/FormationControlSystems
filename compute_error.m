function error = compute_error(z_matrix, z_star, iteration)
    error = zeros(iteration, 1);  
    for iter = 1:iteration
        temp_error = 0;  
        for i = 1:7
            diff_x = z_matrix(i, 1, iter) - z_star(i, 1);
            diff_y = z_matrix(i, 2, iter) - z_star(i, 2);
            temp_error = temp_error + sqrt(diff_x^2 + diff_y^2);  
        end
        error(iter) = temp_error;  
    end
end
