import 'package:flutter/material.dart';

class Portfolio extends StatefulWidget {
  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(child: Text("Portfolio")),
    );
  }
}
