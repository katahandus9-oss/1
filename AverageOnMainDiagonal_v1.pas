uses crt;

const
  N = 4;

var
  arr: array[1..N, 1..N] of integer;
  i, j, sum: integer;
  average: real;

begin
  randomize;
  for i := 1 to N do
  begin
    for j := 1 to N do
    begin
      arr[i, j] := random(1, 50);
      write(arr[i, j]:4);
    end;
    writeln;
  end;

  sum := 0;
  for i := 1 to N do
    sum := sum + arr[i, i];

  average := sum / N;

  writeln;
  writeln(average:0:2);
  
  write('Press any key to exit...');
  readkey;
end.
