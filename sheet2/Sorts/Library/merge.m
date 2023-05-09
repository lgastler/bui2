function [ merged ] = merge( left, right )
    merged = zeros( length( left ) + length( right ), 1);
    leftIdx = 1;
    rightIdx = 1;
    mergedIdx = 1;

    while leftIdx <= length( left ) && rightIdx <= length( right )
        if left(leftIdx) <= right(rightIdx)
            merged(mergedIdx) = left(leftIdx);
            leftIdx = leftIdx + 1;
        else
            merged(mergedIdx) = right(rightIdx);
            rightIdx = rightIdx + 1;
        end
        mergedIdx = mergedIdx + 1;
    end
    
    while leftIdx <= length( left )
        merged(mergedIdx) = left(leftIdx);
        leftIdx = leftIdx + 1;
        mergedIdx = mergedIdx + 1;
    end
    
    while rightIdx <= length( right )
        merged(mergedIdx) = right(rightIdx);
        rightIdx = rightIdx + 1;
        mergedIdx = mergedIdx + 1;
    end
end