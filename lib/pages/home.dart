import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          child: WebView(
            initialUrl: 'https://www.fundacionrestaurados.cl/',
            // Enable Javascript on WebView
            javascriptMode: JavascriptMode.unrestricted,
          )),
    );
  }
}
