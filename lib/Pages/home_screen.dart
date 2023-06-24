import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  List<String> categories = [
    'Electronics',
    'Food',
    'Cloths',
    'Groceries',
    'Cosmetics'
  ];

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
    {
      'product_name': 'Iphone-13',
      'image': 'https://m.media-amazon.com/images/I/61neib4uMCL._AC_UF1000,1000_QL80_.jpg',
      'price': '\$ 1200',
      'description': 'Only white & Black colour available',
    },
    {
      'product_name': 'Macbook air 13',
      'image':
          'https://farazitechnology.com.bd/wp-content/uploads/2023/05/MacBook-Air-M1-8-256GB-13-inch-Space-Gray.jpg',
      'price': '\$ 1000',
      'description': '3 colors available',
    },
    {
      'product_name': 'Gaming Mouse',
      'image':
          'https://images-cdn.ubuy.co.in/633aa2d50922f035031cccbb-bengoo-gaming-mouse-wired-usb-optical.jpg',
      'price': '\$ 80',
      'description': '2 years warrenty',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Oblique Fashion',
            style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w600,
            )
        ),
        centerTitle: true,
      ),
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 10,
        ),
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverList(
                delegate: SliverChildListDelegate(
              [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    SizedBox(
                      height: 120,
                      child:
                          ListView(scrollDirection: Axis.horizontal, children: [
                        Container(
                          height: 120,
                          width: 260,
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15, top: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('40% Off During\n Eid-Ul-Azha',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white)),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Image.network(
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQw836EDJLSFeLmu7ciMVj-ESr0Nhn04apkA&usqp=CAU",
                                    width: 110,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          height: 120,
                          width: 260,
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15, top: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('40% Off During\n Eid-Ul-Azha',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white)),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Image.network(
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQw836EDJLSFeLmu7ciMVj-ESr0Nhn04apkA&usqp=CAU",
                                    width: 110,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          height: 120,
                          width: 260,
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15, top: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('40% Off During\n Eid-Ul-Azha',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white)),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Image.network(
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQw836EDJLSFeLmu7ciMVj-ESr0Nhn04apkA&usqp=CAU",
                                    width: 110,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ]),
                    ),
                    const SizedBox(width: 20),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Categories',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w500)),
                        Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text('View All',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.red)),
                        ),
                      ],
                    ),
                    const SizedBox(width: 20),
                    SizedBox(
                      height: 40,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: categories.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 6.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 7, horizontal: 12),
                                child: Center(child: Text(categories[index])),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                )
              ],
            ))
          ],
          body: Padding(
            padding: const EdgeInsets.only(right: 10),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.75
              ),
              itemCount: products.length,
              itemBuilder: (context, index){
                return Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
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
                              fontWeight: FontWeight.w600
                            ),
                          ),
                          Text(
                            products[index]['description'],
                            style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400
                            ),
                          ),
                          Text(
                            products[index]['price'],
                            style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700
                            ),
                          ),
                        ],
                      ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    ));
  }
}
