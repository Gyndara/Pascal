program Menu_Pilihan_Kelompok_1;
{I.S.: Pengguna memasukan salah satu angka pilihan menu (1/2/3/4)}
{F.S.: Menampilkan menu sesuai dengan input pengguna}

uses crt;
//Kamus:
var
   Operasi, Deret, PembilangStr, PenyebutStr: string;
   UlangiMenu1, UlangiMenu2, UlangiMenu3: char;
   Pilih, Suku1, Suku2, Suku_N, Hasil2, Fib, N, I, J: integer;
   NilaiA, NilaiB, PembilangSebelum, PenyebutSebelum, Pembilang, Penyebut, Hasil1, S: real;

//badan program
begin
     writeln('                                            ======================================');
     writeln('                                            ||           SELAMAT DATANG         ||');
     writeln('                                            ||==================================||');
     writeln('                                            ||        PROGRAM MENU PILIHAN      ||');
     writeln('                                            ||==================================||');
     writeln('                                            ||             KELOMPOK 1           ||');
     writeln('                                            ||==================================||');
     writeln('                                            ||SEMESTER-1                    2024||');
     writeln('                                            ======================================');
     writeln('Klik enter untuk melanjutkan.....');
     readln;
     clrscr;

           writeln('========================================');
           writeln('||            Menu Pilihan            ||');
           writeln('========================================');
           writeln('|| 1. Kalkulator sederhana            ||');
           writeln('||====================================||');
           writeln('|| 2. Suku ke-N dari deret fibonacci  ||');
           writeln('||====================================||');
           writeln('|| 3. S = 2/3 - 5/7 + 16/21...        ||');
           writeln('||====================================||');
           writeln('|| 4. Anggota kelompok                ||');
           writeln('||====================================||');
           writeln('|| 0. Keluar                          ||');
           writeln('========================================');

           begin
           write('Masukkan angka menu pilihan anda : '); readln(Pilih);
           while (Pilih <> 0) do
                 begin
                      clrscr;
                      case Pilih of
                           1: begin
                                   UlangiMenu1 := 'Y';
                                   while (UlangiMenu1 = 'Y') do
                                         begin
                                              writeln('=====================================================');
                                              writeln('<<<             KALKULATOR SEDERHANA              >>>');
                                              writeln('=====================================================');
                                              write('Masukkan Nilai A         : '); readln(NilaiA);
                                              write('Masukkan Nilai B         : '); readln(NilaiB);
                                              write('Pilih Operasi [+/-/x/:]  : '); readln(Operasi);
                                              while (Operasi <> '+') and (Operasi <> '-') and (Operasi <> 'x') and (Operasi <> ':') do
                                                    begin
                                                         writeln('Operasi yang tersedia hanya [+/-/x/:], tekan enter untuk pilih ulang operasi....');
                                                         readln;
                                                         clrscr;
                                                         writeln('Nilai A : ', NilaiA);
                                                         writeln('Nilai B : ', NilaiB);
                                                         write('Pilih Operasi [+/-/x/:] : '); readln(Operasi);
                                                    end;

                                              if (Operasi = '+')
                                                  then
                                                      begin
                                                           if (NilaiA = int(NilaiA)) and (NilaiB = int(NilaiB))
                                                               then
                                                                   begin
                                                                        Hasil1 := NilaiA + NilaiB;
                                                                        writeln('Hasil = ', NilaiA:0:0, ' + ', NilaiB:0:0);
                                                                        writeln('      = ', Hasil1:0:1);
                                                                   end
                                                           else
                                                               if (NilaiA = real(NilaiA)) and (NilaiB = real(NilaiB))
                                                                   then
                                                                       begin
                                                                            Hasil1 := NilaiA + NilaiB;
                                                                            writeln('Hasil = ', NilaiA:0:2, ' + ', NilaiB:0:2);
                                                                            writeln('      = ', Hasil1:0:1);
                                                                       end
                                                      end
                                              else
                                                  if (Operasi = '-')
                                                      then
                                                          begin
                                                               if (NilaiA = int(NilaiA)) and (NilaiB = int(NilaiB))
                                                                   then
                                                                       begin
                                                                            Hasil1 := NilaiA - NilaiB;
                                                                            writeln('Hasil = ', NilaiA:0:0, ' - ', NilaiB:0:0);
                                                                            writeln('      = ', Hasil1:0:1);
                                                                        end
                                                               else
                                                                   if (NilaiA = real(NilaiA)) and (NilaiB = real(NilaiB))
                                                                       then
                                                                           begin
                                                                                Hasil1 := NilaiA - NilaiB;
                                                                                writeln('Hasil = ', NilaiA:0:2, ' - ', NilaiB:0:2);
                                                                                writeln('      = ', Hasil1:0:1);
                                                                           end
                                                          end
                                                  else
                                                      if (Operasi = 'x')
                                                          then
                                                              begin
                                                                   if (NilaiA = int(NilaiA)) and (NilaiB = int(NilaiB))
                                                                       then
                                                                           begin
                                                                                Hasil1 := NilaiA * NilaiB;
                                                                                writeln('Hasil = ', NilaiA:0:0, ' x ', NilaiB:0:0);
                                                                                writeln('      = ', Hasil1:0:1);
                                                                       end
                                                                   else
                                                                       if (NilaiA = real(NilaiA)) and (NilaiB = real(NilaiB))
                                                                           then
                                                                               begin
                                                                                    Hasil1 := NilaiA * NilaiB;
                                                                                    writeln('Hasil = ', NilaiA:0:2, ' x ', NilaiB:0:2);
                                                                                    writeln('      = ', Hasil1:0:1);
                                                                               end
                                                              end
                                                      else
                                                          if (Operasi = ':')
                                                              then
                                                                  begin
                                                                       if (NilaiA = int(NilaiA)) and (NilaiB = int(NilaiB))
                                                                           then
                                                                               begin
                                                                                    Hasil1 := NilaiA / NilaiB;
                                                                                    writeln('Hasil = ', NilaiA:0:0, ' : ', NilaiB:0:0);
                                                                                    writeln('      = ', Hasil1:0:1);
                                                                               end
                                                                       else
                                                                           if (NilaiA = real(NilaiA)) and (NilaiB = real(NilaiB))
                                                                              then
                                                                                  begin
                                                                                       Hasil1 := NilaiA / NilaiB;
                                                                                       writeln('Hasil = ', NilaiA:0:2, ' : ', NilaiB:0:2);
                                                                                       writeln('      = ', Hasil1:0:1);
                                                                                  end
                                                                  end;

                                              write('Ulangi perhitungan [Y/T] : '); readln(UlangiMenu1);
                                              UlangiMenu1 := upcase(UlangiMenu1);
                                              clrscr;
                                         end;
                              end;

                           2: begin
                                   UlangiMenu2 := 'Y';
                                   while(UlangiMenu2 = 'Y') do
                                   begin
                                        writeln('=====================================================');
                                        writeln('<<<          PERHITUNGAN SUKU FIBONACCI           >>>');
                                        writeln('=====================================================');
                                        write('Suku ke- : '); readln(N);
    
                                        while (N <= 0) do
                                               begin
                                                    writeln('Masukkan bilangan positif!');
                                                    write('Suku ke- : '); readln(N);
                                                    clrscr;
                                               end;

                                        Suku1 := 0;
                                        Suku2 := 1;
                                        Suku_N := 2;

                                        if (N = 1)
                                            then
                                                Hasil2 := Suku1
                                        else
                                            if (N = 2)
                                                then
                                                    Hasil2 := Suku2
                                            else
                                                begin
                                                     while (Suku_N <= N) do
                                                            begin
                                                                 Fib := Suku1 + Suku2;
                                                                 Suku1 := Suku2;
                                                                 Suku2 := Fib;
                                                                 Suku_N := Suku_N + 1;
                                                            end;
                                                            Hasil2 := Suku2;
                                                end;

                                                writeln('Suku Ke-', N, ' dari deret Fibonacci adalah ', Hasil2);
                                                write('Ulangi perhitungan suku Fibonacci [Y/T] : '); readln(UlangiMenu2);
                                                UlangiMenu2 := upcase(UlangiMenu2);
                                                clrscr;
                                   end;
                              end;

                           3: begin
                              UlangiMenu3 := 'Y';
                              while (UlangiMenu3 = 'Y') do
                                    begin
                                         writeln('=====================================================');
                                         writeln('<<<           PERHITUNGAN NILAI SUKU-N            >>>');
                                         writeln('=====================================================');
                                         write('Banyak suku (N) = '); readln(N);

                                         S := 0;
                                         PembilangSebelum := 2;
                                         PenyebutSebelum := 3;
                                         Deret := '2/3';
                                         S := S + (PembilangSebelum / PenyebutSebelum);
                                         I := 2;

                                         while (I <= N) do
                                               begin
                                                    Pembilang := 1;
                                                    for J := 1 to (I - 1) do
                                                        Pembilang := Pembilang * 2;
                                                    Pembilang := Pembilang * Pembilang;

                                                    if (I mod 2 = 0)
                                                        then
                                                            Pembilang := Pembilang + 1;
                                                    Penyebut := PembilangSebelum + Pembilang;

                                                    if (I mod 2 = 0)
                                                        then
                                                            begin
                                                                 S := S - (Pembilang / Penyebut);
                                                                 Str(Pembilang:0:0, PembilangStr);
                                                                 Str(Penyebut:0:0, PenyebutStr);
                                                                 Deret := Deret + ' - ' + PembilangStr + '/' + PenyebutStr;
                                                            end
                                                    else
                                                        begin
                                                             S := S + (Pembilang / Penyebut);
                                                             Str(Pembilang:0:0, PembilangStr);
                                                             Str(Penyebut:0:0, PenyebutStr);
                                                             Deret := Deret + ' + ' + PembilangStr + '/' + PenyebutStr;
                                                        end;

                                                    PembilangSebelum := Pembilang;
                                                    PenyebutSebelum := Penyebut;

                                                    I := I + 1;
                                                    end;

                                                    WriteLn('S = ', Deret);
                                                    WriteLn('  = ', S:0:3);
                                                    write('Ulangi perhitungan nilai suku-n [Y/T] : ');readln(UlangiMenu3);
                                                    UlangiMenu3 := upcase(UlangiMenu3);
                                                    clrscr;
                                               end;
                                    end;

                           4: begin
                                   writeln('==================================================');
                                   writeln('||                   KELOMPOK 1                 ||');
                                   writeln('==================================================');
                                   writeln('|No|              NAMA              ||    NIM   ||');
                                   writeln('==================================================');
                                   writeln('|1.| Bisma Gyndara Mages Jayalangit || 10124185 ||');
                                   writeln('==================================================');
                                   writeln('|2.| Andreana Rahmawan              || 10124186 ||');
                                   writeln('==================================================');
                                   writeln('|3.| Rania                          || 10124196 ||');
                                   writeln('==================================================');
                                   writeln('|4.| Farhan Naufal Ardiansyah       || 10124198 ||');
                                   writeln('==================================================');
                                   writeln('Klik enter untuk kembali ke menu.....');
                                   readln;
                                   clrscr;
                              end;
                           else
                               writeln('Pilihan tidak ada');
                 end;

           writeln('========================================');
           writeln('||            Menu Pilihan            ||');
           writeln('========================================');
           writeln('|| 1. Kalkulator sederhana            ||');
           writeln('||====================================||');
           writeln('|| 2. Suku ke-N dari deret fibonacci  ||');
           writeln('||====================================||');
           writeln('|| 3. S = 2/3 - 5/7 + 15/21...        ||');
           writeln('||====================================||');
           writeln('|| 4. Anggota kelompok                ||');
           writeln('||====================================||');
           writeln('|| 0. Keluar                          ||');
           writeln('========================================');

           write('Masukkan angka menu pilihan anda : '); readln(Pilih);
           end;

     end;
end.
