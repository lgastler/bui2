addpath(genpath('../Library')); % Unterordner hinzufügen

vectorAmount = 4000;

vectorLengths = round(logspace(0, 4, vectorAmount)); % random vektoren länge erstellen
vectors = cell(1, 40); % vectoren erstellen
for i = 1:vectorAmount
    vectors{i} = rand(1, vectorLengths(i)); % Zufallsvektoren "füllen"
end

bubbleSortTimes = zeros(1, 40); 
mergeSortTimes = zeros(1, 40);
for i = 1:vectorAmount
    % bubbleSort messen
    tic;
    bubbleSort(vectors{i}); 
    bubbleSortTimes(i) = toc;
    
    % mergeSort messen
    tic;
    mergeSort(vectors{i});
    mergeSortTimes(i) = toc;
end

loglog(vectorLengths, bubbleSortTimes, 'bo', vectorLengths, mergeSortTimes, 'rx');
xlabel('Länge');
ylabel('Zeit (s)');
legend('Bubble Sort', 'Merge Sort');

%{
Da die ergebnisse mittels loglog logarithmisch dargestellt werden sind die
linearen Messwerte für den Merge Sort und die fast konstanten Ergebnisse
für den Bubble sort zu erwarten. Da der Merge Sort logarithmisch wächst,
wohingegen der im vergleich zum quadratischen Wachstum vom Bubble Sort.
%}