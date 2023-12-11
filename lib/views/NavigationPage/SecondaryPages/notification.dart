import 'package:flutter/material.dart';

class Notificationn extends StatelessWidget {
  const Notificationn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
        actions: [
          Container(
            height: 25,
            width: 25,
            child: ImageIcon(
              AssetImage(
                'assets/sort.png',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: CircleAvatar(
              backgroundColor: Colors.green,
              child: Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 12),
            child: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Container(
          padding: EdgeInsets.symmetric(horizontal: 12),
          height: MediaQuery.sizeOf(context).height,
          child: ListView.builder(
              itemCount: 15,
              itemBuilder: (context, index) {
                return ListTile(
                  // splashColor: Colors.red,
                  title: Text(
                    'Created recently',
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                  subtitle: Text('Filter'),
                  onTap: () {
                    // Get.to(
                    //   () => Issuerelated(),
                    // );
                  },
                  leading: Container(
                    height: 45,
                    width: 45,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(12)),
                    child: ImageIcon(
                      AssetImage('assets/sort.png'),
                      color: Colors.white,
                    ),
                  ),
                );
              })),
      // body: Padding(
      //   padding: EdgeInsets.symmetric(horizontal: 12),
      //   child: Column(
      //     children: [
      //       Padding(
      //         padding:
      //             EdgeInsets.only(left: 60, right: 60, top: 60, bottom: 20),
      //         child: Image(
      //           image: AssetImage('assets/notify.png'),
      //         ),
      //       ),
      //       Text(
      //         'Nothing\'s happened yet',
      //         style: TextStyle(
      //             color: Colors.black,
      //             fontWeight: FontWeight.bold,
      //             fontSize: 18),
      //       ),
      //       SizedBox(
      //         height: 15,
      //       ),
      //       Center(
      //         child: Text(
      //           'When there is activity on your work, this is where we\'ll let you know. Pull down refresh any time',
      //           style: TextStyle(color: Colors.grey, fontSize: 15),
      //           textAlign: TextAlign.center,
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
