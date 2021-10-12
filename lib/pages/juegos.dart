import 'package:flutter/cupertino.dart';
import 'package:webview_flutter/webview_flutter.dart';

class juegos extends StatelessWidget {
  const juegos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: WebView(
          initialUrl: 'https://poki.com/es',
          // Enable Javascript on WebView
          javascriptMode: JavascriptMode.unrestricted,
        ));
  }
}
