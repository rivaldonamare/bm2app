import 'package:bm2elektrik_app/screens/payment_method.dart';
import 'package:bm2elektrik_app/screens/verification_page.dart';
import 'package:bm2elektrik_app/widgets/custom_btn.dart';
import 'package:flutter/material.dart';

class totalPay extends StatefulWidget {

  @override
  _totalPayState createState() => _totalPayState();
}

class _totalPayState extends State<totalPay> {
  final formKey  = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Total Pay'),),
        body: Padding(
        padding: const EdgeInsets.all(12.0),
          child: Form(
            key: formKey,
              child: ListView(
                    padding: EdgeInsets.only(
                    top: 10.0,
                    bottom: 12.0,
                    ),
                  children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 20.0,
                            horizontal: 20.0,
                          ),
                          child: Row(
                            mainAxisAlignment:
                            MainAxisAlignment.start,
                            children: [
                            Container(
                            width: 90,
                            height: 90,
                            child: ClipRRect(
                              borderRadius:
                              BorderRadius.circular(10.0),
                              child: Image(image: AssetImage("assets/images/ph.jpg"),
                              ),
                            ),
                          ),
                              Container(
                                padding: EdgeInsets.only(
                                  top: 5.0,
                                  left: 16.0,
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                  MainAxisAlignment.start,
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Phillips Smart WIFI LED 9w",
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          color: Colors.black,
                                          fontWeight:
                                          FontWeight.w600),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets
                                          .symmetric(
                                        vertical: 4.0,
                                      ),
                                      child: Text(
                                        "Rp. 110.000                                            -     1      +",
                                        style: TextStyle(
                                            fontSize: 15.0,
                                            color: Theme.of(context)
                                                .accentColor,
                                            fontWeight:
                                            FontWeight.w600),
                                      ),
                                    ),
                                    Text(
                                      "Color - Cool Daylight",
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          color: Colors.black,
                                          fontWeight:
                                          FontWeight.w600),
                                    ),
                          ],
                          ),
                        ),
                      ],
                    ),
                        ),
                    Padding(padding: const EdgeInsets.symmetric(
                      vertical: 20.0,
                      horizontal: 20.0,
                    ),
                      child: Row(
                        mainAxisAlignment:
                        MainAxisAlignment.start,
                        children: [
                         
                          Container(
                            padding: EdgeInsets.only(
                              top: 5.0,
                              left: 16.0,
                            ),
                            child: Column(
                              mainAxisAlignment:
                              MainAxisAlignment.start,
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "",
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.black,
                                      fontWeight:
                                      FontWeight.w600),
                                ),
                                Padding(
                                  padding: const EdgeInsets
                                      .symmetric(
                                    vertical: 4.0,
                                  ),
                                  child: Text(
                                    "",
                                    style: TextStyle(
                                        fontSize: 15.0,
                                        color: Theme.of(context)
                                            .accentColor,
                                        fontWeight:
                                        FontWeight.w600),
                                  ),
                                ),
                                Text(
                                  "",
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.black,
                                      fontWeight:
                                      FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(padding: const EdgeInsets.symmetric(
                      vertical: 20.0,
                      horizontal: 20.0,
                    ),
                      child: Row(
                        mainAxisAlignment:
                        MainAxisAlignment.start,
                        children: [
                          
                          Container(
                            padding: EdgeInsets.only(
                              top: 5.0,
                              left: 16.0,
                            ),
                            child: Column(
                              mainAxisAlignment:
                              MainAxisAlignment.start,
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "",
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.black,
                                      fontWeight:
                                      FontWeight.w600),
                                ),
                                Padding(
                                  padding: const EdgeInsets
                                      .symmetric(
                                    vertical: 4.0,
                                  ),
                                  child: Text(
                                    "",
                                    style: TextStyle(
                                        fontSize: 15.0,
                                        color: Theme.of(context)
                                            .accentColor,
                                        fontWeight:
                                        FontWeight.w600),
                                  ),
                                ),
                                Text(
                                  "",
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.black,
                                      fontWeight:
                                      FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(padding: const EdgeInsets.symmetric(
                      vertical: 20.0,
                      horizontal: 24.0,
                    ),
                      child: Row(
                        mainAxisAlignment:
                        MainAxisAlignment.start,
                        children: [
                          
                          Container(
                            padding: EdgeInsets.only(
                              top: 100.0,
                              left: 16.0,
                            ),
                            child: Column(
                              mainAxisAlignment:
                              MainAxisAlignment.start,
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Pembayaran hanya bisa melalui transfer",
                                  style: TextStyle(
                                    fontStyle: FontStyle.italic,
                                      fontSize: 15.0,
                                      color: Colors.black,
                                      fontWeight:
                                      FontWeight.w600),
                                ),
                                Padding(
                                  padding: const EdgeInsets
                                      .symmetric(
                                    vertical: 4.0,
                                  ),
                                  child: Text(
                                    "Ongkos kirim 10% dari total belanja",
                                    style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                        fontSize: 15.0,
                                        color: Theme.of(context)
                                            .accentColor,
                                        fontWeight:
                                        FontWeight.w600),
                                  ),
                                ),
                                Text(
                                  "Maksimal pembayaran 1x24 jam setelah melakukan checkout",
                                  style: TextStyle(
                                    fontStyle: FontStyle.italic,
                                      fontSize: 12.0,
                                      color: Colors.black,
                                      fontWeight:
                                      FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(padding: const EdgeInsets.symmetric(
                      vertical: 20.0,
                      horizontal: 24.0,
                    ),
                      child: Row(
                        mainAxisAlignment:
                        MainAxisAlignment.start,
                        children: [
                          
                          Container(
                            padding: EdgeInsets.only(
                              top: 5.0,
                              left: 16.0,
                            ),
                            child: Column(
                              mainAxisAlignment:
                              MainAxisAlignment.start,
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Total                                                                Rp. 110.000",
                                  style: TextStyle(
                                      fontSize: 17.0,
                                      color: Colors.black,
                                      fontWeight:
                                      FontWeight.w600),
                                ),
                                Padding(
                                  padding: const EdgeInsets
                                      .symmetric(
                                    vertical: 10.0,
                                    
                                  ),
                                  child: Text(
                                    "Delivery Charge                                              Rp.    11.000",
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        color: Theme.of(context)
                                            .accentColor,
                                        fontWeight:
                                        FontWeight.w600),
                                  ),
                                ),
                                Text(
                                  "Sub Total                                                            Rp.  121.000",
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.black,
                                      fontWeight:
                                      FontWeight.w600),
                                ),

                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomBtn(
                            text: "                  Pay  Now                 ",
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PaymentMethod()
                                ),
                              );
                            },
                            outlineBtn: false,
                          ),
                        ],
                      ),
                    ),
                  ],
                  ),


            ),

            ),
        );


  }
}
