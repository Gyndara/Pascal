program M_dikali_N;
{I.S.: pengguna memasukan nilai M dan nilai N}
{F.S.: menampilkan hasil dari perkalian M dan N}

//kamus:
var
   M, N, i, Kali: integer;

begin
     write('masukan nilai M : '); readln(M);
     write('masukan nilai N : '); readln(N);

     if (M = 0) and (N = 0)
        then
            begin
                 Kali := 1;
                 writeln(M, ' Pangkat ', N, ' = ', Kali);
            end
     else
         if (N = 0)
            then
                begin
                     Kali := 1;
                     writeln(M, ' Pangkat ', N, ' = ', Kali);
                end
     else
         begin
              Kali := 1;  // Reset Kali untuk perhitungan
              write(M, ' Pangkat ', N, ' = ');

              // Loop untuk menuliskan hasil perkalian
              for i := 1 to N do
                  begin
                       write(M);
                       if (i < N) then
                          write(' x ');  // Menambahkan 'x' di antara angka
                          Kali := Kali * M; // Perkalian untuk mendapatkan hasil pangkat
                  end;
          writeln(' = ', Kali);
          end;
    readln;
end.
