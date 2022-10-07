import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'home_page.dart';

class DetailPage extends StatelessWidget {
  final String name;
  final String image;
  final String desc;
  final int price;
  final String category;
  final double ratings;
  final int reviewer;
  final int sold;

  String total = "";

  DetailPage({
    Key? key,
    required this.name,
    required this.image,
    required this.desc,
    required this.price,
    required this.category,
    required this.ratings,
    required this.reviewer,
    required this.sold,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Page'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.network(image, width: 500,),
              //SizedBox(height: 16,),
              Text(name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
              SizedBox(height: 16,),
              Text("Description : ${desc}", style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 16,),
              Text(" "),
              Text("Price : Rp.${price}", style: TextStyle(fontWeight: FontWeight.bold),),
              Text(" "),
              Text("Ratings : ${ratings}"),
              Text(" "),
              Text("Reviewer : ${reviewer}"),
              Text(" "),
              Text("Sold : ${sold}"),

              SizedBox(height: 100,),
            ],
          ),
        ),
      ),
    );
  }


}
