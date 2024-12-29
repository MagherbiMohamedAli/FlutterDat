import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dat_flutter_project/views/home.dart';
import 'package:google_fonts/google_fonts.dart';

class Fees extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 75),
                Padding(
                  padding: const EdgeInsets.only(left: 13.0),
                  child: Text(
                    "Fees",
                    style: GoogleFonts.poppins(
                      fontSize: 40,
                      fontWeight: FontWeight.w600,
                      height: 1.5,
                      color: const Color.fromARGB(255, 22, 28, 43),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                const SizedBox(height: 6),
                Padding(
                  padding: const EdgeInsets.only(left: 13.0),
                  child: Text(
                    "Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit, sed do\neiusmod tempor incididunt dolore\nmagna aliqua",
                    style: GoogleFonts.poppins(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      height: 1.6,
                      color: Color.fromARGB(255, 95, 95, 97),
                    ),
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
          Positioned(
            bottom: 133,
            left: 135,
            child: SvgPicture.string(
              '''
              <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                <circle cx="12" cy="12" r="12" fill="#FFD037"/>
              </svg>
              ''',
              width: 26,
              height: 26,
            ),
          ),
          Positioned(
            bottom: 215,
            right: 45,
            left: 0,
            child: SvgPicture.string(
              '''
                <svg width="333" height="355" viewBox="0 0 333 355" fill="none" xmlns="http://www.w3.org/2000/svg">
                  <g opacity="0.1">
                    <path d="M-96.6573 98.0721C-74.3365 172.043 2.53879 214.244 75.0279 192.37C147.517 170.497 188.218 92.8164 165.897 18.8459C143.576 -55.1247 66.701 -97.3259 -5.78804 -75.4522C-78.2771 -53.5785 -118.978 24.1016 -96.6573 98.0721Z" stroke="#4E74F9" stroke-width="1.5"/>
                    <circle cx="202.378" cy="202.378" r="201.628" transform="matrix(-0.957363 0.288886 0.288886 0.957363 170.193 -194.111)" stroke="#4E74F9" stroke-width="1.5"/>
                    <path d="M-191.607 126.909C-153.798 252.205 -21.4373 323.088 104.032 285.228C229.5 247.367 300.561 115.101 262.753 -10.1948C224.944 -135.491 92.5833 -206.374 -32.8856 -168.513C-158.354 -130.653 -229.415 1.6128 -191.607 126.909Z" stroke="#4E74F9" stroke-width="1.5"/>
                  </g>
                </svg>
              ''',
              width: 900,
              height: 1000,
            ),
          ),
          Positioned(
            bottom: -275,
            right: -275,
            child: Image.asset(
              'assets/fees_image.png',
              height: 1170,
              width: 970,
              fit: BoxFit.contain,
            ),
          ),
          Positioned(
            top: 57,
            right: 16,
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
              },
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
                minimumSize: Size(50, 30),
                alignment: Alignment.center,
              ),
              child: Text(
                "Skip",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  height: 1.5,
                  color: Color(0xFF848587),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(24.0, 16.0, 24.0, 40.0), // Added bottom padding
              child: Container(
                width: double.infinity, // Ensure the button spans the full width
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    backgroundColor: Color(0xFF4E74F9),
                    minimumSize: Size(double.infinity, 61),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Text(
                      "Next",
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        height: 1.4,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
