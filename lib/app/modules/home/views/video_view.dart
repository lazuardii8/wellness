import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:get/get.dart';

class VideoView extends GetView {
  const VideoView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
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
                          SvgPicture.asset(
                              "assets/svgs/ic_outline-date-range.svg"),
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
        )
      ],
    );
  }
}
