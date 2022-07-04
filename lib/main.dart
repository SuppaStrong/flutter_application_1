import 'dart:math';

import 'package:flutter/material.dart';

void main(List<String> args) {
  //runApp(const MyApp());

  // Bai 1,2,3
  var listSoNguyen = <int>[1, 2, 3, 4, 5, 6, 7, 8, 10];
  var listSoChan = <int>[];
  var listSoNguyenTo = <int>[];
  var listHopSo = <int>[];

  //Bai 4
  var listSoNguyenCanSapXepTang = <int>[1, 4, 6, 8, 3, 2, 10, 9];
  //Bai 5
  var listSoNguyenCanSapXepGiam = <int>[];
  // Bai 6
  var listTong = <int>[1, 2, 3, 4, 5, 6, 7, 8, 10];
  // Bai 7
  var listDulicate = <int>[1, 4, 6, 8, 3, 4, 1, 6];
  var bai7 = <int>[];

  // Giai bai 1,2,3
  for (int i = 0; i < listSoNguyen.length; i++) {
    if (listSoNguyen[i] % 2 == 0) {
      listSoChan.add(listSoNguyen[i]);
    }
    if (soNguyenTo(listSoNguyen[i])) {
      listSoNguyenTo.add(listSoNguyen[i]);
    }
    if (hopSo(listSoNguyen[i])) {
      listHopSo.add(listSoNguyen[i]);
    }
  }

  // Giai bai 4
  for (int i = 0; i < listSoNguyenCanSapXepTang.length; i++) {
    int pivot = i;
    for (int j = pivot + 1; j < listSoNguyenCanSapXepTang.length; j++) {
      if (listSoNguyenCanSapXepTang[j] < listSoNguyenCanSapXepTang[pivot]) {
        pivot = j; //[4] = [1]
        int temp = listSoNguyenCanSapXepTang[pivot]; //
        listSoNguyenCanSapXepTang[pivot] = listSoNguyenCanSapXepTang[i];
        listSoNguyenCanSapXepTang[i] = temp;
      }
    }
  }
  // Bai 6
  int count = 0;
  for (int i = 0; i < listTong.length; i++) {
    count += listTong[i];
  }
  //Bai 7

  //Bai 1 2 3
  print("List so chan -> $listSoChan");
  print("List so nguyen to -> $listSoNguyenTo");
  print("List hop so -> $listHopSo");
  //Bai 4
  print("List so da sap xep tang dan bai 4 $listSoNguyenCanSapXepTang");
  // Bai 5
  listSoNguyenCanSapXepGiam = listSoNguyenCanSapXepTang.reversed.toList();
  print("Giam $listSoNguyenCanSapXepGiam");
  //Bai 6
  print("Tong list bai 6 -> $count");
  //Bai 7

  //Bai 13
  int giaithua8 = giaiThua(8);
  print("Giai thua cua 8! $giaithua8");
  //
}

// Bai 1 2 3
bool soNguyenTo(int n) {
  if (n < 2) {
    return false;
  }
  for (int i = 2; i <= sqrt(n); i++) {
    if (n % i == 0) {
      return false;
    }
  }
  return true;
}

bool hopSo(int n) {
  int count = 0;
  for (int i = 0; i <= n; i++) {
    if (n % i == 0) {
      count++;
    }
  }
  if (count > 2) {
    return true;
  } else {
    return false;
  }
}

// Bai 13
int giaiThua(int number) {
  // Đệ quy
  if (number == 1) {
    return 1;
  }
  return number * giaiThua(number - 1);
}
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(

//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {

//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {

//     return Scaffold(
//       appBar: AppBar(

//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(

//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
