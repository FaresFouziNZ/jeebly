import 'package:flutter/material.dart';

class SelectPayment extends StatefulWidget {
  const SelectPayment({Key key}) : super(key: key);

  @override
  State<SelectPayment> createState() => _SelectPaymentState();
}

class _SelectPaymentState extends State<SelectPayment> {
  TimeOfDay _time = TimeOfDay.now();
  String selectedPayment = '';
  List<String> paymentMethods = ['pay'];
  @override
  Widget build(BuildContext context) {
    //final user = Provider.of<LocalUser>(context);
    return SizedBox(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 25,
                  ),
                  child: Text(
                    'm7md\'s accounts',
                    style: TextStyle(fontSize: 24),
                  ),
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Wrap(
                          // children: paymentMethods.map((e) => BankCard(bankName: e)).toList(),
                          ),
                    ),
                  ],
                ),
                width: 350,
                height: 110,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(right: 25),
                    child: Icon(Icons.calendar_today_rounded),
                  ),
                  GestureDetector(
                    child: Container(
                      width: 300,
                      height: 50,
                      decoration: BoxDecoration(border: Border.all(width: 1)),
                      child: Center(
                          child: Text(
                        _time?.format(context) ?? TimeOfDay.now().format(context),
                        style: const TextStyle(fontSize: 30),
                      )),
                    ),
                    onTap: () async {
                      _time = await showTimePicker(context: context, initialTime: TimeOfDay.now());
                      setState(() {});
                    },
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: ElevatedButton(
                  onPressed: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => PlaceOrderView()));
                  },
                  style: ElevatedButton.styleFrom(minimumSize: const Size(350, 50)),
                  child: const Text('Confirm')),
            ),
            const SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
