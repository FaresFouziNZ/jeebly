import 'package:flutter/material.dart';

class SummaryTopWidget extends StatefulWidget {
  const SummaryTopWidget({Key key}) : super(key: key);

  @override
  State<SummaryTopWidget> createState() => _SummaryTopWidgetState();
}

class _SummaryTopWidgetState extends State<SummaryTopWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: const Color(0xFFf9faff),
        width: MediaQuery.of(context).size.width * 0.75,
        height: MediaQuery.of(context).size.height * 0.3,
        child: Column(
          children: [
            Icon(Icons.check, size: MediaQuery.of(context).size.width * 0.1),
            const Text('19:30'),
            SizedBox(height: MediaQuery.of(context).size.height * 0.025),
            const Text('Raiq'),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.025,
            ),
            Container(
              color: Colors.red,
              width: MediaQuery.of(context).size.width * 0.66,
              height: 80,
            )
          ],
        ),
      ),
    );
  }
}
