import 'package:flutter/material.dart';
import 'package:nubank_growdev/themes/colors.dart';
import 'package:nubank_growdev/widgets/account_info.dart';
import 'package:nubank_growdev/widgets/card_info.dart';
import 'package:nubank_growdev/widgets/custom_bottom_appbar.dart';
import 'package:nubank_growdev/widgets/person_identification.dart';
import 'package:nubank_growdev/widgets/tab_options.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        elevation: 0,
        title: PersonIdentification(),
        centerTitle: true,
        bottom: CustomBottomAppBar(
          onTap: () {
            setState(() {
              _isExpanded = !_isExpanded;
            });
          },
          isExpanded: _isExpanded,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, bottom: 20, left: 20),
        child: Column(
          children: [
            AccountInfo(isExpanded: _isExpanded),
            SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: [
                  CardInfo(),
                  SizedBox(height: 15),
                  CardInfo(),
                  SizedBox(height: 15),
                  CardInfo(),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            _isExpanded ? Container() : TabOptions(),
          ],
        ),
      ),
    );
  }
}
