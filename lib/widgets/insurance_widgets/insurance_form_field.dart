import 'package:flutter/material.dart';
import 'package:konnect/const/app_fonts.dart';

import '../../const/helpers/space_helpers.dart';

class InsuranceFormField extends StatelessWidget {
  String title;
  InsuranceFormField({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                title,
                style: primaryFont.copyWith(fontSize: 11),
              ),
            ),
          ],
        ),
        h5,
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Container(
            height: 50,
            width: size.width,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(7)),
            alignment: Alignment.centerLeft,
            child: Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: TextField(
                  decoration: InputDecoration.collapsed(hintText: ""),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
