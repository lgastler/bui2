function  taylorSinus (N, a)
%% Taylorreihe der Sinusfunkeion 

funcVal(1) = sin(a);
funcVal(2) = cos(a);
for i = 2:N
    funcVal(i+1) = -funcVal(i-1);
end

% Legen Sie einen Vektor mit 200 gleichmäßig verteilten x-Werten an
x = linspace(a-2*pi, a+2*pi, 200);

% Legen Sie einen Null-Vektor für die y-Werte an
y = zeros(size(x));

% Zeichnen Sie die Sinusfunktion, die MATLAB zur Verfügung stellt
plot(x, sin(x), 'k', 'LineWidth', 2);

% Berechnen Sie die y-Werte für jedes einzelne Taylor-Polynom und stellen Sie dieses gra- phisch dar
color = hsv(N+1);
for i = 0:N
    y = y + (funcVal(i+1) * (x-a).^i) / factorial(i);
    plot(x, y, 'Color', color(i+1, :));
end
    
%% Visualisierung der Achsen und Entwicklungspunkt

% Enwicklungspunkt
plot(a, exp(a), 'ok');

% Achsen anzeigen
xl = xlim;
yl = ylim;    
plot ([xl(1), xl(2)], [0, 0], 'k') % x Achse
plot ([0, 0], [yl(1), yl(2)], 'k') % y Achse  
    
end

