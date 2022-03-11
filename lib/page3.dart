import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Page3 extends StatefulWidget {
  Page3(this.mode, {this.id, Key? key}) : super(key: key);

  static const path = '/page3/:mode/:id';
  static const pathNoId = '/page3/:mode';

  final String mode;
  final String? id;

  @override
  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page3 [mode=${widget.mode} id=${widget.id ?? 'no  id'}]'),
      ),
      body: TextButton(
        onPressed: () => GoRouter.of(context).pop(),
        child: Text('back'),
      ),
    );
  }
}
