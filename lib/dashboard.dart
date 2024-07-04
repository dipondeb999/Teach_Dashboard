import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {

  List<String> imgData = [
    'images/mcq.png',
    'images/quiz.png',
    'images/paper.png',
    'images/pdf.png',
    'images/job.png',
    'images/about.png',
  ];

  List<String> titles = [
    'MCQ',
    'QUIZ',
    'PAPER',
    'PDF',
    'JOB',
    'ABOUt'
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: const EdgeInsets.only(top: 50.0, left: 15.0, right: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.menu,
                  color: Colors.white,
                  size: 30.0,
                ),
                Container(
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    image: const DecorationImage(
                        image: AssetImage('images/woman.png'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Padding(
              padding: EdgeInsets.only(top: 30.0, left: 15.0, right: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    'Dashboard',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    letterSpacing: 1.0,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.start,
                ),
                SizedBox(height: 5.0),
                Text(
                  'Last update : 1 Jul 2024',
                  style: TextStyle(
                    color: Colors.white54,
                    fontSize: 16.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
          ),
          GridView.builder(
            padding:const EdgeInsets.only(top: 40.0, left: 10.0, right: 10.0),
            itemCount: imgData.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                childAspectRatio: 1.1,
                crossAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {},
                  child: Container(
                    margin: const EdgeInsets.all(8.0),
                    padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 21, 21, 21),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          imgData[index],
                            width: 100,
                        ),
                        Text(
                          titles[index],
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }
          ),
        ],
      ),
    );
  }
}
