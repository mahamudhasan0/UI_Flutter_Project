import 'package:flutter/material.dart';

class MyAddScreen extends StatelessWidget {
  List products = [
    {
      'product_name': 'Apple Watch',
      'image': 'https://cdn.zdrop.com.bd/product_images/1664191108513.webp',
      'price': '\$ 88.45',
      'description': 'Series 6 Red'
    },
    {
      'product_name': 'Cosmetics',
      'image': 'https://images.indianexpress.com/2017/11/cosmetics-759.jpg',
      'price': '\$ 38.45',
      'description': 'All the new collections',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text('MY Adds'),
            elevation: 5,
            backgroundColor: Colors.transparent,
            bottom: const TabBar(
              indicatorColor: Colors.grey,
              labelColor: Colors.black,
              indicatorWeight: 3,
              tabs: [
                Tab(
                  child: Column(
                    children: [
                      Icon(Icons.shopping_bag_outlined),
                      SizedBox(
                        height: 2,
                      ),
                      Text('My Cart')
                    ],
                  ),
                ),
                Tab(
                  child: Column(
                    children: [
                      Icon(Icons.favorite_outline),
                      SizedBox(
                        height: 2,
                      ),
                      Text('My Favourite')
                    ],
                  ),
                )
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                    top: 10,
                  ),
                  child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 0.75,
                    ),
                    itemCount: products.length,
                    itemBuilder: (context, index) {
                      return Card(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 20,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Center(
                                    child: Image.network(
                                      products[index]['image'],
                                      height: 100,
                                      width: 100,
                                    ),
                                  ),
                                  const Divider(
                                    color: Colors.transparent,
                                  ),
                                  Text(
                                    products[index]['product_name'],
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    products[index]['description'],
                                    style: const TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Text(
                                    products[index]['price'],
                                    style: const TextStyle(
                                      fontSize: 14,
                                      color: Color(0xFF5956E9),
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(
                    right: 25,
                    left: 25,
                    top: 20,
                  ),
                  child: ListView.builder(
                    itemCount: products.length,
                    itemBuilder: (_, index) {
                      return ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage(
                            products[index]['image'],
                          ),
                        ),
                        title: Text(
                          products[index]['product_name'],
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        subtitle: Text(
                          products[index]['description'],
                          style: TextStyle(),
                        ),
                        trailing: Text(
                          products[index]['price'],
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF5956E9),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
    );
  }
}
