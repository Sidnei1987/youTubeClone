class Video {

  late String id;
  late String titulo;
  late String descricao;
  late String imagem;
  late String canal;

 Video({ required this.id,    required this.titulo,   required this.descricao, required this.imagem,   required this.canal});
/* esse codigo daria para usar so que usaria mas recurso de memoria e assim o projeto não fica otimizado
 static converterJson (Map <String, dynamic> json){
   return Video(
       id: json ["id"]["videoId"],
       titulo: json ["snippet"]["title"],
       descricao:json ["snippet"]["description"],
       imagem:json ["snippet"]["thumbnails"]["high"]["url"],
       canal:json ["snippet"]["channelId"]
   );
 }*/

 // usando esse modo temos uma economia de memoria no projeto por usar só um objeto assim fica mas otimizado
   factory Video.fromJsom(Map <String, dynamic> json){

    return Video(
        id: json ["id"]["videoId"],
      titulo: json ["snippet"]["title"],
      descricao:json ["snippet"]["description"],
      imagem:json ["snippet"]["thumbnails"]["high"]["url"],
      canal:json ["snippet"]["channelTitle"]

  );

  }
}
