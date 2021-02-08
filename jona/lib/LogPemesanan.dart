import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LogPemesanan extends StatelessWidget {
  var firebaseUser = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("History"),
        centerTitle: true,
      ),
      body: LayoutBuilder(builder: (context, body) {
        return Center(
          child: SizedBox(
            width: body.maxWidth,
            height: body.maxHeight,
            child: FutureBuilder(
              future: FirebaseFirestore.instance
                  .collection('log_pemesanan_course')
                  .get(),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return Text("ERROR !!!");
                }

                if (snapshot.connectionState == ConnectionState.done) {
                  final List<DocumentSnapshot> documents = snapshot.data.docs;
                  documents.forEach((data) => print(data.id));
                  print(documents.length);

                  return ListView.builder(
                    itemCount: documents.length,
                    itemBuilder: (context, index) {
                      Map<String, dynamic> data = documents[index].data();
                      Map<String, dynamic> paket = data['paket'];
                      print(data['id_pemesanan'] == firebaseUser.uid);
                      return data['id_pemesanan'] != firebaseUser.uid
                          ? Container()
                          : Card(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ListTile(
                                  title: Text(data['course']),
                                  subtitle: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Mentor : ${data['nama_mentor']}"),
                                      Text(
                                          "Paket : ${paket['bulan']} Bulan ${paket['pertemuan']} Pertemuan "),
                                    ],
                                  ),
                                  trailing: Text("${paket['harga']}"),
                                ),
                              ),
                            );
                    },
                  );
                }

                return CircularProgressIndicator();
              },
            ),
          ),
        );
      }),
    );
  }
}
