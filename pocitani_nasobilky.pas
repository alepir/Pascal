program n2;

var cislo,nasobek:integer;

begin
  writeln('program na pocitani nasobilky');
  write('Zadejte cislo u ktereho chcete vypsat nasobilku ' );
  readln(nasobek);
  cislo := 0;
    while (cislo < 10000) do
      begin
      write(cislo);
      cislo := cislo + nasobek;
      readln();
      end;
end.