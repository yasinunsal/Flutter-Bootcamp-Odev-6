import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:odev6/renkler.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {

  double firsatBoxEdge = 65;




  @override
  Widget build(BuildContext context) {
    double emulatorWidth = MediaQuery.of(context).size.width;
    double emulatorHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarRenk,
        title:
        Container(
          height: 40,
          child: TextField(
            maxLines: 1,
            textAlign: TextAlign.center,
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(
              prefixIcon: Container(decoration: BoxDecoration(color: searchBarLogoRenk,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    bottomLeft: Radius.circular(30)),
              ),child: Image.asset("resimler/n11_logo_transparent.png")),
              hintText: "Ürün, kategori, marka ara",
              hintStyle: TextStyle(fontFamily: 'OpenSans'),

              suffixIcon: Icon(Icons.search),
              filled: true,
              fillColor: searchTextFieldRenk,
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(30)),
              contentPadding: EdgeInsets.zero,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Image.asset("resimler/n11_bell.png", height: 42, width: 42,),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: SizedBox(width: 25, height: 25, child: Image.asset("resimler/n11_uye_ol_icon.png")),
                  ),
                  RichText(
                      text: const TextSpan(
                        children: <TextSpan>[
                          TextSpan(text: 'Üye Ol / Giriş Yap ', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, fontFamily: 'OpenSans', color: Color(0xFFE02633))),
                          TextSpan(text: 'fırsatları kaçırma!', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, fontFamily: 'OpenSans', color: Colors.black), )
                        ]
                      ),

                  ),
                ],
              ),

            ),
            Container(color: firsatlarRowRenk,
              child: Padding(
                padding: const EdgeInsets.only(top: 12.0, bottom: 8.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Image.asset("resimler/n11_kuponlar.png", height: firsatBoxEdge, width: firsatBoxEdge),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Kuponlar", style: TextStyle(fontSize: 12, color: firsatlarYaziRenk, fontWeight: FontWeight.bold, fontFamily: 'OpenSans'),),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Image.asset("resimler/n11_sana_ozel.png", height: firsatBoxEdge, width: firsatBoxEdge,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Sana Özel", style: TextStyle(fontSize: 12, color: firsatlarYaziRenk, fontWeight: FontWeight.bold, fontFamily: 'OpenSans'),),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Image.asset("resimler/n11_kampanyalar.png", height: firsatBoxEdge, width: firsatBoxEdge,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Kampanyalar", style: TextStyle(fontSize: 12, color: firsatlarYaziRenk, fontWeight: FontWeight.bold, fontFamily: 'OpenSans'),),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Image.asset("resimler/n11_super_firsatlar.png", height: firsatBoxEdge, width: firsatBoxEdge,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Süper Fırsatlar", style: TextStyle(fontSize: 12, color: firsatlarYaziRenk, fontWeight: FontWeight.bold, fontFamily: 'OpenSans'),),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 155,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Image.asset("resimler/n11_slider_1.png",  width: emulatorWidth,),
                  Image.asset("resimler/n11_slider_2.png",  width: emulatorWidth,),
                  Image.asset("resimler/n11_slider_3.png",  width: emulatorWidth,),
                ],
              ),
            ),
            
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12, top: 8, ),
                  child: Row(
                    children: [
                      Text("Süper Fırsatlar", style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'OpenSans', fontSize: 16)),
                      Padding(
                        padding: const EdgeInsets.only(left: 4),
                        child: SizedBox(height: 20, width: 20,
                            child: Image.asset('resimler/n11_super_firsatlar_icon.png')),
                      ),
                      Spacer(),
                      Text("Tümünü Gör", style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'OpenSans', fontSize: 14, color: Color(0xFFE72331))),
                      Padding(
                        padding: const EdgeInsets.only(right: 12),
                        child: Icon(Icons.arrow_forward_ios, color: Color(0xFFE72331), size: 13,),
                      )
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 12, right: 6, top: 8, bottom: 8),
                        child: Container(width: 150, height: 300,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: containerBorderRenk,
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(10))

                          ),
                          child: Column(
                              children: [
                                Container(width: 150, height: 20,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(8), topRight: Radius.circular(8)),
                                    color: Color(0xFF4E5C77),
                                  ),
                                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(right: 4),
                                        child: Icon(Icons.phone_android_outlined, color: Colors.white, size: 12),
                                      ),
                                      Text("Mobile Özel Fırsat",
                                        style: TextStyle(
                                          fontFamily: 'OpenSans',
                                          fontSize: 9,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),)
                                    ],
                                  ),
                                ),
                                SizedBox(width: 150, height: 150,
                                    child: Stack(
                                      children: [
                                        Image.asset('resimler/n11_urunler_1.png'),
                                        Positioned(
                                            right: 0.0,
                                            top: 0.0,
                                            child: FloatingActionButton(
                                              mini: true,
                                              onPressed: (){},
                                              child: Icon(Icons.favorite_border_outlined, color: Color(0xFF424242)),
                                              backgroundColor: Colors.white,

                                            )),
                                        Positioned(
                                            bottom: 0.0,
                                            child: Padding(
                                              padding: const EdgeInsets.only(bottom: 8),
                                              child: Container(width: 150,
                                                color: Colors.white70.withOpacity(0.7),
                                                child: Align(alignment: Alignment.center, child: Text("AYNI GÜN TESLİMAT", style: TextStyle(fontSize: 12, fontFamily: 'OpenSans', fontWeight: FontWeight.bold, color: Color(0xFF16B74D)),)),
                                              ),
                                            ))
                                      ],
                                    )
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 7.0),
                                  child: Text("Has-Pet Pudrasız Siyah Nitril Muayene Eldiveni 100'lü",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(fontFamily: 'OpenSans'),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 7.0),
                                    child: RatingBar.builder(
                                      itemSize: 20,

                                      initialRating: 3,
                                      minRating: 1,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 5,
                                      itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                                      itemBuilder: (context, _) => Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      onRatingUpdate: (rating) {
                                        print(rating);
                                      },
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.all(7.0),
                                    child: Text("59,99 TL", style: TextStyle(fontSize: 16, fontFamily: 'OpenSans', fontWeight: FontWeight.bold),),
                                  ),
                                ),

                              ]
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 6, right: 6, top: 8, bottom: 8),
                        child: Container(width: 150, height: 300,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: containerBorderRenk,
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(10))

                          ),
                          child: Column(
                              children: [
                                Container(width: 150, height: 20,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(8), topRight: Radius.circular(8)),
                                    color: Color(0xFFFB3D49),
                                  ),
                                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(right: 4),
                                        child: Icon(Icons.access_time_outlined, color: Colors.white, size: 12),
                                      ),
                                      Text("Günün Süper Fırsatı",
                                        style: TextStyle(
                                          fontFamily: 'OpenSans',
                                          fontSize: 9,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),)
                                    ],
                                  ),
                                ),
                                SizedBox(width: 150, height: 150,
                                    child: Stack(
                                        children: [
                                          Image.asset('resimler/n11_urunler_2.png'),
                                          Positioned(
                                              right: 0.0,
                                              top: 0.0,
                                              child: FloatingActionButton(
                                                mini: true,
                                                onPressed: (){},
                                                child: Icon(Icons.favorite_border_outlined, color: Color(0xFF424242)),
                                                backgroundColor: Colors.white,

                                          )),
                                          Positioned(
                                              bottom: 0.0,
                                              child: Padding(
                                                padding: const EdgeInsets.only(bottom: 8),
                                                child: Container(width: 150,
                                                  color: Colors.white70.withOpacity(0.7),
                                                  child: Align(alignment: Alignment.center, child: Text("ÜCRETSİZ KARGO", style: TextStyle(fontSize: 12, fontFamily: 'OpenSans', fontWeight: FontWeight.bold, color: Color(0xFF16B74D)),)),
                                                ),
                                              ))
                                        ],
                                    )
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 7.0),
                                  child: Text("Xiaomi 11T 8 GB 128 GB (Xiaomi Türkiye Garantili)",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(fontFamily: 'OpenSans'),),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 7.0),
                                    child: RatingBar.builder(
                                      itemSize: 20,

                                      initialRating: 4.5,
                                      minRating: 1,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 5,
                                      itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                                      itemBuilder: (context, _) => Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      onRatingUpdate: (rating) {
                                        print(rating);
                                      },
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.all(7.0),
                                    child: Text("12.347,54 TL", style: TextStyle(fontSize: 16, fontFamily: 'OpenSans', fontWeight: FontWeight.bold),),
                                  ),
                                ),

                              ]
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 6, right: 6, top: 8, bottom: 8),
                        child: Container(width: 150, height: 300,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: containerBorderRenk,
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(10))

                          ),
                          child: Column(
                              children: [
                                Container(width: 150, height: 20,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(8), topRight: Radius.circular(8)),
                                    color: Color(0xFFFB3D49),
                                  ),
                                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Süper Fırsat",
                                        style: TextStyle(
                                          fontFamily: 'OpenSans',
                                          fontSize: 9,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),)
                                    ],
                                  ),
                                ),
                                SizedBox(width: 150, height: 150,
                                    child: Stack(
                                      children: [
                                        Image.asset('resimler/n11_urunler_3.png'),
                                        Positioned(
                                            right: 0.0,
                                            top: 0.0,
                                            child: FloatingActionButton(
                                              mini: true,
                                              onPressed: (){},
                                              child: Icon(Icons.favorite_border_outlined, color: Color(0xFF424242)),
                                              backgroundColor: Colors.white,

                                            )),
                                        Positioned(
                                            bottom: 0.0,
                                            child: Padding(
                                              padding: const EdgeInsets.only(bottom: 8),
                                              child: Container(width: 150,
                                                color: Colors.white70.withOpacity(0.7),
                                                child: Align(alignment: Alignment.center, child: Text("AYNI GÜN TESLİMAT", style: TextStyle(fontSize: 12, fontFamily: 'OpenSans', fontWeight: FontWeight.bold, color: Color(0xFF16B74D)),)),
                                              ),
                                            ))
                                      ],
                                    )
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 7.0),
                                  child: Text("Erkek Siyah Manşetli Eşofman Altı Siyah",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(fontFamily: 'OpenSans'),),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 7.0),
                                    child: RatingBar.builder(
                                      itemSize: 20,
                                      initialRating: 3.5,
                                      minRating: 1,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 5,
                                      itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                                      itemBuilder: (context, _) => Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      onRatingUpdate: (rating) {
                                        print(rating);
                                      },
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.all(7.0),
                                    child: Text("59,90 TL", style: TextStyle(fontSize: 16, fontFamily: 'OpenSans', fontWeight: FontWeight.bold),),
                                  ),
                                ),
                              ]
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

          ],


        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled),
                label: "Ana Sayfa"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.category_outlined),
                label: "Kategoriler"

            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_outlined),
                label: "Sepetim"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border_outlined),
                label: "Listelerim"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_box_outlined),
                label: "Hesabım"
            ),
          ],
        unselectedItemColor: Color(0xFF707070),
        selectedItemColor: Color(0xFF424242),
        selectedIconTheme: IconThemeData(color: Color(0xFF424242)),
        unselectedIconTheme: IconThemeData(color: Color(0xFF424242)),


        showUnselectedLabels: true,
        selectedLabelStyle: TextStyle(fontFamily: 'OpenSans', fontSize: 14, color: Color(0xFF1F1F1F)),
        unselectedLabelStyle: TextStyle(fontFamily: 'OpenSans', fontSize: 14, color: Color(0xFF707070)),
      ),

    );
  }
}
