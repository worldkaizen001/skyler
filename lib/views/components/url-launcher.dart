
import 'package:url_launcher/url_launcher.dart';

Future openUrlBrowser({
  required String url,
  required bool status,
}) async {
  final uri = url;

  if (await canLaunch(uri)) {
    await launch(
      uri,
      forceWebView: status,
      enableJavaScript: true,
    );
  }
}
