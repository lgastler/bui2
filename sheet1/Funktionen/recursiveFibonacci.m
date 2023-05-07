function res = recursiveFibonacci( n )

if n < 0
    error('n muss größer oder gleich 0 sein');
end

% n kleiner 2 => ergebniss zurückgeben
if n < 2
    res = n;
    return
end

% recursiv berechnen und zurückgeben
res = recursiveFibonacci(n-1) + recursiveFibonacci(n-2);

end

