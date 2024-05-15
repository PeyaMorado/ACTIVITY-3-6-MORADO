import 'dart:io';

void main() {
 
  stdout.write('Enter the file name: ');
  String? fileName = stdin.readLineSync();

 
  if (fileName == null || fileName.isEmpty) {
    print('Invalid file name.');
    return;
  }

  try {
    
    File file = File(fileName);
    if (!file.existsSync()) {
      print('File not found.');
      return;
    }

  
    String contents = file.readAsStringSync();
    print('File contents:');
    print(contents);
  } catch (e) {
    if (e is FileSystemException) {
      print('File system error: ${e.message}');
    } else {
      print('An unexpected error occurred: $e');
    }
  }
}
