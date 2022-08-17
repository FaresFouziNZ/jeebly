import 'package:flutter/material.dart';

class PaymentMethod extends StatelessWidget {
  final String method;
  const PaymentMethod({Key key, this.method}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        color: Colors.transparent,
        width: double.infinity,
        height: 50,
        child: Center(
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image(
                    image: AssetImage('assets/Bank/$method.png'),
                    width: 50,
                    height: 50,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                method,
                style: const TextStyle(
                  fontSize: 16,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
