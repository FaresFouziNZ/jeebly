// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:jebaa/classes/order.dart';
import 'package:jebaa/classes/user.dart';

class Trip {
  int tid;
  String destination;
  User user; // from the user
  List<Order> orders;
  String status;
  TimeOfDay h;
  Trip({this.tid, this.destination, this.user, this.orders, this.status, this.h});

  Map<String, dynamic> toMap() {
    return {'tid': tid, 'uid': user, 'destination': destination, 'orders': orders, 'isClosed': status, 'time': h};
  }

  factory Trip.fromMap(Map<dynamic, dynamic> map) {
    if (map == null) return null;
    return Trip(
        user: map['user'],
        tid: map['tid'],
        destination: map['destination'],
        orders: map['orders'],
        status: map['status'],
        h: map['time']);
  }
}
