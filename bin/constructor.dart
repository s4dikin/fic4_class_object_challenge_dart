import 'dart:convert';

class Mahasiswa {
  String? nama;
  String? jurusan;
  String? angkatan;

  //Default Constructur
  Mahasiswa() {
    print("====================");
    print("ini hasil default Constructor");
    print("====================");
  }

  Mahasiswa.mahasiswaParam(this.nama, this.jurusan, this.angkatan) {
    print("====================");
    print("ini hasil Parameter Constructor");
    print("====================");
  }

  Mahasiswa.fromJsonString(String jsonString) {
    Map<String, dynamic> json = jsonDecode(jsonString);
    nama = json['nama'];
    jurusan = json['jurusan'];
    angkatan = json['angkatan'];

    print("====================");
    print("ini hasil Name Constructor Json");
    print("====================");
  }
}

void main() {
  //default constructor
  Mahasiswa mahasiswadefault = Mahasiswa();
  mahasiswadefault.nama = "Handy Sadikin";
  mahasiswadefault.jurusan = "Informatika";
  mahasiswadefault.angkatan = "2005";

  print("Nama: ${mahasiswadefault.nama}");
  print("Jurusan: ${mahasiswadefault.jurusan}");
  print("Angkatan: ${mahasiswadefault.angkatan}");

  //parameterized constructor

  Mahasiswa mahasiswa2 =
      Mahasiswa.mahasiswaParam("Handy Sadikin", "Informatika", "2008");
  print("Nama: ${mahasiswa2.nama}");
  print("Jurusan: ${mahasiswa2.jurusan}");
  print("Angkatan: ${mahasiswa2.angkatan}");

  String jsonString =
      '{"nama": "Handy Sadikin","jurusan": "Informatika","angkatan": "2005"}';
  Mahasiswa mahasiswa3 = Mahasiswa.fromJsonString(jsonString);
  print("Nama: ${mahasiswa3.nama}");
  print("Jurusan: ${mahasiswa3.jurusan}");
  print("Angkatan: ${mahasiswa3.angkatan}");
}
