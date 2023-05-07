function res = Fibonacci( n )

if n < 0
    error('n muss größer oder gleich 0 sein');
end

% n kleiner 2 => ergebniss zurückgeben
if n < 2
    res = n;
    return
end

a = 0;
b = 1;

% n-te zahl berechnen
for i = 2:n
    fib = a + b;
    a = b;
    b = fib;
end

res = b;

end

