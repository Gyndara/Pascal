program BiayaParkir;
{I.S.: Pengguna Memasukan Jenis Kendaran, Nopol(Nomor Polisi), Jam Masuk, Menit Masuk, Jam Keluar, Menit Keluar}
{F.S.: Menampilkan lama parkir, dan biaya parkir yang perlu dibayar}

uses crt;
//Kamus:
Var
   JenisKedaraan, NoPol: string;
   JamMasuk, MenitMasuk, JamKeluar, MenitKeluar, Jam, Menit, Biaya: integer;

begin
     writeln('            <<<< BIAYA PARKIR >>>>');
     Write('Masukan Jenis Kendaraan : '); readln(JenisKedaraan);
     write('Masukan Nomor Polisi    : '); readln(NoPol);

     write('Masuk (Jam:Menit)       : '); readln(JamMasuk);
     gotoxy(29,4); write(':'); gotoxy(30,4); readln(MenitMasuk);

     write('Keluar (Jam:Menit)      : '); readln(JamKeluar);
     gotoxy(29,5); write(':'); gotoxy(30,5); readln(MenitKeluar);

     if(MenitKeluar < MenitMasuk)
        then
        begin
            MenitKeluar := MenitKeluar + 60;
            JamKeluar := JamKeluar - 1;
        end;
       Menit := MenitKeluar -MenitMasuk;

     if(JamKeluar < JamMasuk)
        then
            JamKeluar := JamKeluar + 12;
     Jam := JamKeluar - JamMasuk;
     writeln('Lama Parkir             :', Jam, ' jam ', Menit, ' Menit ');

     if(Menit > 0)
        then
           Jam := Jam + 1;
     writeln('                        :', Jam, ' jam');

     JenisKedaraan := upcase(JenisKedaraan);
     if(JenisKedaraan = 'MOTOR')
         then
            Biaya := 1500 + (Jam - 1) * 500
         else
            Biaya := 3000 + (Jam - 1) * 1000;
     writeln('Biaya Parkir            :Rp.',Biaya);

     readln;
end.
