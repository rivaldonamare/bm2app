import 'package:bm2elektrik_app/screens/Home_Page.dart';
import 'package:flutter/material.dart';
import 'package:bm2elektrik_app/services/firebase_services.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class adminHomePage extends StatefulWidget {
  @override
  _adminHomePageState createState() => _adminHomePageState();
}

class _adminHomePageState extends State<adminHomePage> {
  final CollectionReference inputdata =
      FirebaseFirestore.instance.collection("products");

  FirebaseServices _firebaseServices = FirebaseServices();

  final formKey = GlobalKey<FormState>();
  TextEditingController namaBarang = new TextEditingController();
  TextEditingController hargaBarang = new TextEditingController();
  TextEditingController descBarang = new TextEditingController();
  TextEditingController colorBarang = new TextEditingController();
  TextEditingController imageBarang = new TextEditingController();
  TextEditingController searchStringBarang = new TextEditingController();
  TextEditingController stockBarang = new TextEditingController();


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
                            controller: namaBarang,
                            decoration: InputDecoration(hintText: 'Name Product'),
                            validator: (value) {
                              if (value.trim().isEmpty) {
                                return 'Product name is Required';
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
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
                            controller: hargaBarang,
                            decoration: InputDecoration(hintText: 'Price Product'),
                            validator: (value) {
                              if (value.trim().isEmpty) {
                                return 'Price Product is Required';
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
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
                            controller: descBarang,
                            decoration: InputDecoration(hintText: 'Desc Product'),
                            validator: (value) {
                              if (value.trim().isEmpty) {
                                return 'Desc Product is Required';
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
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
                            controller: colorBarang,
                            decoration: InputDecoration(hintText: 'Color Product'),
                            validator: (value) {
                              if (value.trim().isEmpty) {
                                return 'Color Product is Required';
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
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
                            controller: imageBarang,
                            decoration: InputDecoration(hintText: 'Image Product'),
                            validator: (value) {
                              if (value.trim().isEmpty) {
                                return 'Image Product is Required';
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
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
                            controller: searchStringBarang,
                            decoration: InputDecoration(hintText: 'Search String Product'),
                            validator: (value) {
                              if (value.trim().isEmpty) {
                                return 'Search String Product is Required';
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
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
                            controller: stockBarang,
                            decoration: InputDecoration(hintText: 'Stock Product'),
                            validator: (value) {
                              if (value.trim().isEmpty) {
                                return 'Stock Product is Required';
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                width: 50.0,
                height: 10.0,
              ),
              RaisedButton(
                child: Text("Submit"),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return Dialog(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Container(
                            height: 200,
                            child: Padding(
                              padding: EdgeInsets.all(12.0),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    TextField(
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText:
                                              "Data barang berhasil disimpan"),
                                    ),
                                    SizedBox(
                                      width: 350,
                                      child: RaisedButton(
                                        color: Colors.lightBlue,
                                        onPressed: () {
                                          Map<String, dynamic> data = {
                                            "name": namaBarang.text,
                                            "price": hargaBarang.text,
                                            "desc": descBarang.text,
                                            "image": imageBarang.text,
                                            "color": colorBarang.text,
                                            "searh_string": searchStringBarang.text,
                                            "stock": stockBarang.text
                                          };
                                          _firebaseServices.productsRef
                                              .doc(
                                                  _firebaseServices.getUserId())
                                              .collection("products")
                                              .add(data);
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      HomePage()));
                                        },
                                        child: Text(
                                          "Confrim",
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ]),
                            ),
                          ),
                        );
                      });
                },
              ),
                ]),
          )),
    );
  }
}
