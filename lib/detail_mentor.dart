import 'package:flutter/material.dart';
import 'package:jona_app/data.dart';
import 'constants.dart';

class DetailMentor extends StatelessWidget {
  final int index;
  final StudyInfo studyInfo;

  const DetailMentor({Key key, this.studyInfo, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> listPaket = [
      {"bulan": "1", "pertemuan": "1", "harga": "30.000"},
      {"bulan": "1", "pertemuan": "4", "harga": "120.000"},
      {"bulan": "1", "pertemuan": "8", "harga": "240.000"},
      {"bulan": "3", "pertemuan": "4", "harga": "360.000"},
      {"bulan": "3", "pertemuan": "8", "harga": "720.000"}
    ];
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 250),
                      Text(
                        studyInfo.mentor[index].nama,
                        style: TextStyle(
                          fontFamily: 'Avenir',
                          fontSize: 35,
                          color: primaryTextColor,
                          fontWeight: FontWeight.w900,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        studyInfo.mentor[index].ttl,
                        style: TextStyle(
                          fontFamily: 'Avenir',
                          fontSize: 25,
                          color: primaryTextColor,
                          fontWeight: FontWeight.w300,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Divider(
                        color: Colors.black38,
                        thickness: 3,
                        height: 20,
                      ),
                    ],
                  ),
                ),
                Container(height: 269,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 32.0, right: 32.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Education",
                                style: TextStyle(
                                  fontFamily: 'Avenir',
                                  fontSize: 31,
                                  color: primaryTextColor,
                                  fontWeight: FontWeight.w300,
                                ),
                                textAlign: TextAlign.left,
                              ),
                              Divider(
                                color: Colors.black38,
                                endIndent: 300,
                              ),
                              Text(
                                studyInfo.mentor[index].education ?? '',
                                maxLines: 5,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontFamily: 'Avenir',
                                  fontSize: 20,
                                  color: contentTextColor,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Experience",
                                style: TextStyle(
                                  fontFamily: 'Avenir',
                                  fontSize: 31,
                                  color: primaryTextColor,
                                  fontWeight: FontWeight.w300,
                                ),
                                textAlign: TextAlign.left,
                              ),
                              Divider(
                                color: Colors.black38,
                                endIndent: 300,
                              ),
                              Container(
                                height: 200,
                                child: ListView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  itemCount:
                                      studyInfo.mentor[index].experience.length,
                                  itemBuilder: (BuildContext ctxt, int indexExp) {
                                    return new Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            studyInfo.mentor[index]
                                                    .experience[indexExp] ??
                                                '',
                                            maxLines: 5,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                              fontFamily: 'Avenir',
                                              fontSize: 20,
                                              color: contentTextColor,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          )
                                        ]);
                                  },
                                ),
                              ),
                              Divider(color: Colors.black38),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 32.0),
                          child: Text(
                            'Pilih Paket Belajarnya',
                            style: TextStyle(
                              fontFamily: 'Avenir',
                              fontSize: 25,
                              color: const Color(0xff47455f),
                              fontWeight: FontWeight.w300,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 150,
                          padding: const EdgeInsets.only(left: 32.0),
                          child: ListView.builder(
                              itemCount: listPaket.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, indexPaket) {
                                return cardPaket(
                                    listPaket[indexPaket]["bulan"].toString(),
                                    listPaket[indexPaket]["pertemuan"].toString(),
                                    listPaket[indexPaket]["harga"].toString());
                              }),
                        ),
                        SizedBox(
                          height: 20,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Positioned(
              right: -75,
              child: Card(
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Image.asset(
                    studyInfo.mentor[index].iconImage,
                    width: 250,
                    height: 250,
                    fit: BoxFit.cover,
                  )),
            ),
            Positioned(
              top: 60,
              left: 32,
              child: Text(
                "Mentor",
                style: TextStyle(
                  fontFamily: 'Avenir',
                  fontSize: 60,
                  color: primaryTextColor.withOpacity(0.08),
                  fontWeight: FontWeight.w900,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget cardPaket(String bulan, String pertemuan, String harga) {
    return Container(
      width: 250,
      child: Card(
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          child: Container(
            decoration:  BoxDecoration(
            gradient: LinearGradient(
                colors: [gradientStartColor, gradientEndColor],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.3, 0.7])),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15,20,15,0),
                child: Column(
                  children: [
                    Text(
                      "Paket $bulan Bulan",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("$pertemuan Kali Pertemuan",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white)),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Rp. $harga",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
