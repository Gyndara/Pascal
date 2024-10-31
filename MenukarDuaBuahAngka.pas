//Bisma Gyndara Mages Jayalangit

program Menukar_Dua_Buah_Angka;
{I.S.: pengguna memasukan angka kesatu dan angka kedua}
{F.S.: menampilkan hasil pertukaran angka kesatu dan angka kedua}

//Kamus:
var
  Angka1,Angka2,Temp: integer;

//Badan program
begin
     writeln('<< MELAKUKAN PERTUKARAN ANGKA DENGAN BATUAN VARIABLE>>');
     write('masukan angka 1 :'); readln(Angka1);
     write('masukan angka 2 :'); readln(Angka2);
     Temp   := Angka2;
     Angka2 := Angka1;
     Angka1 := Temp;
     writeln('hasil angka 1  :', Angka1);
     writeln('hasil angka 2  :', Angka2);

     readln;
end.

