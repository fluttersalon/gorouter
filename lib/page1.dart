import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gorouter/page2.dart';
import 'package:gorouter/page3.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);
  static const id = '/page1';

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page1'),
      ),
      body: Column(
        children: [
          TextButton(
            onPressed: () => GoRouter.of(context).push(Page2.id),
            child: Text('Go to page2'),
          ),
          TextButton(
            onPressed: () => GoRouter.of(context).push('/page3/update/1'),
            child: Text('Go to page3 mode=update id=1'),
          ),
          TextButton(
            onPressed: () => GoRouter.of(context).push('/page3/new'),
            child: Text('Go to page3 mode=new'),
          ),
        ],
      ),
    );
  }
}
