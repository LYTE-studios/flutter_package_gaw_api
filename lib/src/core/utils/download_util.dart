import 'package:gaw_api/gaw_api.dart';
import 'package:url_launcher/url_launcher.dart';

class DownloadUtil {
  static void downloadFile(String url, String fileName) async {
    launchUrl(Uri.parse(FormattingUtil.formatUrl(url) ?? ''));
  }
}
