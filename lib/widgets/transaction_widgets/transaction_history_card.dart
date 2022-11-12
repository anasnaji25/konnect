import 'package:flutter/material.dart';
import 'package:konnect/const/app_fonts.dart';

class TransactionHistoryCard extends StatefulWidget {
  String title;
  String subTitle;
  String price;
  Color color;
  Color fcolor;
  String flag;

  TransactionHistoryCard(
      {super.key,
      required this.title,
      required this.color,
      required this.price,
      required this.flag,
      required this.fcolor,
      required this.subTitle});

  @override
  State<TransactionHistoryCard> createState() => _TransactionHistoryCardState();
}

class _TransactionHistoryCardState extends State<TransactionHistoryCard> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Container(
        height: 60,
        width: size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7), color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/icons/icons-1.png",
                    color: widget.color,
                    height: 40,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        widget.title,
                        style: primaryFont.copyWith(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        widget.subTitle,
                        style: primaryFont.copyWith(
                            fontSize: 8, fontWeight: FontWeight.w500),
                      ),
                    ],
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    widget.price,
                    style: primaryFont.copyWith(
                        fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    widget.flag,
                    style: primaryFont.copyWith(
                        fontSize: 8,
                        color: widget.fcolor,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
