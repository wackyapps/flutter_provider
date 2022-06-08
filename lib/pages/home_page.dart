// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_application_provider/provider/AppState.dart';

// import 'package:provider/provider.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       create: (context) => AppState(),
//       child : Scaffold(
//         appBar: AppBar(
//           title: Text('Provider'),
//         ),
//         body: Center(
//           child: Consumer<AppState>(
//             builder: (context, providerValue, child) {
//               return Column(
//                 children: [
//                   SizedBox(height: 20),
//                   Text('The Value OF the Provider Is : ${providerValue.name}'),
//                   SizedBox(height: 120),
//                   CupertinoButton(
//                       color: Colors.blue,
//                       child: Text('Click and Update Value'),
//                       onPressed: () {
//                         providerValue.getName("Code With Flutter");
//                       })
//                 ],
//               );
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }

// ignore_for_file: unused_element

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/student_provider.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => StudentProvider(),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Provider',
          ),
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          //appbar theme
        ),
        body: Center(child: Consumer(
          builder: (context, value, child) {
            return ListView(
              children: [
                SizedBox(height: 20),
                Text(
                  'The Value OF the Provider Is : ',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 120),
                CupertinoButton(
                  color: Colors.blue,
                  child: Text('Click and Update Value'),
                  onPressed: () {
                    // Provider.of<StudentProvider>(context, listen: false)
                    //     .getName('Code With Flutter');
                  },
                ),
              ],
            );
          },
        )
            // ListView.builder(
            //   itemCount: 10,
            //   itemBuilder: (context, index) {
            //     return ListTile(
            //       title: Text('Item ${index + 1}'),
            //     );
            //   },
            // ),
            ),
      ),
    );
  }
}
