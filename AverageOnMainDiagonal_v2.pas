uses crt;

const
  N = 4;

var
  matrix: array[1..N, 1..N] of integer;
  i, j, sum: integer;
  average: real;

begin
  randomize;
  
  // Заповнення масиву випадковими числами від -100 до 100
  for i := 1 to N do
  begin
    for j := 1 to N do
    begin
      matrix[i, j] := random(-100, 100); 
      write(matrix[i, j]:5);
    end;
    writeln;
  end;

  sum := 0;
  // Обчислення суми елементів головної діагоналі
  for i := 1 to N do
    sum := sum + matrix[i, i];

  average := sum / N;

  writeln;
  writeln('Середнє арифметичне: ', average:0:2);
  
  write('Натисніть будь-яку клавішу для виходу...');
  readkey;
end.
