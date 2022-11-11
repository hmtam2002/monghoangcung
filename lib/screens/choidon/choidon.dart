import 'package:flutter/material.dart';
import 'package:monghoangcung/constants.dart';

class choidon extends StatefulWidget {
  const choidon({super.key});

  @override
  State<choidon> createState() => _choidonState();
}

class _choidonState extends State<choidon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(kDefaultPadding),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/a.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(kDefaultPadding),
              decoration: BoxDecoration(
                color: Colors.pink.withOpacity(0.8),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  width: 1,
                  color: Colors.red,
                ),
              ),
              width: 500,
              height: 300,
              child: Text('Câu hỏi \n Ai đã đặt tên cho dòng sông'),
              margin: EdgeInsets.only(
                bottom: 40,
              ),
            ),
            Column(
              children: [
                Text(
                  'data',
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    backgroundColor: Colors.pink.withOpacity(0.8),
                  ),
                ),
                Text('data'),
                Text('data'),
                Text('data'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
