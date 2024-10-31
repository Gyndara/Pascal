//Bisma Gyndara Mages Jayalangit

program Menghitung_Luas_Segitiga;
{I.S.: pengguna memasukkan alas dan tinggi segitiga}
{F.S.: menampilkan luas segitiga}
//Kamus:
var
   Alas,Tinggi,LuasSegitiga : real;

//badan program
begin
   writeln('<< MENGHITUNG LUAS SEGITIGA >>');
   write('Alas Segitga  :'); readln(Alas);
   write('Tinggi Segitga:'); readln(Tinggi);
   //perhitunga luas segitiga
   LuasSegitiga := 0.5 * Alas * Tinggi;
   //menampilkan hasil perhitungan
   write('Luas Segitiga :', LuasSegitiga:0:2,' cm2');
   readln;
end.
