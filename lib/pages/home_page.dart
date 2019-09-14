import 'package:commerce/helpers/helpers.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: BottomNavigationBar(
        unselectedIconTheme: IconThemeData(color: Colors.grey.shade500),
        selectedIconTheme: IconThemeData(color: theme.accentColor),
        // selectedLabelStyle: TextStyle(color: theme.accentColor),
        items: [
          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.home), title: Text('Home', style: TextStyle(color: theme.accentColor, fontSize: 12.0))),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), title: Text('Shop', style: TextStyle(color: Colors.grey.shade900, fontSize: 12.0))),
          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.shoppingBag), title: Text('Bag', style: TextStyle(color: Colors.grey.shade900, fontSize: 12.0))),
          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.heart), title: Text('Favourites', style: TextStyle(color: Colors.grey.shade900, fontSize: 12.0))),
          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.user), title: Text('Profile', style: TextStyle(color: Colors.grey.shade900, fontSize: 12.0))),
        ],
      ),
      body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool isScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 200.0,
                floating: false,
                pinned: true,
                automaticallyImplyLeading: false,
                elevation: 0.0,

                // backgroundColor: Colors.transparent,
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.pin,
                  centerTitle: true,
                  title: Text("Elox Stores"),
                  background: Image.asset(
                    'assets/images/Smallbanner.png',
                    fit: BoxFit.cover,
                  ),
                ),
              )
            ];
          },
          
          body: ListView(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 40.0),
            children: <Widget>[
              saleSection(theme, context),
              SizedBox(
                height: 40.0,
              ),
              newSection(theme, context),
            ],
          )),
    );
  }

  Flex saleSection(ThemeData theme, BuildContext context) {
    return Flex(
      direction: Axis.vertical,
      children: <Widget>[
        Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Flex(
              direction: Axis.vertical,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Sale",
                  style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.grey.shade900,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text("Super summer sales", style: theme.textTheme.caption),
              ],
            ),
            InkWell(
              onTap: () {},
              child: Text(
                "view all",
                style: theme.textTheme.caption,
              ),
            ),
          ],
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 320.0,
          margin: EdgeInsets.only(top: 20.0),
          child: ListView(
            scrollDirection: Axis.horizontal,
            primary: false,
            children: <Widget>[
              discountProduct(
                theme,
                20,
                "Dorothy Perkins",
                "Evening Dress",
                15,
                12,
                "assets/images/photo.png",
              ),
              discountProduct(
                theme,
                15,
                "Stilly",
                "Short Dress",
                22,
                19,
                "assets/images/photo1.png",
              ),
              discountProduct(
                theme,
                20,
                "Nike",
                "Sports Cloth",
                15,
                12,
                "assets/images/photo2.png",
              ),
              discountProduct(
                theme,
                25,
                "Adidas",
                "Yeezy Pullover",
                15,
                12,
                "assets/images/photo3.png",
              ),
            ],
          ),
        )
      ],
    );
  }

  Container discountProduct(ThemeData theme, int discount, String brand,
      String name, int old, int current, String image) {
    return Container(
      width: 200.0,
      height: 350.0,
      child: Stack(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 230.0,
                width: 180.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(5.0)),
              ),
              Positioned(
                top: 10.0,
                left: 6.0,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 7.0, vertical: 3.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: theme.accentColor,
                  ),
                  child: Text(
                    "-$discount%",
                    style: theme.textTheme.display2,
                  ),
                ),
              ),
            ],
          ),
          Container(
            // height: 200.0 febe38,
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: 200.0,
                  left: 115.0,
                  child: MaterialButton(
                    color: Colors.white,
                    padding: EdgeInsets.all(8.0),
                    elevation: 3.0,
                    shape: CircleBorder(),
                    child: Center(
                      child: Icon(
                        FontAwesomeIcons.heart,
                        color: Colors.grey.shade500,
                        size: 20.0,
                      ),
                    ),
                    onPressed: () {},
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: 240.0,
            child: Flex(
              direction: Axis.vertical,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Flex(
                  direction: Axis.horizontal,
                  children: <Widget>[
                    Icon(
                      FontAwesomeIcons.solidStar,
                      size: 14.0,
                      color: Helpers.hexToColor("#febe38"),
                    ),
                    SizedBox(
                      width: 3.0,
                    ),
                    Icon(
                      FontAwesomeIcons.solidStar,
                      size: 14.0,
                      color: Helpers.hexToColor("#febe38"),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Icon(
                      FontAwesomeIcons.solidStar,
                      size: 14.0,
                      color: Helpers.hexToColor("#febe38"),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Icon(
                      FontAwesomeIcons.solidStar,
                      size: 14.0,
                      color: Helpers.hexToColor("#febe38"),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Icon(
                      FontAwesomeIcons.solidStar,
                      size: 14.0,
                      color: Helpers.hexToColor("#febe38"),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      "(10)",
                      style: TextStyle(
                        fontSize: 11.0,
                        color: Colors.grey.shade600,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 6.0,
                ),
                Text(
                  brand,
                  style: TextStyle(
                    fontSize: 13.0,
                    color: Colors.grey.shade600,
                  ),
                ),
                SizedBox(
                  width: 3.0,
                ),
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 17.0,
                    color: Colors.grey.shade800,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 3.0,
                ),
                Flex(
                  direction: Axis.horizontal,
                  children: <Widget>[
                    Text(
                      "$old\$",
                      style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.grey.shade400,
                          decoration: TextDecoration.lineThrough),
                    ),
                    SizedBox(
                      width: 3.0,
                    ),
                    Text(
                      "$current\$",
                      style: TextStyle(
                        fontSize: 12.0,
                        color: theme.accentColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Flex newSection(ThemeData theme, BuildContext context) {
    return Flex(
      direction: Axis.vertical,
      children: <Widget>[
        Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Flex(
              direction: Axis.vertical,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "New",
                  style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.grey.shade900,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text("You've never seen these before",
                    style: theme.textTheme.caption),
              ],
            ),
            InkWell(
              onTap: () {},
              child: Text(
                "view all",
                style: theme.textTheme.caption,
              ),
            ),
          ],
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 320.0,
          margin: EdgeInsets.only(top: 20.0),
          child: ListView(
            scrollDirection: Axis.horizontal,
            primary: false,
            children: <Widget>[
              newProduct(
                theme,
                "Off White",
                "Jeans",
                15,
                "assets/images/image.png",
              ),

              newProduct(
                theme,
                "Dorothy Perkins",
                "Evening Dress",
                15,
                "assets/images/photo3.png",
              ),
               newProduct(
                theme,
                "Fenty",
                "Funky Dress",
                15,
                "assets/images/image2.png",
              ),
              newProduct(
                theme,
                "Balenciaga",
                "Robo Cop",
                15,
                "assets/images/image3.png",
              ),
              
            ],
          ),
        )
      ],
    );
  }

  Container newProduct(
      ThemeData theme, String brand,
      String name, int price, String image) {
        return Container(
      width: 200.0,
      height: 350.0,
      child: Stack(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 230.0,
                width: 180.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(5.0)),
              ),
              Positioned(
                top: 10.0,
                left: 6.0,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 7.0, vertical: 3.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.black,
                  ),
                  child: Text(
                    "NEW",
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.white
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            // height: 200.0 febe38,
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: 200.0,
                  left: 115.0,
                  child: MaterialButton(
                    color: Colors.white,
                    padding: EdgeInsets.all(8.0),
                    elevation: 3.0,
                    shape: CircleBorder(),
                    child: Center(
                      child: Icon(
                        FontAwesomeIcons.heart,
                        color: Colors.grey.shade500,
                        size: 20.0,
                      ),
                    ),
                    onPressed: () {},
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: 240.0,
            child: Flex(
              direction: Axis.vertical,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Flex(
                  direction: Axis.horizontal,
                  children: <Widget>[
                    Icon(
                      FontAwesomeIcons.solidStar,
                      size: 14.0,
                      color: Helpers.hexToColor("#febe38"),
                    ),
                    SizedBox(
                      width: 3.0,
                    ),
                    Icon(
                      FontAwesomeIcons.solidStar,
                      size: 14.0,
                      color: Helpers.hexToColor("#febe38"),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Icon(
                      FontAwesomeIcons.solidStar,
                      size: 14.0,
                      color: Helpers.hexToColor("#febe38"),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Icon(
                      FontAwesomeIcons.solidStar,
                      size: 14.0,
                      color: Helpers.hexToColor("#febe38"),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Icon(
                      FontAwesomeIcons.solidStar,
                      size: 14.0,
                      color: Helpers.hexToColor("#febe38"),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      "(10)",
                      style: TextStyle(
                        fontSize: 11.0,
                        color: Colors.grey.shade600,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 6.0,
                ),
                Text(
                  brand,
                  style: TextStyle(
                    fontSize: 13.0,
                    color: Colors.grey.shade600,
                  ),
                ),
                SizedBox(
                  width: 3.0,
                ),
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 17.0,
                    color: Colors.grey.shade800,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 3.0,
                ),
                Flex(
                  direction: Axis.horizontal,
                  children: <Widget>[
                    Text(
                      "$price\$",
                      style: TextStyle(
                        fontSize: 12.0,
                        color: theme.accentColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  
      }
}
