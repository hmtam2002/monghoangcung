import 'package:flutter/material.dart';

class gioithieuthongtin extends StatelessWidget {
  const gioithieuthongtin({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(
        top: 20,
        bottom: 20,
      ),
      width: MediaQuery.of(context).size.width * 9 / 10,
      height: MediaQuery.of(context).size.height / 6,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white.withOpacity(0.8),
      ),
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.account_circle,
              size: 60,
              color: Colors.brown,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Username',
                style: TextStyle(
                  fontSize: 26,
                ),
              ),
              Text(
                'SDT',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Text(
                'Email',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
