program mocniny;

var x,n,pomocne,vysledek,volba:integer;

begin
  volba := 1;
  while volba = 1 do
  begin
  writeln('Program na pocitani mocnin');
  write('Zadejte prosim cislo: ');
  readln(x);
  write('Zadejte prosim exponent ');
  readln(n);
  vysledek := x;
    for pomocne := 1 to n-1 do
      begin
        vysledek := vysledek * x;
      end;
  writeln('vas vysledek je ',vysledek);
  writeln('Chcete se vratit na zacatek?');
  write('[1] ANO / [2] NE');
  readln(volba);
  end;

end.