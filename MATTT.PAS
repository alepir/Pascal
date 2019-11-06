program RANMAT;

uses crt;

var
   mat:array[1..10,1..10] of integer;
   i,j,n:integer;
   x:char;
procedure NACTI;
begin
     write('Prejete si matici vyplnit automaticky nebo zadate hodnoty rucne? A/R: ');
     readln(x);
     if (x='a') or (x='A') then begin
                                     randomize;
                                     for i:=1 to n do
                                              for j:=1 to n do mat[i,j]:= -9 + Random(19);
                                 end
     else if (x='r') or (x='R') then for i:=1 to n do
                                         for j:=1 to n do readln(mat[i,j]);
end;

procedure VYPIS;
begin
for i:=1 to n do begin
                 writeln;
                 for j:=1 to n do write(mat[i,j]:2,' ');
                 end;
readln;
end;

procedure A;
var licha,suda:array[1..100] of integer;
    poclich,pocsud:byte;
begin
writeln;
poclich := 0;
pocsud := 0;
for i:=1 to n do
    for j:=1 to n do if odd(mat[i,j]) then begin
                                                poclich := poclich +1;
                                                licha[poclich] := mat[i,j];
                                           end
                                           else begin
                                                  pocsud := pocsud + 1;
                                                  suda[pocsud] := mat[i,j];
                                                end;

writeln('Nyni budou vypsana vsechna licha cisla: ');
for i:=1 to poclich do writeln(licha[i]);
writeln('Pokracujte stisknutim libovolne klavesy');
readln;
Clrscr;
writeln('Nyni budou vypsana vsechna suda cisla: ');
for i:= 1 to pocsud do writeln(suda[i]);
readln;
end;

procedure B;
var poc:byte;
    sou:real;

begin
poc:=0;
sou:=0;
for i:=1 to n do
    for j:=1 to n do begin
                          if mat[i,j] < 0 then begin
                                               poc:= poc + 1;
                                               sou:= sou + mat[i,j];
                                               end;

                     end;
if sou <> 0 then begin
                 sou := sou/poc;
                 writeln('Aritmeticky prumer nekladnych cisel je: ',sou:0:2);
                 end
            else writeln('Zadny nekladny prvek v matici nebyl nalezen');
readln;
end;

procedure C;
var max: integer;
begin
max:=0;
for i:=1 to n do
    for j:=1 to n do if mat[i,j] < 0 then max:= mat[i,j];

if max = 0 then writeln('')
else begin
     for i:=1 to n do
         for j:=1 to n do
                     if (mat[i,j] > max) and (mat[i,j] < 0) then max := mat[i,j];
     writeln('Nejvyzsi zaporne cislo v matici je: ',max);
   end;
readln;
end;

procedure D;
var min:integer;

begin
min := mat[1,1];
for i:=1 to n do
    for j:=1 to n do if mat[i,j] < min then min := mat[i,j];

writeln('Nejmensi prvek je ',min,' a nachazi se v matici na techto pozicich');
for i:=1 to n do
    for j:=1 to n do if mat[i,j] = min then begin
                                                 write(i, ' ',j);
                                                 writeln;
                                            end;
end;

procedure E;
var sou:integer;

begin
for j:=1 to n do begin
                      sou:=0;
                      for i:=1 to n do sou := sou + mat[i,j];
                      writeln('Soucet prvku ',j,'. sloupce je: ',sou);
                 end;
readln;
end;

procedure F;
var poc: integer;
begin
poc:=0;
for i:=1 to n do
    for j:=1 to n do if mat[i,j] mod 5 = 0 then poc:= poc +1;
writeln('V Matici je ',poc,' cisel delitelnych peti');
readln;
end;

begin
     clrscr;
     write('Zadejte hodnotu N, ktera urci rozmer ctvercove matice: ');
     readln(n);
     NACTI;
     VYPIS;
     A;
     B;
     C;
     D;
     E;
     F;
     readln;

end.