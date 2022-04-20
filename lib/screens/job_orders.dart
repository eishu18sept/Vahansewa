import 'package:flutter/material.dart';

class JobOrders extends StatefulWidget {
  JobOrders({Key? key}) : super(key: key);

  @override
  State<JobOrders> createState() => _JobOrdersState();
}

class _JobOrdersState extends State<JobOrders> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(child: Text("Job Orders")),
    );
  }
}
