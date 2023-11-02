import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> listPopupMenuItems = [
    {"icon": Icons.settings, "title": 'Settings'},
    {"icon": Icons.info_outline, "title": 'About Us'},
    {"icon": Icons.call, "title": 'Contact Us'},
    {"icon": Icons.account_circle, "title": 'My Profile'},
    {"icon": Icons.logout, "title": 'Logout'},
  ];
  String mInitialValue = 'Settings';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: Icon(Icons.account_circle),
            shadowColor: Colors.green,
            leadingWidth: 25,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(21),
              // side: BorderSide(
              //   width: 11,
              //   color: Colors.green.withOpacity(0.45),
              //   strokeAlign: BorderSide.strokeAlignOutside,
              // ),
            ),
            elevation: 2,
            title: Text('Home'),
            backgroundColor: Colors.blueGrey,
            foregroundColor: Colors.black,
            bottom: PreferredSize(
              child: Container(),
              preferredSize: Size(
                double.infinity,
                100,
              ),
            ),
            // flexibleSpace: Container(
            //   color: Colors.amber,
            //   height: 200,
            // ),
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt_sharp)),
              IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border)),
              IconButton(onPressed: () {}, icon: Icon(Icons.add)),
              PopupMenuButton(
                initialValue: mInitialValue,
                onSelected: (value) {
                  mInitialValue = value.toString();
                  setState(() {});
                },
                color: Colors.yellow,
                // padding: EdgeInsets.all(20),
                shadowColor: Colors.yellow,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(21)),

                itemBuilder: (mContext) {
                  return listPopupMenuItems
                      .map(
                        (eachData) => PopupMenuItem(
                          value: eachData['title'],
                          child: Row(
                            children: [
                              Icon(
                                eachData['icon'],
                                color: Colors.blueGrey,
                              ),
                              SizedBox(
                                width: 11,
                              ),
                              Text("${eachData['title']}"),
                            ],
                          ),
                        ),
                      )
                      .toList();
                },
              ),
            ],
            floating: true,
            pinned: true,
            snap: true,
            expandedHeight: 200,
            flexibleSpace: Container(
              color: Colors.blue,
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate((context, index) => ListTile(
                    title: Text('Hello'),
                  )))
        ],
      ),
    );
  }
}



//  appBar: AppBar(
//         leading: Icon(Icons.account_circle),
//         shadowColor: Colors.green,
//         leadingWidth: 25,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(21),
//           // side: BorderSide(
//           //   width: 11,
//           //   color: Colors.green.withOpacity(0.45),
//           //   strokeAlign: BorderSide.strokeAlignOutside,
//           // ),
//         ),
//         elevation: 2,
//         title: Text('Home'),
//         backgroundColor: Colors.blueGrey,
//         foregroundColor: Colors.black,
//         bottom: PreferredSize(
//           child: Container(),
//           preferredSize: Size(
//             double.infinity,
//             300,
//           ),
//         ),
//         // flexibleSpace: Container(
//         //   color: Colors.amber,
//         //   height: 200,
//         // ),
//         actions: [
//           IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt_sharp)),
//           IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border)),
//           IconButton(onPressed: () {}, icon: Icon(Icons.add)),
//           PopupMenuButton(
//             initialValue: mInitialValue,
//             onSelected: (value) {
//               mInitialValue = value.toString();
//               setState(() {});
//             },
//             color: Colors.yellow,
//             // padding: EdgeInsets.all(20),
//             shadowColor: Colors.yellow,
//             shape:
//                 RoundedRectangleBorder(borderRadius: BorderRadius.circular(21)),

//             itemBuilder: (mContext) {
//               return listPopupMenuItems
//                   .map(
//                     (eachData) => PopupMenuItem(
//                       value: eachData['title'],
//                       child: Row(
//                         children: [
//                           Icon(
//                             eachData['icon'],
//                             color: Colors.blueGrey,
//                           ),
//                           SizedBox(
//                             width: 11,
//                           ),
//                           Text("${eachData['title']}"),
//                         ],
//                       ),
//                     ),
//                   )
//                   .toList();
//             },
//           ),
//         ],
//       ),
