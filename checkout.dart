import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum RadioVals { AshalCredit, PayWithCard, PayWithCash }

class CheckOutScreen extends StatefulWidget {
  const CheckOutScreen({Key? key}) : super(key: key);

  @override
  State<CheckOutScreen> createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  RadioVals payments = RadioVals.AshalCredit;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFEDEDED),
      appBar: AppBar(
        toolbarHeight: 200,
        // Set this height
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              color: Color(0XFF0C331F),
              image: DecorationImage(
                  image: AssetImage('pictures/bg.png'), fit: BoxFit.cover)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: CircleAvatar(
                  radius: 35,
                  backgroundImage: NetworkImage(
                      'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                ),
              ),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: Text(
                  'Hello Mohammed',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
              const SizedBox(height: 5),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Text(
                  'mohammed123@gmail.com',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeadingsWidget(
            headingName: 'Ship To',
          ),
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 4,
            color: Colors.white,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              ListTile(
                leading: const Image(
                  image: AssetImage('pictures/home.png'),
                  height: 40,
                  width: 40,
                ),
                title: const Text('Home'),
                trailing: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Change',
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0XFF303030))),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: const Color(0XFFFBC947),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      )),
                ),
              ),
              DetailInfo(
                name: 'Mohammed',
              ),
              DetailInfo(name: 'Ishro 605, floor 6, sobha ivory 2,'),
              DetailInfo(name: 'businees bay'),
              DetailInfo(name: 'Doha, Qatar'),
              DetailInfo(name: '+974-123456789')
            ]),
          ),
          HeadingsWidget(
            headingName: 'Review Order',
          ),
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 4,
            color: Colors.white,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              ListTile(
                  title: Text(
                    'Rose Bunch',
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 122, 121, 121))),
                  ),
                  subtitle: Text(
                    'QAR 40.0',
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0XFF303030))),
                  ),
                  trailing: const Image(
                    image: AssetImage('pictures/qar40.png'),
                    height: 50,
                    width: 50,
                  )),
              const Divider(),
              ListTile(
                  title: Text(
                    'Rose Bunch',
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 122, 121, 121))),
                  ),
                  subtitle: Text(
                    'QAR 40.0',
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0XFF303030))),
                  ),
                  trailing: const Image(
                    image: AssetImage('pictures/qar40.png'),
                    height: 50,
                    width: 50,
                  )),
            ]),
          ),
          HeadingsWidget(
            headingName: 'Order Summary',
          ),
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 4,
            color: Colors.white,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              ListTile(
                  title: Text(
                    'Sub Total',
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 122, 121, 121))),
                  ),
                  trailing: Text(
                    'QAR-75.00',
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 122, 121, 121))),
                  )),
              ListTile(
                  title: Text(
                    'Shipping Fee',
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 122, 121, 121))),
                  ),
                  trailing: Text(
                    'QAR-10.00',
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 122, 121, 121))),
                  )),
              const Divider(),
              ListTile(
                  title: Text(
                    'Total',
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0XFF303030))),
                  ),
                  trailing: Text(
                    'QAR-85.00',
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0XFF303030))),
                  )),
            ]),
          ),
          HeadingsWidget(
            headingName: 'Payment Method',
          ),
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 4,
            color: Colors.white,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              ListTile(
                leading: Radio(
                  fillColor: MaterialStateColor.resolveWith(
                      (states) => const Color(0XFF0C331F)),
                  value: RadioVals.AshalCredit,
                  groupValue: payments,
                  onChanged: (RadioVals? value) {
                    setState(() {
                      payments = value!;
                    });
                  },
                ),
                title: Text(
                  'Use Ashal Credit',
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0XFF303030))),
                ),
              ),
              const Divider(),
              ListTile(
                leading: Radio(
                  fillColor: MaterialStateColor.resolveWith(
                      (states) => const Color(0XFF0C331F)),
                  value: RadioVals.PayWithCard,
                  groupValue: payments,
                  onChanged: (RadioVals? value) {
                    setState(() {
                      payments = value!;
                    });
                  },
                ),
                title: Text(
                  'Pay with Card',
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0XFF303030))),
                ),
              ),
              const Divider(),
              ListTile(
                leading: Radio(
                  fillColor: MaterialStateColor.resolveWith(
                      (states) => const Color(0XFF0C331F)),
                  value: RadioVals.PayWithCash,
                  groupValue: payments,
                  onChanged: (RadioVals? value) {
                    setState(() {
                      payments = value!;
                    });
                  },
                ),
                title: Text(
                  'Pay with Cash',
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0XFF303030))),
                ),
              ),
            ]),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 100.0),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Place Order'),
              style: ElevatedButton.styleFrom(
                  primary: const Color(0XFF0C331F),
                  fixedSize: const Size(170, 43),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  )),
            ),
          ),
          const SizedBox(
            height: 30,
          )
        ],
      )),
    );
  }
}

class DetailInfo extends StatelessWidget {
  DetailInfo({Key? key, required this.name}) : super(key: key);
  String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, top: 3),
      child: Text(
        name,
        style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 122, 121, 121))),
      ),
    );
  }
}

class HeadingsWidget extends StatelessWidget {
  HeadingsWidget({Key? key, required this.headingName}) : super(key: key);
  String headingName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Text(
        headingName,
        style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0XFF303030))),
      ),
    );
  }
}
