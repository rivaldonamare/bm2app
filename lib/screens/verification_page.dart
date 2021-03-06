import 'package:bm2elektrik_app/screens/Home_Page.dart';
import 'package:bm2elektrik_app/services/firebase_services.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class VerificationPage extends StatefulWidget {
  @override
  _VerificationPageState createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  final CollectionReference buktiPembayaran =
      FirebaseFirestore.instance.collection("Users");

  FirebaseServices _firebaseServices = FirebaseServices();

  final formKey = GlobalKey<FormState>();
  TextEditingController namaBank = new TextEditingController();
  TextEditingController buktiTransfer = new TextEditingController();
  TextEditingController namapengirim = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Masukan Bukti Transfer'),
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
                        controller: namapengirim,
                        decoration: InputDecoration(
                            hintText: 'Nama Pengirim'),
                        validator: (value) {
                          if (value.trim().isEmpty) {
                            return 'Nomor Refrensi is Required';
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
                        controller: buktiTransfer,
                        decoration: InputDecoration(
                            hintText: 'Nomor Refrensi Transfer'),
                        validator: (value) {
                          if (value.trim().isEmpty) {
                            return 'Nomor Refrensi is Required';
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),

              LaunchButton('Upload Bukti Transfer', () async {
                await openUrl(
                    'https://api.whatsapp.com/send?phone=628118258488');
              }),
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
                                              "Transaksi Anda sedang diproses"),
                                    ),
                                    SizedBox(
                                      width: 350,
                                      child: RaisedButton(
                                        color: Colors.lightBlue,
                                        onPressed: () {
                                          Map<String, dynamic> data = {
                                            "Nama Bank": namaBank.text,
                                            "Bukti Transfer": buktiTransfer.text,
                                            "Nama Pengirim": namapengirim.text
                                          };
                                          _firebaseServices.buktiPembayaran
                                              .doc(
                                                  _firebaseServices.getUserId())
                                              .collection("Verification")
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
            ],
          ),
        ),
      ),
    );
  }
}

class LaunchButton extends StatelessWidget {
  final String text;
  final Function onTap;

  LaunchButton(this.text, this.onTap);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 50.0,
        height: 40.0,
        child: RaisedButton(
            child: Text(text), color: Colors.blue, onPressed: onTap));
  }
}

Future<void> openUrl(String url,
    {bool forceWebView = false, bool enableJavaScript = false}) async {
  await launch(url);
}
