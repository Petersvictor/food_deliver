import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:multi_ui/constants.dart';
import 'package:multi_ui/fooddel/food_detail/food_detail.dart';
import 'package:multi_ui/models/product.dart';

class HomePage extends StatelessWidget {

  final List<Map<String, String>> categories = [
    {
      "title": "Pizza",
      "image": "assets/svgs/pizza-slice.svg"
    },
    {
      "title": "Burger",
      "image": "assets/svgs/hamburger.svg"
    },
    {
      "title": "Bread",
      "image": "assets/svgs/steak.svg"
    },
    {
      "title": "Meat",
      "image": "assets/svgs/meat.svg"
    },
    {
      "title": "Drink",
      "image": "assets/svgs/cheers.svg"
    },
    {
      "title": "Pizza",
      "image": "assets/svgs/pizza-slice.svg"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      bottomNavigationBar: CustomNavButton(),
      appBar: AppBar(
        actions: [
          IconButton(icon: Icon(Icons.shopping_cart_outlined), onPressed: () {}),
        ],
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  height: 56,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0XFFF1F1F1),
                  ),
                  child: Row(
                    children: [
                      Icon(
                          Icons.search,
                        color: Color(0XFF474747),
                      ),
                     SizedBox(width: 3,),
                     Expanded(
                       flex: 2,
                         child: TextField(
                           maxLines: null,
                           decoration: InputDecoration(
                             hintText: 'What do you want to eat?',
                             hintStyle: TextStyle(
                                 color: Color(0XFF858585),
                                 fontSize: 18
                             ),
                             border: InputBorder.none,
                           ),
                         )),
                      Icon(Icons.filter_list),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Categories',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'View all',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ...List.generate(categories.length, (index) {
                      return CategoryItem(
                        icon: categories[index]['image'],
                        title: categories[index]['title'],
                      );
                    }),
                  ],
                ),
              ),
              TitleAndMore(title: 'Special Offers', press: () {},),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ...List.generate(5, (index){
                      return FoodItem(
                        product: demoProducts[index],
                        discounted: true,
                        press: () { Navigator.push(context, MaterialPageRoute(builder: (context) => FoodDetail(product: demoProducts[index])));
                      },);
                    })
                  ],
                ),
              ),
              TitleAndMore(title: 'Top Rated', press: () {},),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ...List.generate(demoProducts.length, (index){
                      return FoodItem(
                        product: demoProducts[index],
                        press: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => FoodDetail(product: demoProducts[index],)));
                        },
                      );
                    })
                  ],
                ),
              ),
              SizedBox(height: 15,),
              TitleAndMore(title: 'Top Restaurant', press: () {},),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ...List.generate(5, (index){
                      return RestaurantCard();
                    })
                  ],
                ),
              ),
              SizedBox(height: 20,)
            ],
          ),
        ),
      ),
    );
  }
}

class TitleAndMore extends StatelessWidget {
  const TitleAndMore({
    Key key, this.title, this.press,
  }) : super(key: key);

  final String title;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
          ),
          GestureDetector(
            onTap: press,
            child: Text(
              'View all',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CustomNavButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [kDefaultShadow],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Icon(
                  Icons.home,
                    color: Color(0XFFE73D47)
                ),
                SizedBox(height: 3,),
                Text(
                    'Home',
                  style: TextStyle(
                    color: Color(0XFFE73D47)
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Icon(
                  Icons.explore,
                  color: Color(0XFF858585),
                ),
                SizedBox(height: 3,),
                Text('Explore', style: TextStyle(color: Color(0XFF858585),),)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Icon(
                  Icons.favorite,
                  color: Color(0XFF858585),
                ),
                SizedBox(height: 3,),
                Text('Wishlist', style: TextStyle(color: Color(0XFF858585),),)
              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.all(8.0),
            child: Column(
              children: [
                Icon(
                  Icons.notifications_active,
                  color: Color(0XFF858585),
                ),
                SizedBox(height: 3,),
                Text('Notifications', style: TextStyle(color: Color(0XFF858585),),)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Icon(
                  Icons.account_circle,
                  color: Color(0XFF858585),
                ),
                SizedBox(height: 3,),
                Text('Profile', style: TextStyle(color: Color(0XFF858585),),)
              ],
            ),
          ),
        ],
      ),
    );
  }
}


class RestaurantCard extends StatelessWidget {
  const RestaurantCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: 160,
        width: 216,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7.0),
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 100,
              width: 216,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(7.0),
                    topLeft: Radius.circular(7.0)
                  ),
                image: DecorationImage(
                  image: AssetImage('assets/images/casey-lee-awj7sRviVXo-unsplash.jpg'),
                  fit: BoxFit.cover
                )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    height: 29,
                    width: 41,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(7.0)
                      )
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.star,
                          size: 16,
                          color: Color(0XFFFFC107),
                        ),
                        Text(
                          '4.5',
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w600
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 5,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Cafe Rabina',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18
                        ),
                      ),
                      SizedBox(
                        width: 108,
                        child: Text(
                          'Chinese, Italian, burgers, BBQ, etc',
                          style: TextStyle(
                              fontSize: 12,
                            fontWeight: FontWeight.w400
                          ),
                        ),
                      )
                    ],
                  ),
                  Spacer(),
                  Text(
                    '\$4 - \$35',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class FoodItem extends StatelessWidget {
  const FoodItem({
    Key key, this.discounted = false, this.press, this.product,
  }) : super(key: key);

  final bool discounted;
  final GestureTapCallback press;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 10),
      child: SizedBox(
        width: 160,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: press,
              child: Container(
                height: 143,
                width: 160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(7),
                    topRight: Radius.circular(7),
                    bottomRight: Radius.circular(7),
                  ),
                  boxShadow: [kDefaultShadow],
                  image: DecorationImage(
                    image: AssetImage(product.image),
                    fit: BoxFit.cover
                  )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (discounted == true)
                    Container(
                      height: 23,
                      width: 38,
                      decoration: BoxDecoration(
                        color: Color(0XFFE73D47),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(7)
                        )
                      ),
                      child: Center(
                          child: Text(
                              product.discount.toString() + '%',
                            style: TextStyle(
                              color: Colors.white
                            ),
                          )),
                    ),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          padding: EdgeInsets.all(3),
                          height: 23,
                          width: 38,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(7),
                            )
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.star,
                                size: 16,
                                color: Color(0XFFFFC107),
                              ),
                              Text(
                                product.rating.toString(),
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600
                                ),
                              )
                            ],
                          )
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 7,),
            Row(
              children: [
                SizedBox(
                  width: 80,
                  child: Text(
                    product.title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                ),
                Spacer(),
                Text(
                  '\$' + product.price.toString(),
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    Key key, @required this.title,
    @required this.icon,
  }) : super(key: key);

  final String title, icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.black
              )
            ),
            child: SvgPicture.asset(icon, height: 20, width: 20,),
          ),
          SizedBox(height: 5,),
          Text(
            title,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500
            ),
          )
        ],
      ),
    );
  }
}
