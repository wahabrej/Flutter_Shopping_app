import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/screen/product_screen.dart';

class HomePage extends StatelessWidget {
  final List<String> tabs = ['All', 'Category', 'Top', 'Recommended'];
  final List<String> imgaeList = [
    "images/image1.jpg",
    "images/image2.jpg",
    "images/image3.jpg",
    "images/image4.jpg",
    "images/image1.jpg",
    "images/image2.jpg",
    "images/image3.jpg",
  ];
  final List<String> productTitle = [
    "Warm Zipper",
    "Knitted woo !",
    "Zipper Win",
    "Child win",
    "Warm Zipper",
    "Knitted woo !",
    "Zipper Win",
  ];
  final List<String> price = [
    "\$300",
    "\$500",
    "\$700",
    "\$400",
    "\$300",
    "\$500",
    "\$700",
  ];
  final List<String> review = [
    "54",
    "120",
    "593",
    "434",
    "54",
    "120",
    "593",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 12, right: 12, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Search and Notification Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.05),
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 1,
                              spreadRadius: 1,
                            ),
                          ],
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search, color: Colors.black),
                            border: InputBorder.none,
                            labelText: "Find Your Product ..",
                            labelStyle: TextStyle(fontSize: 10),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Container(
                      padding: const EdgeInsets.all(15),
                      height: 50,
                      width: MediaQuery.of(context).size.width / 7,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.05),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 1,
                            spreadRadius: 1,
                          ),
                        ],
                      ),
                      child: Icon(
                        Icons.notifications,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),

                // Banner Image
                Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFF0DD),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        blurRadius: 1,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  child: Image.asset("images/freed.png"),
                ),

                SizedBox(height: 20),

                // Tabs ListView
                SizedBox(
                  height: 50,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: tabs.length,
                    itemBuilder: (context, index) {
                      return FittedBox(
                        child: Container(
                          height: 40,
                          margin: EdgeInsets.all(8),
                          padding: EdgeInsets.only(left: 15, right: 15),
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.05),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: FittedBox(
                              child: Text(
                                tabs[index],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),

                SizedBox(height: 20),

                // Horizontal ListView for Images
                SizedBox(
                  height: 250,
                  child: ListView.builder(
                    itemCount: imgaeList.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 150,
                              child: Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (contex) =>
                                                    ProductScreen()));
                                        // Define your onTap action here
                                      },
                                      child: Image.asset(
                                        imgaeList[index],
                                        fit: BoxFit.cover,
                                        width: 120,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    right: 7,
                                    top: 7,
                                    child: Container(
                                      height: 16,
                                      width: 16,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Center(
                                        child: Icon(
                                          Icons.favorite,
                                          color: Colors.red,
                                          size: 15,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 5),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    productTitle[index],
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 120,
                                    child: Text(
                                      "In publishing and graphic design,In publishing and graphic design, Lorem ipsum is a placeholder text commonly ",
                                      style: TextStyle(fontSize: 10),
                                      maxLines: 6,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  SizedBox(height: 3),
                                  Row(children: [
                                    Icon(
                                      Icons.star,
                                      color: Color.fromARGB(255, 244, 248, 0),
                                    ),
                                    Text('(' + review[index] + ')  '),
                                    Text(
                                      price[index],
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.grey[600]),
                                    ),
                                  ]),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),

                SizedBox(height: 20),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Newest Product",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

                // GridView for Products
                GridView.builder(
                  itemCount: productTitle.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.9,
                    crossAxisSpacing: 1,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(right: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 150,
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (contex) =>
                                                  ProductScreen()));
                                      // Define your onTap action here
                                    },
                                    child: Image.asset(
                                      imgaeList[index],
                                      fit: BoxFit.cover,
                                      width: 200,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  right: 7,
                                  top: 7,
                                  child: Container(
                                    height: 16,
                                    width: 16,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Center(
                                      child: Icon(
                                        Icons.favorite,
                                        color: Colors.red,
                                        size: 15,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            productTitle[index],
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 3),
                          Row(children: [
                            Icon(
                              Icons.star,
                              color: Color.fromARGB(255, 244, 248, 0),
                            ),
                            Text('(' + review[index] + ')'),
                            Text(
                              price[index],
                              style: TextStyle(
                                  fontSize: 14, color: Colors.grey[600]),
                            ),
                          ])
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
