import 'dart:io';

void main() {

  String inputFilePath = 'input.txt';
  String outputFilePath = 'reversed_output.txt';

  
  File inputFile = File(inputFilePath);
  List<String> lines = inputFile.readAsLinesSync();

  
  List<String> reversedLines = lines.map((line) => line.split('').reversed.join('')).toList();

 
  File outputFile = File(outputFilePath);
  outputFile.writeAsStringSync(reversedLines.join('\n'));
  
  print('Lines reversed and written to $outputFilePath');
}
