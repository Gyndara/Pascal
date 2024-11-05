program GajiKaryawan;
{I.S.: Pengguna memasukan lama jam bekerja}
{F.S.: Menapilkan total gaji yang didapat sesuai jam bekerja}

//Kamus:
var
  LamaBekerja, UpahPerjam, TotalGaji, JamLembur, GajiLembur, GajiUtama: Integer;

//Badan program
begin
  //memasukan lama bekerja
  write('LAMA JAM BEKERJA : '); readln(LamaBekerja);
  UpahPerjam := 150000;
  
  //menghitung total gaji yang didapat selama 40 jam
  TotalGaji  := LamaBekerja * UpahPerjam;
  JamLembur  := 0;
  GajiLembur := 0;

  //melakukan penghitungan gaji lembur jika jam bekerja lebih dari 40 jam
  if LamaBekerja > 40
    then
       begin
          JamLembur := LamaBekerja - 40;
          GajiLembur := JamLembur * (UpahPerjam * 2);
          TotalGaji := 40 * UpahPerjam + GajiLembur;
       end;

  //menghitung gaji utama tanpa tambahan gaji lembur
  GajiUtama := TotalGaji - GajiLembur;

  //menampilkan lama bekerja dan total gaji yang didapat
  writeln('  <<<< TOTAL GAJI KARYAWAN >>>>');
  writeln('LAMA BEKERJA : ', LamaBekerja, ' JAM');
  writeln('LAMA LEMBUR  : ', JamLembur, '  JAM');
  writeln('GAJI BERSIH  : Rp.', GajiUtama:0);
  writeln('GAJI LEMBUR  : Rp.', GajiLembur:0);
  writeln('TOTAL GAJI   : Rp.', TotalGaji:0);

  ReadLn;
end.

