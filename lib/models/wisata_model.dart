class WisataModel {
  bool? success;
  String? message;
  List<Data>? data;

  WisataModel({this.success, this.message, this.data});

  WisataModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? kategoriId;
  String? namaWisata;
  String? alamat;
  String? deskripsi;
  int? tiket;
  String? fasilitas;
  int? biroId;
  String? cover;

  Data(
      {this.kategoriId,
      this.namaWisata,
      this.alamat,
      this.deskripsi,
      this.tiket,
      this.fasilitas,
      this.biroId,
      this.cover});

  Data.fromJson(Map<String, dynamic> json) {
    kategoriId = json['kategori_id'];
    namaWisata = json['nama_wisata'];
    alamat = json['alamat'];
    deskripsi = json['deskripsi'];
    tiket = json['tiket'];
    fasilitas = json['fasilitas'];
    biroId = json['biro_id'];
    cover = json['cover'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['kategori_id'] = this.kategoriId;
    data['nama_wisata'] = this.namaWisata;
    data['alamat'] = this.alamat;
    data['deskripsi'] = this.deskripsi;
    data['tiket'] = this.tiket;
    data['fasilitas'] = this.fasilitas;
    data['biro_id'] = this.biroId;
    data['cover'] = this.cover;
    return data;
  }
}
