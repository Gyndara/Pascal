//Bisma Gyndara Mages Jayalangit

program MenentukanGenapGanjil;
{I.S.: Pengguna memasukan sebuah bilangan}
{I.F.: Menampilkan keterangan "Bilangan Ganjil" atau "Bilangan Genap"}

//Kamus :
var
  Bilangan : Integer;
  Keterangan : String ;

//Badan Program
begin
   writeln('<<<< PROGRAM MENENTUKAN BILANGAN GANJIL ATAU GENAP >>>>');
   write('Masukan Bilangan : ');  readln(Bilangan);
   //Menentukan Niali Bilangan
   if (Bilangan mod 2 = 0)
      then
         Keterangan := 'Bilangan Genap'
      else
         Keterangan := 'Bilangan Ganjil';
   writeln('Bilangan ', Bilangan , ' ',keterangan);

   readln;
end.
