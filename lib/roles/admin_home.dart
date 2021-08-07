import 'package:flutter/material.dart';
import 'package:bm2elektrik_app/services/firebase_services.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class adminHomePage extends StatefulWidget {
  @override
  _adminHomePageState createState() => _adminHomePageState();
}

class _adminHomePageState extends State<adminHomePage> {
  final CollectionReference inputdata =
      FirebaseFirestore.instance.collection("produk");

  FirebaseServices _firebaseServices = FirebaseServices();

  final formKey = GlobalKey<FormState>();
  TextEditingController namaBank = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin Home'),
      ),
      body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Form(
            key: formKey,
            child: ListView(
                padding: EdgeInsets.only(
                  top: 8.0,
                  bottom: 12.0,
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 12.0,
                      horizontal: 8.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 340,
                          height: 50,
                          child: TextFormField(
                            controller: namaBank,
                            decoration: InputDecoration(hintText: 'Nama Bank'),
                            validator: (value) {
                              if (value.trim().isEmpty) {
                                return 'Bukti Transfer is Required';
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
          )),
    );
  }
}
