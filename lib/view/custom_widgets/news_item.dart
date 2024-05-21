import 'package:flutter/material.dart';

class NewsItem extends StatelessWidget {
  const NewsItem(
      {super.key,
      required this.itemPhoto,
      required this.itemSubTitle,
      required this.itemIcon,
      required this.itemTitle,
      required Function() this.ontap});
  final String itemIcon;
  final String itemPhoto;
  final String itemSubTitle;
  final String itemTitle;

  final void Function() ontap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        ontap;
        // Add your button tap logic here
        //  print('Button tapped!');
      },
      borderRadius: BorderRadius.circular(10.0),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.only(bottom: 20, right: 10, left: 20),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Stack(alignment: Alignment.topRight, children: [
              Image.asset(
                itemPhoto,
                height: 213,
                width: 350,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15, top: 15),
                child: Stack(alignment: Alignment.center, children: [
                  Image.asset(
                    'assets/images/Frame0.png',
                    width: 70,
                    height: 23,
                  ),
                  Text(
                    'تريند',
                    style: TextStyle(fontFamily: 'tajwal', fontSize: 16),
                  )
                ]),
              )
            ]),
            Stack(alignment: Alignment.topRight, children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(4.5),
                        bottomRight: Radius.circular(4.5)),
                    color: const Color.fromRGBO(249, 249, 249, 1),
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 29, 28, 28)
                            .withOpacity(0.3),
                        spreadRadius: 2,
                        blurRadius: 10,
                        offset:
                            const Offset(0, 1), // changes position of shadow
                      ),
                    ]),
                height: 72,
                width: 340,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10, top: 6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              itemTitle,
                              style: TextStyle(
                                  fontFamily: 'tajwal',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700),
                            ),
                            Text(
                              itemSubTitle,
                              style: TextStyle(
                                  fontFamily: 'tajwal',
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Image.asset(
                          itemIcon,
                          height: 50,
                        ),
                      ],
                    )
                  ],
                ),
              )
            ])
          ],
        ),
      ),
    );
  }
}

class DiscribtionText extends StatelessWidget {
  const DiscribtionText(this.data, {super.key});
  final String data;

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(
          fontFamily: 'tajwal', fontSize: 12, fontWeight: FontWeight.w500),
    );
  }
}
