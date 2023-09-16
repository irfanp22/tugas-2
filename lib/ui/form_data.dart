import 'package:tugas_2/ui/tampil_data.dart';
import 'package:flutter/material.dart';

class FormData extends StatefulWidget {
  const FormData({Key? key}) : super(key: key);

  @override
  _FormDataState createState() => _FormDataState();
}

class _FormDataState extends State<FormData> {
  final _namaController = TextEditingController();
  final _nimController = TextEditingController();
  final _tahunLahirController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Input Data"),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(children: [
          _textboxNama(),
          _textboxNIM(),
          _textboxTahunLahir(),
          _textboxSimpan(),
        ]),
      ),
    );
  }

  _textboxNama() {
    return TextField(
      decoration: const InputDecoration(labelText: "Nama"),
      controller: _namaController,
    );
  }

  _textboxNIM() {
    return TextField(
      decoration: const InputDecoration(labelText: "NIM"),
      controller: _nimController,
    );
  }

  _textboxTahunLahir() {
    return TextField(
      decoration: const InputDecoration(labelText: "Tahun Lahir"),
      controller: _tahunLahirController,
    );
  }

  _textboxSimpan() {
    return ElevatedButton(
      onPressed: () {
        String nama = _namaController.text;
        String nim = _nimController.text;
        int tahunLahir = int.parse(_tahunLahirController.text);
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => TampilData(
            nama: nama,
            nim: nim,
            tahunLahir: tahunLahir,
          ),
        ));
      },
      child: const Text("Simpan"),
    );
  }
}
