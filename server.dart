// import 'dart:html';
import 'dart:io';
import 'dart:async';

final File myFile = File('index.html');

Future main() async{
  var myServer = await HttpServer.bind('127.0.0.1', 8080);
  print("The server is alive on the above mentioned port and it's listening on ${myServer.port}");
  // myServer.listen((HttpRequest myRequest) { 
  //   myRequest.response
  //   ..write("Bonjour, have a great journey ahead")
  //   ..close();
  // });

  await for (HttpRequest myRequest in myServer){
    if(await myFile.exists()){
      print("We're going to serve ${myFile.path}");
      myRequest.response.headers.contentType = ContentType.html;
      await myFile.openRead().pipe(myRequest.response);
    }
  }
}