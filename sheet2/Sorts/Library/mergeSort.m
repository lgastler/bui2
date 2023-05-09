function [ sortedVector ] = mergeSort( unsortedVector ) 
    vectorSize = length ( unsortedVector );
    if vectorSize <= 1
        sortedVector = unsortedVector;
        return
    else
        middle = floor( vectorSize / 2 );
        left = unsortedVector(1:middle);
        right = unsortedVector(middle+1:vectorSize);

        leftSorted = mergeSort(left);
        rightSorted = mergeSort(right);
        sortedVector = merge(leftSorted, rightSorted);
    end
end