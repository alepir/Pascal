program Kalkulacka;

uses crt;

var volba,pomocna,menu:byte;
    a,b,c,d,n:integer;
    delenec,delitel,podil:real;


begin
textcolor(blue);
menu := 1;
while menu = 1 do
begin
writeln('Kalkulacka');
writeln('__________________________________');
writeln();
writeln('[1] Scitani');
writeln('[2] Odcitani');
writeln('[3] Nasobeni');
writeln('[4] Deleni se zbytkem');
writeln('[5] Celociselne deleni');
writeln('[6] Mocniny');
writeln('[7] Vypis nasobilky');
writeln('[7] Ukoncit program');
writeln('__________________________________');
write('Vase volba ');
readln(volba);

If (volba = 1) then
  begin
    writeln('Scitani');
    write('Zadejte prosim prvni cislo ');
    read(a);
    write('Zadejte prosim druhe cislo ');
    read(b);
    c := a + b;
    writeln();
    writeln('Vas vysledek je ',c);
    writeln();

    writeln('Prejete se vratit do menu?');
    write('[1] ANO / [2] NE ');
    readln(menu);
  end

else if (volba = 2) then
  begin
    writeln('Odcitani');
    write('Zadejte prosim prvni cislo ');
    readln(a);
    write('Zadejte prosim druhe cislo ');
    readln(b);
    c := a-b;
    writeln();
    writeln('Vas vysledek je ',c);
    writeln();

    writeln('Prejete se vratit do menu?');
    write('[1] ANO / [2] NE ');
    readln(menu);
  end

else if (volba = 3) then
  begin
    writeln('Nasobeni');
    write('Zadejte prosim prvni cislo ');
    readln(a);
    write('Zadejte prosim druhe cislo ');
    readln(b);
    c := a * b;
    writeln();
    writeln('Vas vysledek je ',c);
    writeln();

    writeln('Prejete se vratit do menu?');
    write('[1] ANO / [2] NE ');
    readln(menu);
  end

else if (volba = 4) then
  begin
    writeln('Deleni se zbytkem');
    write('Zadejte prosim prvni cislo ');
    readln(a);
    write('Zadejte prosim druhe cislo ');
    readln(b);
    writeln();

        if (b = 0) then
         begin
           writeln('Nelze delit nulou');
           writeln('Program bude po stisknuti enter ukoncen');
           readln();
         end
       else
         begin
           c := a div b;
           d := a mod b;
           writeln();
           writeln(a,' : ',b,' = ',c,' Zb.',d);
           writeln();

    writeln('Prejete se vratit do menu?');
    write('[1] ANO / [2] NE ');
    readln(menu);
         end;
  end

else if (volba = 5) then
  begin
    writeln('Celociselne deleni');
    write('Zadejte prosim prvni cislo');
    readln(delenec);
    write('Zadejte prosim druhe cislo');
    readln(delitel);

    if (delitel = 0) then
      begin
        writeln('Nelze delit nulou');
        writeln('Prejete se vratit do menu?');
        write('[1] ANO / [2] NE ');
        readln(menu);
       end
     else
       begin
         podil := delenec / delitel;
         writeln();
         writeln(delenec:0:0,' : ',delitel:0:0,' = ',podil:0:2);
         writeln();

         writeln('Prejete se vratit do menu?');
         write('[1] ANO / [2] NE ');
          readln(menu);
       end;
  end
else if (volba = 6) then
  begin
    writeln('Pocitani mocnin');
    write ('Zadejte cislo ');
    readln(a);
    write('Zadejte exponent ');
    readln(n);

     b := a;
        for pomocna := 1 to n-1 do
          begin
          b := b * a;
          end;
    writeln();
    writeln('Vas vysledek je ',b);
    writeln();

    writeln('Prejete se vratit do menu?');
    write('[1] ANO / [2] NE ');
    readln(menu);
  end
else if (volba = 7) then
  begin
  writeln('program na pocitani nasobilky');
  write('Zadejte cislo u ktereho chcete vypsat nasobilku ' );
  readln(b);
  a := 0;
    while (a < 500) do
      begin
      write(a);
      a := a + b;
      readln();
      end;
   writeln('Prejete se vratit do menu?');
   write('[1] ANO / [2] NE ');
   readln(menu);
  end
else if (volba = 8) then
  begin
  menu := 2
  end
else
  begin
    writeln('Zadali jste spatnou moznost');
    writeln('Prejete se vratit do menu?');
    write('[1] ANO / [2] NE ');
    readln(menu);
  end;
ClrScr;
end;
end.