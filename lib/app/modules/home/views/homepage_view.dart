import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:svg_flutter/svg.dart';

import '../controllers/home_controller.dart';

class HomepageView extends GetView {
  const HomepageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categorys = [
      {
        "icon": "assets/svgs/Happy.svg",
        "title": "Happy",
        "bg": Color(0xffEF5DA8),
      },
      {
        "icon": "assets/svgs/Calm - Icon.svg",
        "title": "Calm",
        "bg": Color(0xffAEAFF7),
      },
      {
        "icon": "assets/svgs/Relax.svg",
        "title": "Manic",
        "bg": Color(0xffA0E3E2),
      },
      {
        "icon": "assets/svgs/fa6-solid_face-angry.svg",
        "title": "Angry",
        "bg": Color(0xffF09E54),
      },
      {
        "icon": "assets/svgs/fa6-solid_face-angry.svg",
        "title": "Sad",
        "bg": Color(0xffC3F2A6),
      },
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.only(left: 20, right: 20, bottom: 25),
          child: RichText(
            text: TextSpan(
              text: "Good Afternoon, \n",
              style: GoogleFonts.epilogue(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Color(0xff371B34),
                height: 1.4,
              ),
              children: [
                TextSpan(
                  text: "Sarina!",
                  style: GoogleFonts.epilogue(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
          child: Text(
            "How are you feeling today ?",
            style: GoogleFonts.epilogue(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Color(0xff371B34),
            ),
          ),
        ),
        Category(categorys: categorys),
        Banner(),
        Padding(
          padding: EdgeInsets.only(left: 20, right: 20, bottom: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: (Get.width / 2) - 30,
                padding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 20,
                ),
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  color: Color(0xffF4F3F1),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  children: [
                    SvgPicture.asset("assets/svgs/ion_journal.svg"),
                    SizedBox(
                      width: 16,
                    ),
                    Text(
                      "Journal",
                      style: GoogleFonts.epilogue(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff573926),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: (Get.width / 2) - 30,
                padding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 20,
                ),
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  color: Color(0xffF4F3F1),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  children: [
                    SvgPicture.asset("assets/svgs/ic_round-article.svg"),
                    SizedBox(
                      width: 16,
                    ),
                    Text(
                      "Library",
                      style: GoogleFonts.epilogue(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff573926),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 20,
            right: 20,
            bottom: 26,
          ),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 21),
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              color: Color(0xffF8F6F6),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "It is better to conquer yourself than \nto win a thousand battles",
                  style: GoogleFonts.epilogue(
                    height: 1.3,
                    fontSize: 14,
                    color: Color(0xff707070),
                  ),
                ),
                SvgPicture.asset("assets/svgs/fa_quote-left.svg"),
              ],
            ),
          ),
        ),
        CardBuy(),
      ],
    );
  }
}

class CardBuy extends StatelessWidget {
  const CardBuy({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20, bottom: 26),
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 23,
            ),
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              color: Color(0xff55A06F),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Plan Expired",
                      style: GoogleFonts.epilogue(
                        fontSize: 22,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Get back chat access and \nsession credits",
                      style: GoogleFonts.epilogue(
                        height: 1.4,
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        print("Book Now");
                      },
                      child: Row(
                        children: [
                          Text(
                            "Buy More",
                            style: GoogleFonts.epilogue(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          SvgPicture.asset(
                              "assets/svgs/eva_arrow-back-fill.svg"),
                        ],
                      ),
                    )
                  ],
                ),
                Image.asset(
                  "assets/images/Meditation Icon.png",
                  fit: BoxFit.contain,
                ),
              ],
            ),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: Image.asset("assets/images/Mask group.png"),
          ),
        ],
      ),
    );
  }
}

class Banner extends StatelessWidget {
  const Banner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20, bottom: 26),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 23),
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: Color(0xffFEF3E7),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "1 on 1 Sessions",
                  style: GoogleFonts.epilogue(
                    fontSize: 22,
                    fontWeight: FontWeight.w900,
                    color: Color(0xff573926),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "Let’s open up to the things that \nmatter the most ",
                  style: GoogleFonts.epilogue(
                    height: 1.4,
                    fontSize: 12,
                    color: Color(0xff573926),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    print("Book Now");
                  },
                  child: Row(
                    children: [
                      Text(
                        "Book Now",
                        style: GoogleFonts.epilogue(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffFE8235),
                        ),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      SvgPicture.asset("assets/svgs/ic_outline-date-range.svg"),
                    ],
                  ),
                )
              ],
            ),
            Image.asset(
              "assets/images/Meetup Icon.png",
              fit: BoxFit.contain,
            ),
          ],
        ),
      ),
    );
  }
}

class Category extends StatelessWidget {
  const Category({
    super.key,
    required this.categorys,
  });

  final List<Map<String, dynamic>> categorys;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(
          bottom: 26,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              categorys.length,
              (index) => Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      width: 60,
                      height: 60,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        color: categorys[index]['bg'],
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Center(
                        child: SvgPicture.asset(categorys[index]['icon']),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      categorys[index]['title'],
                      textAlign: TextAlign.center,
                      style: GoogleFonts.epilogue(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff828282),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
