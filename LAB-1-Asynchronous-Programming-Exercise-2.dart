import 'dart:io';
// import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> downloadFile(String url, String savePath) async {
  try {
    var response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      File file = File(savePath);
      await file.writeAsBytes(response.bodyBytes);

      print('File downloaded successfully: $savePath');
    } else {
      print('Failed to download file. Status code: ${response.statusCode}');
    }
  } catch (error) {
    print('Error during download: $error');
  }
}

void main() async {
  String fileUrl =
      'https://file-examples.com/storage/feb75512ed65eb11e999d25/2017/02/file_example_JSON_1kb.json';

  String savePath = 'downloaded_file.json';

  await downloadFile(fileUrl, savePath);
}
