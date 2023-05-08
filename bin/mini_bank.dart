class Nasabah {
  String nama;
  String alamat;
  int saldo = 0;

// Constructor
  Nasabah(this.nama, this.alamat, this.saldo) {}

  // Method
  void simpan(int jumlah) {
    saldo += jumlah;
    print("Setor : ${jumlah} ");
  }

  void ambil(int jumlah) {
    saldo -= jumlah;
    print("Ambil : ${jumlah} ");
  }
}

void main() {
  // var nasabahs = <Nasabah>[];
  Nasabah nasabah1 = Nasabah("Handy", "Sukabumi", 0);

  print("==================");
  print("Nama : ${nasabah1.nama} ");
  print("Alamat : ${nasabah1.alamat} ");
  nasabah1.simpan(100000);
  nasabah1.ambil(5000);
  nasabah1.ambil(2000);
  print("Saldo : ${nasabah1.saldo}");

  Nasabah nasabah2 = Nasabah("Sadikin", "Sukabumi", 0);

  print("==================");
  print("Nama :${nasabah2.nama} ");
  print("Alamat : ${nasabah2.alamat} ");
  nasabah2.simpan(200000);
  nasabah2.ambil(15000);
  nasabah2.ambil(20000);
  print("Saldo : ${nasabah2.saldo}");
  print("==================");
}
