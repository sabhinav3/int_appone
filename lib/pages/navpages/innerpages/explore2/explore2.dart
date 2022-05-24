import 'package:flutter/material.dart';
import 'package:int_appone/pages/navpages/innerpages/explore1/explore1_detail.dart';
import 'package:int_appone/pages/navpages/innerpages/explore2/explore2_detail.dart';
import 'package:int_appone/widgets/app_large_text.dart';
import 'package:int_appone/widgets/app_med_text.dart';
import 'package:int_appone/widgets/app_noramal_text.dart';
import 'package:int_appone/widgets/app_text.dart';

class ExplorePage2 extends StatelessWidget {
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
                childAspectRatio: 4,
                children: <Widget>[
                  AppLargeText(text: "Conference Ad-hoc Committee"),
                  _buildCard(
                    'Bhuvanesh Boojala \n- Chair',
                    'img/explore_page/explore2/adhoc/bhuvanesh-boojala.png',
                    context,
                    "Chairperson",
                  ),
                  _buildCard(
                    'Madhu Bommineni \n- Vice Chair',
                    'img/explore_page/explore2/adhoc/madhu.png',
                    context,
                    "jai ballaya",
                  ),
                  _buildCard(
                    'Sudheer Bandaru \n- Convener',
                    'img/explore_page/explore2/adhoc/sudheer.png',
                    context,
                    "Random description",
                  ),
                  _buildCard(
                    'Kiran Pasham \n- Coordinaor ',
                    'img/explore_page/explore2/adhoc/kiran.png',
                    context,
                    "nice",
                  ),
                  _buildCard(
                    'Parmesh Bheemreddy \n- Member',
                    'img/explore_page/explore2/adhoc/parmesh.png',
                    context,
                    "thamannn",
                  ),
                  _buildCard(
                    'Dr.Parashuram Pinnapureddy \n- Member',
                    'img/explore_page/explore2/adhoc/parashuram.png',
                    context,
                    "nice",
                  ),
                  _buildCard(
                    'Sharath Vemula \n- Member',
                    'img/explore_page/explore2/adhoc/sharath.png',
                    context,
                    "his is the description",
                  ),
                  _buildCard(
                    'Anil Boddireddy \n- Member',
                    'img/explore_page/explore2/adhoc/anil-boddireddy.png',
                    context,
                    "Balaji ",
                  ),
                  _buildCard(
                    'Raghuveer Bhandaru \n- Member',
                    'img/explore_page/explore2/adhoc/raghuveer.png',
                    context,
                    "this is Ilayaraja",
                  ),
                  _buildCard(
                    'Rinda Reddy \n- Member',
                    'img/explore_page/explore2/adhoc/rinda.png',
                    context,
                    "this is Ilayaraja",
                  ),
                  _buildCard(
                    'Dr. Meher Medavaram \n- Member',
                    'img/explore_page/explore2/adhoc/meher.png',
                    context,
                    "this is Ilayaraja",
                  ),
                  _buildCard(
                    'Sunny Reddy \n- Member',
                    'img/explore_page/explore2/adhoc/sunny.png',
                    context,
                    "this is sunny",
                  ),
                  _buildCard(
                    'Sudha Rani Kondapu \n- Member',
                    'img/explore_page/explore2/adhoc/sudha.png',
                    context,
                    "this is Ilayaraja",
                  ),
                  _buildCard(
                    'Sainath Boyapalli \n- Member',
                    'img/explore_page/explore2/adhoc/sainath.png',
                    context,
                    "this is Ilayaraja",
                  ),
                  _buildCard(
                    'Hari Prasad Reddy Lingala \n- Member',
                    'img/explore_page/explore2/adhoc/hari_prasad.png',
                    context,
                    "this is Ilayaraja",
                  ),

                  // another committee

                  AppLargeText(text: "Core Committee"),
                  _buildCard(
                    'Sudheer Bandaru \n- Convener',
                    'img/explore_page/explore2/adhoc/sudheer.png',
                    context,
                    "Random description",
                  ),
                  _buildCard(
                    'Kiran Pasham \n- Coordinator ',
                    'img/explore_page/explore2/adhoc/kiran.png',
                    context,
                    "nice",
                  ),
                  _buildCard(
                    'Krishna K.Reddy \n- Director',
                    'img/explore_page/explore2/adhoc/krishna.png',
                    context,
                    "Random description",
                  ),
                  _buildCard(
                    'Sai Sudini \n- Co-Convener',
                    'img/explore_page/explore2/adhoc/sai.png',
                    context,
                    "Random description",
                  ),
                  _buildCard(
                    'Ravi Challa \n- Co-Coordinator',
                    'img/explore_page/explore2/adhoc/ravi.png',
                    context,
                    "Random description",
                  ),
                  _buildCard(
                    'Ravinder Bojja \n- Director',
                    'img/explore_page/explore2/adhoc/ravinder.png',
                    context,
                    "Random description",
                  ),
                  _buildCard(
                    'Sravan Paduru \n- Local Coordinator',
                    'img/explore_page/explore2/adhoc/sravan.png',
                    context,
                    "Random description",
                  ),

                  AppLargeText(text: "Conference Advisory Committee"),
                  _buildCard(
                    'Jayanth Challa \n- Chair',
                    'img/explore_page/explore2/adhoc/jayanth.png',
                    context,
                    "Random description",
                  ),
                  _buildCard(
                    'Vinod Koduru \n- Co-Chair',
                    'img/explore_page/explore2/adhoc/vinod.png',
                    context,
                    "nice",
                  ),
                  _buildCard(
                    'Karunakar Asireddy \n- Member',
                    'img/explore_page/explore2/adhoc/karunakar.png',
                    context,
                    "Random description",
                  ),
                  _buildCard(
                    'Mahendar Musku \n- Member',
                    'img/explore_page/explore2/adhoc/mahendar.png',
                    context,
                    "Random description",
                  ),
                  _buildCard(
                    'Goutham Goli \n- Member',
                    'img/explore_page/explore2/adhoc/goutham.png',
                    context,
                    "Random description",
                  ),
                  AppLargeText(text: "Co-Host Committee"),
                  SizedBox(
                    height: 100,
                  ),
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
          const EdgeInsets.only(top: 1.0, bottom: 1.0, left: 5.0, right: 5.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => ExploreDetail2(
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
          child: Row(
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

              SizedBox(
                width: 20,
              ),
              Hero(
                tag: imgPath,
                child: Container(
                  // padding: const EdgeInsets.only(left: 250),
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      alignment: Alignment.bottomLeft,
                      image: AssetImage(imgPath),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 3),
              SizedBox(
                width: 20,
              ),

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
                    fontSize: 17.0),
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
