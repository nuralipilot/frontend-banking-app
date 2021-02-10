import 'package:flutter/material.dart';
import 'package:musicake_app/data.dart';
import 'widgets/header.dart';
import 'widgets/card.dart';
import 'widgets/expense.dart';

void main() => runApp(
      MaterialApp(
        home: HomePage(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'UbuntuCondensed'),
      ),
    );

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Container(
            height: 120,
            child: WalletHeader(),
          ),
          Expanded(
            child: CardWidget(),
          ),
          Expanded(
            child: ExpenseWidget(),
          ),
        ],
      ),
    );
  }
}
