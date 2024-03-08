import 'dart:io';

void main() {
  try {
    String fileContent = readFile('downloaded_file.json');
    print('File Content:\n$fileContent');
  } catch (e) {
    print('Error: ${e.toString()}');
  }
}

String readFile(String filePath) {
  File file = File(filePath);
  return file.readAsStringSync();
}
