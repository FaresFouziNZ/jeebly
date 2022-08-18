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
        height: MediaQuery.of(context).size.height * 0.25,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.check_circle_outline_rounded, size: MediaQuery.of(context).size.width * 0.1),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Time:',
                  style: TextStyle(fontSize: 16),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    '19:30',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
            // SizedBox(height: MediaQuery.of(context).size.height * 0.025),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Restaurant:',
                  style: TextStyle(fontSize: 16),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Raiq',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
            // SizedBox(
            //   height: MediaQuery.of(context).size.height * 0.025,
            // ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Driver: ',
                    style: TextStyle(fontSize: 22),
                  ),
                  Text(
                    'M7md',
                    style: TextStyle(fontSize: 24),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
