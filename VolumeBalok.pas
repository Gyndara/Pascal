//Bisma Gyndara Mages Jayalangit

program Menghitung_Volume_Balok;
{I.S.: pengguna memasukan panjang, lebar dan tinggi balok}
{F.S.: menampilkan volume balok}
//Kamus:
const
   Konversi = 2.54;
var
   Panjang,Lebar,Tinggi,HasilKonversiPanjang,HasilKonversiLebar,HasilKonversiTinggi,VolumeBalok : real;

//Badan program
begin
   writeln('<< MENGHITUNG VOLUME BALOK >>');
   write('Panjang Balok:'); readln(Panjang);
   write('Lebar Balok  :'); readln(Lebar);
   write('Tinggi Balok :'); readln(Tinggi);
   //perhitungan konversi panjang, lebar, tinggi balok
   HasilKonversiPanjang := Panjang * Konversi;
   HasilKonversiLebar   := Lebar   * Konversi;
   HasilKonversiTinggi  := Tinggi  * Konversi;
   //perhitungan volume balok
   VolumeBalok := HasilKonversiPanjang * HasilKonversiLebar * HasilKonversiTinggi;
   //menampilkan hasil perhitungan volume balok
   write('Volume Balok :', VolumeBalok:0:2,' cm3');
   readln;
end.
