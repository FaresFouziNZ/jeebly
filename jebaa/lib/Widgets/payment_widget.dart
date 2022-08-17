import 'package:flutter/material.dart';
import 'package:jebaa/Views/select_payment.dart';

class PaymentWidget extends StatefulWidget {
  const PaymentWidget({Key key}) : super(key: key);

  @override
  State<PaymentWidget> createState() => _PaymentWidgetState();
}

class _PaymentWidgetState extends State<PaymentWidget> {
  String selectedMethod = 'Inma';

  @override
  Widget build(BuildContext context) {
    //List<String> paymentMethods = ['Stc Pay', 'Bank Transfer', 'Cash On Delivery'];

    return GestureDetector(
      onTap: () async {
        var result = await showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return const SingleChildScrollView(
                child: SelectPayment(),
              );
            });
        if (result != null) {
          selectedMethod = result;
          setState(() {});
        }
      },
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.75,
        height: MediaQuery.of(context).size.height * 0.05,
        child: Row(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                'Payment:',
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Image(
                  image: AssetImage(
                    'assets/BankLogo/$selectedMethod.png',
                  ),
                  width: 64),
            ),
          ],
        ),
      ),
    );
  }
}
