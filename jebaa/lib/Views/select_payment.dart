import 'package:flutter/material.dart';
import 'package:jebaa/Widgets/payment_method.dart';

class SelectPayment extends StatefulWidget {
  const SelectPayment({Key key}) : super(key: key);

  @override
  State<SelectPayment> createState() => _SelectPaymentState();
}

class _SelectPaymentState extends State<SelectPayment> {
  List<String> paymentMethods = ['Stcpay', 'Inma', 'NSB'];
  @override
  Widget build(BuildContext context) {
    //final user = Provider.of<LocalUser>(context);
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: paymentMethods
                  .map((method) => GestureDetector(
                        child: PaymentMethod(
                          method: method,
                        ),
                        onTap: () {
                          return Navigator.pop(context, method);
                        },
                      ))
                  .toList(),
            )
          ],
        ),
      ),
    );
  }
}
