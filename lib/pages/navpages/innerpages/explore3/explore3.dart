import 'package:flutter/material.dart';
import 'package:int_appone/pages/navpages/innerpages/explore1/explore1_detail.dart';
import 'package:int_appone/pages/navpages/innerpages/explore3/explore3_detail.dart';

class ExplorePage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // backgroundColor: const Color(0xFFFCFAF8),
      body: ListView(
        children: <Widget>[
          const SizedBox(height: 15.0),
          Container(
              padding: const EdgeInsets.only(right: 15.0),
              width: MediaQuery.of(context).size.width - 30.0,
              height: MediaQuery.of(context).size.height - 30.0,
              child: GridView.count(
                crossAxisCount: 1,
                primary: false,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 15.0,
                childAspectRatio: 0.8,
                children: <Widget>[
                  _buildCard('Dream Valley Golf Cup', 'img/golf.jpg', context,
                      "ATA Dream Valley Celebrity GOLF Tournament"),
                ],
              )),
          const SizedBox(height: 3.0)
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        backgroundColor: Colors.redAccent,
        child: const Icon(Icons.arrow_back_rounded),
      ),
    );
  }

  Widget _buildCard(String name, String imgPath, context, String description) {
    return Padding(
      padding:
          const EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => ExploreDetail3(
                assetPath: imgPath,
                cookiename: name,
                description: description,
              ),
            ),
          );
        },
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 3.0,
                    blurRadius: 5.0)
              ],
              color: Colors.white),
          child: Column(
            children: [
              //this is for the favourites icon

              // Padding(
              //     padding: EdgeInsets.all(5.0),
              //     child: Row(
              //         mainAxisAlignment: MainAxisAlignment.end,
              //         children: [
              //           isFavorite
              //               ? Icon(Icons.favorite, color: Color(0xFFEF7532))
              //               : Icon(Icons.favorite_border,
              //                   color: Color(0xFFEF7532))
              //         ])),

              const SizedBox(height: 20),
              Hero(
                tag: imgPath,
                child: Container(
                  height: 370,
                  width: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(imgPath), fit: BoxFit.fill),
                  ),
                ),
              ),
              const SizedBox(height: 10),

              // this is for the price section

              // Text(price,
              //     style: TextStyle(
              //         color: Color(0xFFCC8053),
              //         fontFamily: 'Varela',
              //         fontSize: 14.0)),
              Text(
                name,
                style: const TextStyle(
                  color: Color(0xFF575E67),
                  fontFamily: 'Varela',
                  fontSize: 17.0,
                  fontWeight: FontWeight.w700,
                ),
              ),

              // Padding(
              //   padding: EdgeInsets.all(8.0),
              //   child: Container(color: Color(0xFFEBEBEB), height: 1.0),
              // ),
              // Padding(
              //     padding: EdgeInsets.only(left: 5.0, right: 5.0),
              //     child: Row(
              //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //         children: [
              //           if (!added) ...[
              //             Icon(Icons.shopping_basket,
              //                 color: Color(0xFFD17E50), size: 12.0),
              //             Text('Add to cart',
              //                 style: TextStyle(
              //                     fontFamily: 'Varela',
              //                     color: Color(0xFFD17E50),
              //                     fontSize: 12.0))
              //           ],
              //           if (added) ...[
              //             Icon(Icons.remove_circle_outline,
              //                 color: Color(0xFFD17E50), size: 12.0),
              //             Text('3',
              //                 style: TextStyle(
              //                     fontFamily: 'Varela',
              //                     color: Color(0xFFD17E50),
              //                     fontWeight: FontWeight.bold,
              //                     fontSize: 12.0)),
              //             Icon(Icons.add_circle_outline,
              //                 color: Color(0xFFD17E50), size: 12.0),
              //           ]
              //         ]))
            ],
          ),
        ),
      ),
    );
  }
}
