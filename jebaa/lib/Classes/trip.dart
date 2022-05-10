import 'package:flutter/material.dart';
import 'package:jebaa/classes/order.dart';
import 'package:jebaa/classes/user.dart';

class Trip {
  String tid;
  String destination;
  User user; // from the user
  List<Order> orders;
  String status;
  TimeOfDay time;
  Trip({this.tid, this.destination, this.user, this.orders, this.status, this.time});

  Map<String, dynamic> toMap() {
    return {'tid': tid, 'uid': user, 'destination': destination, 'orders': orders, 'isClosed': status, 'time': time};
  }

  factory Trip.fromMap(Map<dynamic, dynamic> map) {
    if (map == null) return null;
    return Trip(
        user: map['user'],
        tid: map['tid'],
        destination: map['destination'],
        orders: map['orders'],
        status: map['status'],
        time: map['time']);
  }
}
