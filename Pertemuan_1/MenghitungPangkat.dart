import 'dart:io'; //library -> i/o user

class Pangkat {
  int angka;
  int pangkat;
  int hasil = 1;
  Pangkat(this.angka, this.pangkat);

  void hitung() {
    for (int i = 1; i <= pangkat; i++) {
      hasil = hasil * angka;
    }
    print('$angka^$pangkat = $hasil');
  }
}

void main() {
  print('Menghitung Pangkat dari Sebuah Bilangan Bulat');
  stdout.write('Masukkan bilangan bulat: ');
  int? angka = int.tryParse(stdin
      .readLineSync()!); //baca inputan user (stdin.readLineSync) dan konversi ke int (int.parse)
      if(angka==null){
        print('Masukkan angka, yaitu bilangan bulat');
        return;
      }

  stdout.write('Pangkat berapa? ');
  int? pangkat = int.tryParse(stdin.readLineSync()!);
  if(pangkat==null||pangkat<0){
        print('Masukkan angka yang valid, yaitu bilangan bulat positif');
        return;
      }

  Pangkat p = Pangkat(angka, pangkat);  //buat objek Pangkat dengan nilai/inputan angka dan pangkat
  p.hitung(); //panggil method hitung
}
