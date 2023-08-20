///Trabajando con llamados a API's

import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

void main() async {
  var url = Uri.https('www.googleapis.com', '/books/v1/volumes', {'q': '{ai}'});

  var response = await http.get(url);

  //print response
  if (response.statusCode == 200) {
    print("Response status code : ${response.statusCode}");
    print(response.body);
    var dataJSON = convert.jsonDecode(response.body);

    var totalItems = dataJSON['totalItems'];
    print('El numero total de items es de $totalItems');

    for (var item in dataJSON['items']) {
      print(item['volumeInfo']['title']);
    }
  }
}
