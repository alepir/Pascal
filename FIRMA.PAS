program FIRMA;

uses crt;
var
  zam : record  jmeno:string[10];
                           prijmeni:string[20];
                           pohlavi:char;
                           narozeni:integer;
                           trida:byte;
                           nastup:integer;
                           end;

   prum:real;
   x:char;
   a:array[1..100] of string[20];
   s,pom,poc,rok,i:integer;
   b:array[1..100] of byte;
   c:array[1..100] of string[20];

procedure VLOZ;
begin
poc:= poc +1;
write('Zadej jmeno zamestnance: ');
readln(zam.jmeno);
write('Zadej prijmeni zamestnance: ');
readln(zam.prijmeni);
write('Zadejte pohlavi zamestnance Z/M: ');
readln(zam.pohlavi);
write('Zadejte rok narozeni: ');
readln(zam.narozeni);
write('Zadejte platovou tridu 8-14: ');
readln(zam.trida);
write('Zadejte rok nastupu zamestnance: ');
readln(zam.nastup);

pom:= rok - zam.narozeni;
if (pom<40) and (zam.trida>10) then a[poc]:=zam.prijmeni;

s:= s + zam.trida;
prum:= s/poc;

pom:= rok - zam.nastup;
if pom<5 then c[poc]:=zam.prijmeni;

write('Chcete zadat dalsiho zamestnance?');
readln(x);
if (x='a') or (x='A') then VLOZ;

end;

begin
clrscr;
s:=0;
poc:=0;
s:=0;
for i:=1 to 100 do  begin c[i]:=(''); a[i]:=(''); end;
write('Zadejte aktualni rok: ');
readln(rok);
VLOZ;
writeln('Zamestnanci kategorie A');
for i:=1 to poc do begin
                   writeln(a[i]);

writeln('prumerna platova trida');
writeln(prum:0:2);

writeln('Zamestnanci kategorie C');
for i:=1 to poc do writeln(c[i]);

readln;
end;
end.