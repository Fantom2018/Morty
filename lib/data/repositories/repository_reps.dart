import 'dart:convert';
import 'package:mortybloc/data/character_api.dart';
import 'package:mortybloc/data/models/character.dart';

class CharacterRepo {

  late final CharacterApi characterApi;

  get aurl => null;


  //CharacterRepo({required this.characterApi})

  Future<Character> getCharacter(int page, String name) async {

    try{
      final response  = await characterApi.getRequest( aurl,'?page=$page&name=$name');
      var jsonResult = json.decode(response.body);
      return Character.fromJson(jsonResult);
      }
    catch (e) {
      throw Exception(e.toString());
    }

    }
  }
