import 'package:floria/app/common/ui/widgets/gridviewcustom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PurchasingPage extends StatefulWidget {
  final String lastproduct;
  const PurchasingPage(this.lastproduct, {Key? key}) : super(key: key);

  @override
  State<PurchasingPage> createState() => _PurchasingPageState();
}

class _PurchasingPageState extends State<PurchasingPage> {
  int optionSelected = 0;
  List lastname = [];
  String selectedproduct = '';
  String name = '';
  String surname = '';
  String address = '';
  String email = '';

  @override
  String selected = '';
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios)),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [Theme.of(context).primaryColor, Theme.of(context).secondaryHeaderColor]),
          ),
        ),
        title: Image.asset("assets/floria.png", fit: BoxFit.fill, width: 90.w, height: 45.w),
        centerTitle: true,
      ),
      body: Column(children: [
        SizedBox(
          height: 550.w,
          child: GridView.count(
            crossAxisCount: 2,
            children: List.generate(lastname.length, (index) {
              return GridViewCustom(
                productname: lastname[index]['Productname'],
                img: lastname[index]['img'],
                pressed: () {
                  setState(() {
                    selectedproduct = lastname[index]['Productname'];
                  });
                },
              );
            }),
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: 120.w,
          height: 50.w,
          decoration: BoxDecoration(color: Theme.of(context).primaryColor, borderRadius: BorderRadius.circular(25)),
          child: TextButton(
            onPressed: () {},
            child: Text(
              "Satın Al",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
