import 'package:flutter/material.dart';
import 'package:jebaa/Views/select_payment.dart';

class PaymentWidget extends StatelessWidget {
  const PaymentWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> paymentMethods = ['Stc Pay', 'Bank Transfer', 'Cash On Delivery'];
    String selectedMethod = '';

    return GestureDetector(
      onTap: () async {
        selectedMethod = await showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return const SingleChildScrollView(
                child: SelectPayment(),
              );
            });
        if (selectedMethod != null) {}
      },
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.75,
        height: MediaQuery.of(context).size.height * 0.05,
        child: Row(
          children: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                'Payment:',
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Image(
                  image: AssetImage(
                    'assets/Stc Pay.png',
                  ),
                  width: 64),
            ),
          ],
        ),
      ),
    );
  }
}
