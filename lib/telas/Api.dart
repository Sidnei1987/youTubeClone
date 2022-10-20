

import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:youtube_app/model/Video.dart';

const CHAVE_YOUTUBE_API = "AIzaSyCk-dEbKZdYCSlhSV3raMAxMYTZOgUtG7U";
const URL_BASE = "https://www.googleapis.com/youtube/v3/";
const ID_CANAL ="UCfLTxnQboSLcoSakgONmukQ";


class Api {

  Future<List<Video>> pesquisar( String pesquisa ) async {

    http.Response response = await http.get(Uri.parse(
        URL_BASE + "search"
            "?part=snippet"
            "&type=video"
            "&maxResults=20"
            "&order=date"
            "&key=$CHAVE_YOUTUBE_API"
            "&channelId=$ID_CANAL"
            "&q=$pesquisa"
    )

    );
    if (response.statusCode == 200){

      Map<String, dynamic> dadosJson = json.decode(response.body);

      List<Video> videos = dadosJson["items"].map<Video>(
          (map){
            return Video.fromJsom(map);
            //return Video.fromJsom(map); esse usar muita memoria ver o codigo em "Video.dart"
          }
      ).toList();

      return videos;

      /*
      for(var video in dadosJson["items"]){
        print("resultado:" + video.toString() );
        O ESSE FOR EU MEIO DE CORRER A LISTA DE VIDEO, MAS IRREI USAR OUTRO MEIO
      }*/
     // print("resultado:" + dadosJson["items"].toString() );

    }return pesquisar(pesquisa);


  }

}