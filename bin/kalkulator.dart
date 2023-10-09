import 'dart:io';

void main() {
  double angka1, angka2, hasil;
  String operator;

  // Meminta pengguna memasukkan operator matematika
  stdout.writeln('============================');
  stdout.writeln('1. Penambahan ');
  stdout.writeln('2. Pengurangan');
  stdout.writeln('3. Perkalian  ');
  stdout.writeln('4. Pembagian  ');
  stdout.write('Masukkan Operasi        : ');
  operator = stdin.readLineSync()!;
  stdout.writeln('============================');

  // Meminta pengguna memasukkan angka pertama
  stdout.write('Masukkan angka pertama  : ');
  angka1 = double.parse(stdin.readLineSync()!);

  // Meminta pengguna memasukkan angka kedua
  stdout.write('Masukkan angka kedua    : ');
  angka2 = double.parse(stdin.readLineSync()!);

  // Melakukan perhitungan sesuai operator yang dimasukkan
  switch (operator) {
    case '1':
      hasil = angka1 + angka2;
      break;
    case '2':
      hasil = angka1 - angka2;
      break;
    case '3':
      hasil = angka1 * angka2;
      break;
    case '4':
      if (angka2 != 0) {
        hasil = angka1 / angka2;
      } else {
        print('Tidak bisa melakukan pembagian dengan angka 0.');
        return;
      }
      break;
    default:
      print('Operasi Matematika tidak ada!');
      return;
  }

  // Menampilkan hasil perhitungan
  print('Hasil : $hasil');
}
