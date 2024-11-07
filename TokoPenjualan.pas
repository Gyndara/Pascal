program TokoPenjualan;
{I.S.: pengguna memasukan kode produk, jumlah produk, dan diskon jika jumlah produk lebih dari 12}
{F.S.: Menampilkan data produk, jumlah produk, harga satuan, harga total, total bayar, uang pembayran, uang kembalian dan diskon }

//Kamus:
var
  KodeProduk, NamaBarang : string;
  StatusDiskon: char;
  JumlahProduk, HargaSatuan, HargaTotal, TotalBayar, UangKembali, Diskon, BesaranDiskon, Bayar: real;

//badan program
begin
     write('Masukan kode produk :' ); readln(KodeProduk);
     KodeProduk := upcase(KodeProduk);
     if(KodeProduk <> 'PK01') and (KodeProduk <> 'TS02') and (KodeProduk <> 'SP03') and (KodeProduk <> 'AK04')
        then
            writeln('Produk yang anda masukan tidak terdapat pada toko')
        else
            writeln('Produk ', KodeProduk, ' ada pada toko');

     write('Masukan Jumlah Produk : '); readln(JumlahProduk);

     Diskon := 0;
     StatusDiskon := 'T';

     if(JumlahProduk >= 20)
        then
            begin
                 write('Ada Diskon [Ya/Tidak] : '); readln(StatusDiskon);
                 StatusDiskon := upcase(StatusDiskon);
            end;


     if(StatusDiskon = 'Y')
        then
            begin
                 write('Besar Diskon : '); readln(Diskon);
                 StatusDiskon := 'Y';
            end;

     if (KodeProduk = 'PK01')
        then
            begin
                 NamaBarang := 'Pakaian';
                 HargaSatuan := 75000;
            end
            else
                if (KodeProduk = 'TS02')
                then
                    begin
                         NamaBarang := 'Tas';
                         HargaSatuan := 65000;
                    end
                    else
                        if (KodeProduk = 'SP03')
                           then
                               begin
                                    NamaBarang := 'Sepatu';
                                    HargaSatuan := 157000;
                               end
                               else
                                   if (KodeProduk = 'AK04')
                                      then
                                          begin
                                               NamaBarang := 'Aksesoris';
                                               HargaSatuan := 45000;
                                          end;

     HargaTotal := JumlahProduk * HargaSatuan;
     BesaranDiskon := (Diskon / 100) * HargaTotal;
     TotalBayar := HargaTotal - BesaranDiskon;

     write('Masukan Jumlah Uang : '); readln(Bayar);
     UangKembali := Bayar - TotalBayar;

     writeln('Kode Barang       : ', KodeProduk);
     writeln('Nama Barang       : ', NamaBarang);
     writeln('Jumlah Barang     : ', JumlahProduk);
     writeln('Status Diskon     : ', StatusDiskon);
     writeln('Harga Satuan      :  Rp.', HargaSatuan:0:0);
     writeln('Harga Total       :  Rp.', HargaTotal:0:0);
     writeln('Diskon', Diskon:0:0,'% :  Rp.', BesaranDiskon:0:0);
     writeln('_____________________________');
     writeln('Total Bayar       :  Rp.', TotalBayar:0:0);
     writeln('Bayar             :  Rp.', Bayar:0:0);
     writeln('Uang Kembalian    :  Rp.', UangKembali:0:0);

     readln;

end.

