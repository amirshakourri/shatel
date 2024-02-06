import 'package:flutter/material.dart';
import 'package:shatel/constants/colors.dart';

class UserAccount extends StatefulWidget {
  const UserAccount({super.key});

  @override
  State<UserAccount> createState() => _UserAccountState();
}

class _UserAccountState extends State<UserAccount> {
  bool editButtonTapped = false;

  @override
  Widget build(BuildContext context) {
    //var deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: SizedBox(
        width: 140,
        height: 40,
        child: FloatingActionButton(
          elevation: 0,
          onPressed: () {},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          foregroundColor: Colors.white,
          backgroundColor: CustomColor.buttonBlueColor,
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'افزودن حساب',
                  style: TextStyle(fontFamily: 'SM'),
                ),
                Spacer(),
                Icon(
                  Icons.add,
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            setState(() {
              editButtonTapped = true;
            });
          },
          child: const SizedBox(
            child: Icon(Icons.edit),
          ),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: const Text(
          'حساب های کاربری',
          style: TextStyle(fontFamily: 'SM', fontSize: 18),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: GestureDetector(
              child: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
                size: 20,
              ),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
          )
        ],
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Text(
                  'حساب یکتا',
                  style: TextStyle(
                    fontFamily: 'SM',
                    fontSize: 14,
                    color: Colors.grey[700],
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Container(
                  height: 140,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 245, 245, 245),
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 8,
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 30,
                              child: Icon(
                                Icons.account_circle_rounded,
                                size: 60,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'امیر شکور',
                                  style: TextStyle(
                                    fontFamily: 'SM',
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  '09330348792',
                                  style: TextStyle(
                                    fontFamily: 'SM',
                                    fontSize: 14,
                                    color: Colors.grey[400],
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Visibility(
                                visible: editButtonTapped,
                                child: const Icon(
                                  Icons.person_remove,
                                  color: Colors.red,
                                ),
                              ),
                            )
                          ],
                        ),
                        const Spacer(),
                        Container(
                          width: double.infinity,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Row(
                              children: [
                                Text(
                                  'امیر شکور',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: "SM",
                                    color: Colors.grey[800],
                                  ),
                                ),
                                const Spacer(flex: 10),
                                Text(
                                  '3686026',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: "SM",
                                    color: Colors.grey[800],
                                  ),
                                ),
                                const Spacer(flex: 1),
                                Container(
                                  width: 15,
                                  height: 15,
                                  decoration: BoxDecoration(
                                    color: Colors.deepPurpleAccent,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 2),
                      ],
                    ),
                  ),
                ),
              ),
              const Spacer(),
              Visibility(
                visible: editButtonTapped,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      editButtonTapped = false;
                    });
                  },
                  child: Container(
                    width: double.infinity,
                    height: 45,
                    color: const Color.fromARGB(255, 7, 65, 112),
                    child: const Center(
                      child: Text(
                        'بازگشت',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'SM',
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
