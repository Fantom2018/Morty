import 'package:http/http.dart' as http;

class CharacterApi {
  final aurl = 'https://rickandmortyapi.com/api/character';

  Future<http.Response> getRequest(page, name) async {
      http.Response response;
      final url =Uri.parse(aurl+'?page=$page&name=$name');

    try {
       response = await http.get(url);

    } on Exception catch (e) {

      throw (e.toString());

    }
    return response;
  }
}


//JsonDecoder(response.body) as List;
//var jsonResult = json.decode(response.body);
//return Character.fromJson(jsonResult);
// final url = 'https://rickandmortyapi.com/api/character';
// '?page=$page&name=$name'
//  return raws?.map((e) => Character.fromJson(e)).toList();
//     //  if (response.statusCode == 200){
// //         final re
//
//     /*try {
//       var response = await http.get(Uri.parse(url + '?page=$page&name=$name'));
//
//
//
//     } catch (e) {
//       throw Exception(e.toString());
//     }*/