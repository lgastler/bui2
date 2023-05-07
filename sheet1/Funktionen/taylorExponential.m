function  taylorExponential (N, a)
%% Taylorreihe der Exponentialfunktion 

% Legen Sie einen Vektor mit 200 gleichmäßig verteilten x-Werten an
x = linspace(a-5, a+5, 200);

% Legen Sie einen Null-Vektor für die y-Werte an.
y = zeros(size(x));

% Zeichnen Sie die Exponentialfunktion
plot(x, exp(x), 'k', 'LineWidth', 2);

% Berechnen Sie die y-Werte für jedes einzelne Taylor-Polynom und stellen Sie dieses graphisch dar.
color = hsv(N+1);
for i = 0:N
    y = y + (exp(a) * (x-a).^i) / factorial(i);
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

