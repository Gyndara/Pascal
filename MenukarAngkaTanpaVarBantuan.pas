//Bisma Gyndara Mages Jayalangit

program Menukar_Dua_Buah_Angka;

var
  Angka1,Angka2: integer;

begin
     writeln('<< MELAKUKAN PERTUKARAN ANGKA TANPA BATUAN VARIABLE>>');
     write('masukan angka 1 :'); readln(Angka1);
     write('masukan angka 2 :'); readln(Angka2);
     Angka1 := Angka1+Angka2;
     Angka2 := Angka1-Angka2;
     Angka1 := Angka1-Angka2;
     writeln('hasil angka 1  :', Angka1);
     writeln('hasil angka 2  :', Angka2);

     readln;                       
end.
