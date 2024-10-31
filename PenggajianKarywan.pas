//Bisma Gyndara Mages Jayalangit

program PenggajianKaryawan;
{I.S.: pengguna memasukan bulan dan tahun penggajian, tiga data karyawan yang terdiri dari NIK, Nama Karywan dan gaji pokok}
{F.S.: menampilkan data gaji perkaryawan dan total gaji yang harus dibayar perusahaan}
uses crt;
//kamus:
var
    Bulan, Tahun, NIK1, Nama1, NIK2, Nama2, Nik3, Nama3: string;
    Gajipokok1, Gajipokok2, Gajipokok3 : integer;
    PPN1, PPN2, PPN3, Tunjangan1, Tunjangan2, Tunjangan3: real;
    GajiBersih1, GajiBersih2, GajiBersih3, TotalGaji : real;

//badan program
begin
   textbackground(blue); clrscr; textcolor(15);
   //memasukan bulan dan tahun penggajian
   write('Bulan (Nama Bulan) :'); readln(Bulan);
   write('Tahun (yyyy)       :'); readln(Tahun);

   //memasukan penggajian karyawan kesatu
   writeln(' ---------------Data Karyawan Satu ------------');
   write('Nomor Induk Karyawan  :'); readln(NIK1);
   write('Nama Karyawan         :'); readln(Nama1);
   write('Gaji karyawan         : Rp.'); readln(Gajipokok1);
   //menghitung pajak, tunjangan dan gaji bersih
   PPN1 := 0.1 * Gajipokok1;
   Tunjangan1 := 0.2 * Gajipokok1;
   GajiBersih1 := Gajipokok1 + Tunjangan1 - PPN1;
   writeln('Pajak (PPN) 10%         : Rp. ', PPN1:0:2);
   writeln('Tunjangan 20%           : Rp. ', Tunjangan1:0:2);
   writeln('Gaji Bersih             : Rp. ', GajiBersih1:0:2);

   readln;

   //memasukan penggajian karyawan kedua
   writeln(' ---------------Data Karyawan kedua ------------');
   write('Nomor Induk Karyawan  :'); readln(NIK2);
   write('Nama Karyawan         :'); readln(Nama2);
   write('Gaji karyawan         : Rp.'); readln(Gajipokok2);
   //menghitung pajak, tunjangan dan gaji bersih
   PPN2 := 0.1 * Gajipokok2;
   Tunjangan2 := 0.2 * Gajipokok2;
   GajiBersih2 := Gajipokok2 + Tunjangan2 - PPN2;
   writeln('Pajak (PPN) 10%         : Rp. ', PPN2:0:2);
   writeln('Tunjangan 20%           : Rp. ', Tunjangan2:0:2);
   writeln('Gaji Bersih             : Rp. ', GajiBersih2:0:2);

   readln;

   //memasukan penggajian karyawan ketiga
   writeln(' ---------------Data Karyawan ketiga ------------');
   write('Nomor Induk Karyawan  :'); readln(NIK3);
   write('Nama Karyawan         :'); readln(Nama3);
   write('Gaji karyawan         : Rp.'); readln(Gajipokok3);
   //menghitung pajak, tunjangan dan gaji bersih
   PPN3 := 0.1 * Gajipokok3;
   Tunjangan3 := 0.2 * Gajipokok3;
   GajiBersih3 := Gajipokok3 + Tunjangan3 - PPN3;
   writeln('Pajak (PPN) 10%         : Rp. ', PPN3:0:2);
   writeln('Tunjangan 20%           : Rp. ', Tunjangan3:0:2);
   writeln('Gaji Bersih             : Rp. ', GajiBersih3:0:2);

   readln;

   //menghitung total gaji yang harus dibayar perusahaan
   TotalGaji := GajiBersih1 + GajiBersih3  + GajiBersih3;
   write('Total Gaji :', TotalGaji:0:2);

   readln;
end.
