import 'dart:io';
import 'package:http/http.dart' as http;

Future<void> downloadFile(String url, String filePath) async {
  final response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    final file = File(filePath);
    await file.writeAsBytes(response.bodyBytes);
    print('File downloaded successfully.');
  } else {
    print('Failed to download the file.');
  }
}

void main() async {
  const url = 'https://annas-archive.org/search?index=&q=when+in+rome&sort=';
  const filePath = '/path/to/local/file';

  await downloadFile(url, filePath);
}