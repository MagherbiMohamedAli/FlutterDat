import 'package:dat_flutter_project/views/notifications.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../viewmodels/category_viewmodel.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  final categoryViewModel = CategoryViewModel();
  final List<String> dropdownItems = [
    "All",
    "Acc.",
    "Bio.",
    "Pho.",
    "Mar.",
    "Sec.",
    "Sci.",
  ];

  @override
  Widget build(BuildContext context) {
    final topPadding = MediaQuery.of(context).padding.top;

    return Scaffold(
      appBar: null,
      body: Padding(
        padding: EdgeInsets.only(left: 24.0, right: 24.0, top: topPadding),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 6 + 60,
              decoration: BoxDecoration(
                color: Color(0xFF4e74f9),
                borderRadius: BorderRadius.circular(35),
              ),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 4, top: 1),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "Hello,",
                                  style: GoogleFonts.dmSans(
                                    fontSize: 28,
                                    fontWeight: FontWeight.w700,
                                    height: 32.5 / 25,
                                    color: Colors.white,
                                  ),
                                ),
                                TextSpan(
                                  text: "\ngood Morning",
                                  style: GoogleFonts.dmSans(
                                    fontSize: 23,
                                    fontWeight: FontWeight.w400,
                                    height: 26 / 20,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 45),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "Search",
                                    hintStyle: TextStyle(color: Colors.grey),
                                    prefixIcon: Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: SvgPicture.string(
                                        '''
                                        <svg width="21" height="21" viewBox="0 0 21 21" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M20.6229 16.8253L16.2068 12.5981C15.3958 11.8219 14.1174 11.8216 13.3062 12.5976C12.4425 13.4237 12.4425 14.8034 13.3062 15.6295L17.5917 19.7287C18.0735 20.1895 18.8664 20.1895 19.3482 19.7287L20.6229 18.5095C21.1047 18.0446 21.1047 17.282 20.6229 16.8253Z" fill="#B7B7B7"/>
                                        <path d="M11.094 12.1349C11.5189 12.5414 12.1885 12.5414 12.6135 12.1349C13.066 11.7021 13.066 10.9792 12.6135 10.5463L12.4566 10.3962C11.9842 9.94443 11.9343 9.21822 12.2105 8.6258C13.2481 6.40017 12.8156 3.6972 10.9073 1.87188C8.43891 -0.489194 4.42724 -0.489194 1.95458 1.87188C-0.518078 4.23295 -0.513815 8.0702 1.95458 10.4354C3.86931 12.2668 6.70779 12.6772 9.03905 11.6718C9.65207 11.4074 10.3846 11.4564 10.867 11.9179L11.094 12.1349ZM3.18238 9.24462C1.39184 7.53193 1.39184 4.75491 3.18238 3.0463C4.97293 1.3336 7.87617 1.3336 9.66245 3.0463C11.453 4.75899 11.453 7.536 9.66245 9.24462C7.87617 10.9573 4.97293 10.9573 3.18238 9.24462Z" fill="#B7B7B7"/>
                                        </svg>
                                        ''',
                                        height: 21,
                                        width: 21,
                                      ),
                                    ),
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 14, horizontal: 16),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 8),
                              Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: DropdownButton<String>(
                                  value: dropdownItems[0],
                                  items: dropdownItems.map((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(
                                        value,
                                        style: TextStyle(
                                            color: const Color.fromARGB(
                                                255, 183, 183, 183)),
                                      ),
                                    );
                                  }).toList(),
                                  onChanged: (String? newValue) {},
                                  underline: Container(),
                                  icon: Icon(Icons.arrow_drop_down,
                                      color: const Color.fromARGB(
                                          255, 183, 183, 183)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 16,
                    right: 16,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Color(0xFF839DFB),
                            shape: BoxShape.circle,
                          ),
                          child: SvgPicture.string(
                            '''
                            <svg width="14" height="17" viewBox="0 0 14 17" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M7 0C10.8656 0 14 3.19679 14 7.14079V14.2326H0V7.14079C0 3.19679 3.13444 0 7 0ZM5.05556 15.0233H8.94444C8.94444 15.5475 8.73958 16.0503 8.37493 16.421C8.01028 16.7917 7.5157 17 7 17C6.4843 17 5.98972 16.7917 5.62507 16.421C5.26042 16.0503 5.05556 15.5475 5.05556 15.0233Z" fill="white"/>
                            </svg>
                            ''',
                            width: 18,
                            height: 18,
                          ),
                        ),
                        Positioned(
                          top: 15,
                          right: 14,
                          child: Container(
                            width: 7,
                            height: 7,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Explore categories",
                  style: GoogleFonts.dmSans(
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                    height: 0.1,
                    color: Colors.black,
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "See all",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromARGB(255, 77, 138, 240),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.symmetric(
                    horizontal: 12.0), // Add padding to the GridView

                itemCount: categoryViewModel.categories.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 12,
                  childAspectRatio: 0.85,
                ),
                itemBuilder: (context, index) {
                  final category = categoryViewModel.categories[index];
                  return Card(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 6,
                    shadowColor: const Color.fromARGB(255, 255, 255, 255),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 33.0,
                          ),
                          child: Center(
                            child: Image.asset(
                              category.imagePath,
                              height: 90,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Padding(
                          padding: const EdgeInsets.only(left: 24.0),
                          child: Text(
                            category.title,
                            style: GoogleFonts.dmSans(
                              fontSize: 18,
                              fontWeight: FontWeight.w800,
                              height: 1.4,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 24.0),
                          child: Text(
                            "${category.courseCount} Courses",
                            style: GoogleFonts.dmSans(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              height: 1.8,
                              color: const Color.fromARGB(255, 123, 123, 123),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Transform.translate(
        offset: Offset(0, 0),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10,
                spreadRadius: 2,
                offset: Offset(0, -2),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Transform.translate(
                offset: Offset(0, -8),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 7),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 205, 222, 251),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      SvgPicture.string(
                        '''<svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M2.5 7.49999L10 1.66666L17.5 7.49999V16.6667C17.5 17.1087 17.3244 17.5326 17.0118 17.8452C16.6993 18.1577 16.2754 18.3333 15.8333 18.3333H4.16667C3.72464 18.3333 3.30072 18.1577 2.98816 17.8452C2.67559 17.5326 2.5 17.1087 2.5 16.6667V7.49999Z" stroke="#4e74f9" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/><path d="M7.5 18.3333V10H12.5V18.3333" stroke="#4D8AF0" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/></svg>''',
                        width: 23,
                        height: 23,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        "Home",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          height: 18.2 / 14,
                          color: const Color.fromARGB(255, 78, 116, 249),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(0, -8),
                child: IconButton(
                  icon: SvgPicture.string(
                    '''<svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M19 9.5C19.0034 10.8199 18.6951 12.1219 18.1 13.3C17.3944 14.7117 16.3098 15.8992 14.9674 16.7293C13.6251 17.5594 12.0782 17.9994 10.5 18C9.18013 18.0034 7.87812 17.6951 6.7 17.1L1 19L2.9 13.3C2.30493 12.1219 1.99656 10.8199 2 9.5C2.00061 7.92176 2.44061 6.37485 3.27072 5.03255C4.10083 3.69025 5.28825 2.60557 6.7 1.9C7.87812 1.30493 9.18013 0.996557 10.5 0.999998H11C13.0843 1.11499 15.053 1.99476 16.5291 3.47086C18.0052 4.94695 18.885 6.91565 19 9V9.5Z" stroke="#161C2B" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/></svg>''',
                    width: 23,
                    height: 23,
                  ),
                  onPressed: () {},
                ),
              ),
              Transform.translate(
                offset: Offset(0, -8),
                child: IconButton(
                  icon: SvgPicture.string(
                    '''<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M18 8C18 6.4087 17.3679 4.88258 16.2426 3.75736C15.1174 2.63214 13.5913 2 12 2C10.4087 2 8.88258 2.63214 7.75736 3.75736C6.63214 4.88258 6 6.4087 6 8C6 15 3 17 3 17H21C21 17 18 15 18 8Z" stroke="#161C2B" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/><path d="M13.73 20C13.5542 20.3031 13.3019 20.5547 12.9982 20.7295C12.6946 20.9044 12.3504 20.9965 12 20.9965C11.6496 20.9965 11.3054 20.9044 11.0018 20.7295C10.6982 20.5547 10.4458 20.3031 10.27 20" stroke="#161C2B" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/></svg>''',
                    width: 28,
                    height: 28,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Notifications()));
                  },
                ),
              ),
              Transform.translate(
                offset: Offset(0, -8),
                child: IconButton(
                  icon: SvgPicture.string(
                    '''<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M20 21V19C20 17.9391 19.5786 16.9217 18.8284 16.1716C18.0783 15.4214 17.0609 15 16 15H8C6.93913 15 5.92172 15.4214 5.17157 16.1716C4.42143 16.9217 4 17.9391 4 19V21" stroke="#161C2B" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/><path d="M12 11C14.2091 11 16 9.20914 16 7C16 4.79086 14.2091 3 12 3C9.79086 3 8 4.79086 8 7C8 9.20914 9.79086 11 12 11Z" stroke="#161C2B" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/></svg>''',
                    width: 30,
                    height: 30,
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
