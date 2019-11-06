program rocnikovka_pavel;
//LIBRARY
uses crt;
//VARIABLES
var  max,min,i,n,poc,soucet:integer;
     cisla: array [1..100] of integer;
     odchylka: array [1..100] of real;
     prum: real;
     AN:char;
     choice:byte;
//PROCEDURE

procedure LIST;
begin
     write(' ');
     for i:=1 to n do
         begin
         write(cisla[i],' | ');
         end;
         writeln;
end;

procedure INTRODUCTION;
begin
     writeln('------------------------------------------');
     writeln('    Rocnikova prace do programovani');
     writeln('  Pavel Sestak, IT2A, SSTE Olomoucka');
     writeln('------------------------------------------');
end;

procedure LOAD;
begin
     Write('Zadejte pocet cisel: ');
     readln(n);
     if n<= 0 then begin
                   writeln('Pocet prvku musi byt kladny');
                   Writeln('Chcete zadat nova cisla? A/N');
                   readln(AN);
                   if (AN = 'a') or (AN = 'A') then begin
                                                    clrscr;
                                                    INTRODUCTION;
                                                    LOAD;
                                                    end
                   end
     else begin writeln('Zadejte ',n,' cisel: ');
     for i:= 1 to n do
      begin
      readln(cisla[i]);
      soucet := soucet + cisla[i];
      end;
      clrscr;
     end;
end;

procedure MENU;
var max2:integer;
    vyskyt:byte;
begin
     writeln;
     writeln('1 - Prumer a odchylky n cisel');
     writeln('2 - Zjisteni zda je zadana posloupnost rostouci');
     writeln('3 - Zjisteni minima a maxima');
     writeln('4 - Druha nejvyssi hodnota a jeji cetnost');
     writeln('5 - Zadejte nova cisla');
     writeln('6 - Ukoncit program');
     readln(choice);
case choice of
1:
//AVERAGE
begin
     clrscr;
     INTRODUCTION;
     LIST;
     writeln;
     writeln('1 - Prumer a odchylky n cisel');
     writeln;
     prum := soucet/n;
     writeln('prumer je ',prum:0:2);
     for i:= 1 to n do
         begin
         odchylka[i] := cisla[i] - prum;
         if odchylka[i] < 0 then odchylka[i] := odchylka[i] * -1;
         writeln('Odchylka cisla ',cisla[i],' je ',odchylka[i]:0:2);
         end;
     writeln;
Writeln('Chcete se zpet vratit do menu? A/N');
readln(AN);
if (AN = 'A') or (AN = 'a') then
                            begin
                            clrscr;
                            INTRODUCTION;
                            LIST;
                            MENU;
                            end
else if (AN = 'N') OR (AN = 'n') then
else writeln('Zadali jste nespravnou volbu');
end;

2: //GROWING
begin
     clrscr;
     INTRODUCTION;
     LIST;
     poc:=1;
     for i:=1 to n do
         begin
         if cisla[i] < cisla[i+1] then poc:= poc + 1;
         end;
     if poc <> n then writeln('Posloupnost neni serazena vzestupne')
     else writeln('Posloupnost je serazena vzestupne');
     writeln;
Writeln('Chcete se zpet vratit do menu? A/N');
readln(AN);
if (AN = 'A') or (AN = 'a') then
                            begin
                            clrscr;
                            INTRODUCTION;
                            LIST;
                            MENU;
                            end
else if (AN = 'N') OR (AN = 'n') then
else writeln('Zadali jste nespravnou volbu');
end;

3: //MAXMIN
begin
     clrscr;
     INTRODUCTION;
     LIST;
     min:= cisla[1];
     max:= cisla[1];
     for i:=1 to n do
         begin
         if cisla[i] > max then max := cisla[i]
         else if cisla[i] < min then min := cisla[i]
         else;
         end;
     writeln('Nejnizsi hodnota je: ',min);
     writeln('Nejvyssi hodnota je: ',max);
    writeln;
Writeln('Chcete se zpet vratit do menu? A/N');
readln(AN);
if (AN = 'A') or (AN = 'a') then
                            begin
                            clrscr;
                            INTRODUCTION;
                            LIST;
                            MENU;
                            end
else if (AN = 'N') OR (AN = 'n') then
else writeln('Zadali jste nespravnou volbu');
  end;

4: //SECMAX
begin
     vyskyt := 0;
     max2 := cisla[1];
     max := cisla[1];
     clrscr;
     INTRODUCTION;
     LIST;
      for i:=1 to n do if cisla[i] > max then max := cisla[i];

      if max2 = max then max2 := cisla[2];
      if max2 = max then max2 := cisla[3];
      if max2 = max then max2 := cisla[4];
      for i:= 1 to n do if (cisla[i] > max2) and (cisla[i] < max) then max2 := cisla[i];

      for i:=1 to n do if cisla[i] = max2 then vyskyt := vyskyt + 1;
         if (vyskyt = n) then writeln('Nelze urcit druhe nejvyssi cislo')
         else writeln('Druhe nejvyzsi cislo je ',max2,', ktere se v dane mnozine objevilo ',vyskyt,' krat');
     writeln;
     Writeln('Chcete se zpet vratit do menu? A/N');
     readln(AN);
     if (AN = 'A') or (AN = 'a') then
                                 begin
                                 clrscr;
                                 INTRODUCTION;
                                 LIST;
                                 MENU;
                                 end
     else if (AN = 'N') OR (AN = 'n') then
     else writeln('Zadali jste nespravnou volbu');
end;
5: begin
       clrscr;
       INTRODUCTION;
       LOAD;
       if n>0 then
          begin
          INTRODUCTION;
          LIST;
          MENU;
          end
       else readln;
  end;
6:write;
  end;
end;


//MAIN
begin
     soucet := 0;
     clrscr;
     textcolor(lightgreen);
     INTRODUCTION;
     LOAD;
     if n>0 then
     begin
     INTRODUCTION;
     LIST;
     MENU;
     end
     else readln;
end.
