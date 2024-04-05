import 'package:flutter/material.dart';

void main() {
  runApp(const Screen3());
}

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: StatelessWidget1(title: 'Order Details'),
    );
  }
}

class StatelessWidget1 extends StatelessWidget {
  const StatelessWidget1({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back,
        ),
        title: Text(
          title,
        ),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              child: const Card(
                  child: Column(
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.check_circle,
                      color: Colors.green,
                      size: 50,
                    ),
                    title: Text('Compeleted',
                        style: TextStyle(color: Colors.green)),
                    subtitle: Text("Order Competed 24 July 2024"),
                    trailing: Icon(Icons.chevron_right, size: 30),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Order ID",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w300)),
                      Text("#52545", style: TextStyle(fontSize: 20)),
                    ],
                  ),
                  Divider(
                    height: 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Order date",
                          style: TextStyle(
                              fontWeight: FontWeight.w300, fontSize: 20)),
                      Text("24 July 2024", style: TextStyle(fontSize: 20)),
                    ],
                  ),
                ],
              )),
            ),
            Container(
                padding: const EdgeInsets.all(20),
                child: Card(
                  child: Column(
                    children: [
                      const Text(
                        'Purchased Items',
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8.0), // Add some vertical space

                      // Order Items List
                      ListView.builder(
                        shrinkWrap: true, // Prevent list from expanding
                        itemCount: 2, // Assuming there are 2 items
                        itemBuilder: (context, index) {
                          return Container(
                            padding: const EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            child: Row(
                              children: [
                                Image.asset(
                                  "./assets/img1.jpg",
                                  width: 80.0,
                                  height: 80.0,
                                  fit: BoxFit.cover,
                                ),
                                const SizedBox(
                                    width: 8.0), // Add some horizontal space

                                const Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      // Item Name
                                      Text(
                                        'Blue t-shirt',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                          height:
                                              4.0), // Add some vertical space

                                      // Size & Color
                                      Row(
                                        children: [
                                          Text(
                                            'Size: L  Color: Yellow',
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                          height:
                                              4.0), // Add some vertical space

                                      // Price & Quantity
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            '\$${50.00}',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text('Qty: 1'),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                      const SizedBox(
                          height: 16.0), // Add more space for headers

                      // Shipping Information
                      const Text(
                        'Shipping Information:',
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8.0), // Add some vertical space

                      // Name
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Name:',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text('Jacob Jones')
                        ],
                      ),
                      const SizedBox(height: 4.0), // Add some vertical space
                    ],
                  ),
                )),
            const ShippingInfo(),
            const PaymentInfo()
          ],
        ),
      ),
    );
  }
}

class PaymentInfo extends StatelessWidget {
  const PaymentInfo({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      color: Colors.white,
      child: const Card(
        elevation: 5,
        color: Colors.white,
        margin: EdgeInsets.all(20),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Payment Information',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Payment Method',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                      Text(
                        'Cash On Delivery',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ShippingInfo extends StatelessWidget {
  const ShippingInfo({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      height: 200,
      child: const Card(
        elevation: 5, // Set elevation for shadow effect
        margin: EdgeInsets.all(10), // Set margin for the card
        child: Padding(
          padding: EdgeInsets.all(20), // Set padding inside the card
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Shopping Information',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Name',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                      Text(
                        'Jacob Jones',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Phone Number',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                      Text(
                        '(105) 555_3652',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Address',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                      Text(
                        '61480 Sunbrook Park, PC',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Shipment',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                      Text(
                        'Economy',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
