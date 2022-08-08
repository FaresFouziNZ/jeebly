import 'package:flutter/material.dart';

class BankCard extends StatelessWidget {
  final String bankName;
  final Function onTap;
  final bool isSelected;
  const BankCard({Key key, @required this.bankName, this.onTap, this.isSelected}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          children: [
            SizedBox(
              width: 80,
              height: 80,
              child: Card(
                color: Colors.red,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                child: ClipRRect(borderRadius: BorderRadius.circular(20), child: Image.asset('assets/pay.png')),
              ),
            ),
            Text(
              'Raiq',
              style: TextStyle(fontSize: 20, color: isSelected ? Colors.red : Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
