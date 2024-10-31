program KonversiWaktu;
{I.S.: Pengguna memasukan jumlah detik}
{F.S.: Menampilkan jumlah detik yang dikonversikan kedalam hari, jam, menit, detik}

//Kamus:
var
   NilaiDetik, hari, jam, menit, detik, NilaiSisa: integer;

//badan program
begin

     write('Masukan Nilai Waktu (dalam detik): '); readln(NilaiDetik);
     
     hari := NilaiDetik div (24 * 3600);
     NilaiSisa := NilaiDetik mod (24 * 3600);
     jam := NilaiSisa div 3600;
     NilaiSisa := NilaiSisa mod 3600;
     menit := NilaiSisa div 60;
     detik := NilaiSisa mod 60;

     writeln('Jumlah hari  : ', hari, ' hari');
     writeln('Jumlah jam   : ', jam, ' jam');
     writeln('Jumlah menit : ', menit, ' menit');
     writeln('Jumlah detik : ', detik, ' detik');

     readln;
end.
