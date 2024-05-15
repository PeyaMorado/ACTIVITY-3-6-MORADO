import 'dart:convert';
import 'package:http/http.dart' as http;

void main() async {
  try {
   
    String apiUrl = 'https://omgvamp-hearthstone-v1.p.rapidapi.com/info';
    Map<String, String> headers = {
      'X-Rapidapi-Key': 'cbb785b118mshca1af2cdd30f124p1c7543jsn179040334463',
      'X-Rapidapi-Host': 'omgvamp-hearthstone-v1.p.rapidapi.com',
      'Host': 'omgvamp-hearthstone-v1.p.rapidapi.com',
    };

  
    var response = await http.get(Uri.parse(apiUrl), headers: headers);

   
    if (response.statusCode == 200) {
     
      var data = jsonDecode(response.body);

    
      print('Hearthstone API Info:');
      print(jsonEncode(data, toEncodable: (value) => value.toString()));

      
      if (data is Map) {
        if (data.containsKey('patchNotes')) {
          print('Patch Notes: ${data['patchNotes']}');
        }
        if (data.containsKey('classes')) {
          print('Classes: ${data['classes']}');
        }
        if (data.containsKey('sets')) {
          print('Sets: ${data['sets']}');
        }
        if (data.containsKey('standard')) {
          print('Standard Sets: ${data['standard']}');
        }
      }
    } else {
      print('Failed to fetch data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error occurred: $e');
  }
}
