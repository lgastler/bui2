function [ sortedVector ] = bubbleSort( unsortedVector) 
    n = size( unsortedVector );
    sortedVector = unsortedVector;
    for i = n:-1:2
        for j = 1:i-1
            if sortedVector(j) > sortedVector(j+1)
                tmp = sortedVector(j);
                sortedVector(j) = sortedVector(j+1);
                sortedVector(j+1) = tmp;
            end
        end
    end
end