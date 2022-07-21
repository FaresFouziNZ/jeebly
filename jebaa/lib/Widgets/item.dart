import 'package:flutter/material.dart';

class MenuElement extends StatefulWidget {
  String itemName;
  MenuElement({Key key, this.itemName}) : super(key: key);

  @override
  State<MenuElement> createState() => _MenuElementState();
}

class _MenuElementState extends State<MenuElement> {
  int _itemCounter = 0;
  @override
  Widget build(BuildContext context) {
    return ListTile(title: Text(widget.itemName), onTap: () {}, trailing: _buildTrailingWidget());
  }

  Widget _buildTrailingWidget() {
    return FittedBox(
      child: Row(
        children: [
          const Text(
            "10SR",
            style: TextStyle(
              fontSize: 18,
              color: Colors.grey,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          IconButton(
            onPressed: () {
              if (_itemCounter > 0) {
                setState(() {
                  _itemCounter--;
                });
              }
            },
            icon: const Icon(Icons.remove),
          ),
          Text(_itemCounter.toString()),
          IconButton(
            onPressed: () {
              setState(() {
                _itemCounter++;
              });
            },
            icon: const Icon(Icons.add),
          )
        ],
      ),
    );
  }
}
