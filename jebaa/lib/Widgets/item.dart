import 'package:flutter/material.dart';

import '../Classes/food.dart';

class MenuElement extends StatefulWidget {
  Food item;
  final Function callBack;
  MenuElement({Key key, this.item, @required this.callBack}) : super(key: key);

  @override
  State<MenuElement> createState() => _MenuElementState();
}

class _MenuElementState extends State<MenuElement> {
  int _itemCounter = 0;
  @override
  Widget build(BuildContext context) {
    return ListTile(title: Text(widget.item.name), onTap: () {}, trailing: _buildTrailingWidget());
  }

  Widget _buildTrailingWidget() {
    return FittedBox(
      child: Row(
        children: [
          Text(
            widget.item.price.toString() + "SR",
            style: const TextStyle(
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
                _itemCounter--;
                widget.callBack();
              }
            },
            icon: const Icon(Icons.remove),
          ),
          Text(_itemCounter.toString()),
          IconButton(
            onPressed: () {
              _itemCounter++;
              widget.callBack();
            },
            icon: const Icon(Icons.add),
          )
        ],
      ),
    );
  }
}
