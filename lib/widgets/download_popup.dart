import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';

class DownloadPopUp {
  mainBottomSheet(BuildContext context, imageURL) {
    print(imageURL);
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          print(context);
          return RaisedButton(
            child: Text("save to phone"),
            onPressed: () => downLoadFile(imageURL),
          );
        });
  }
}

Future<void> downLoadFile(imageURL) async {
  Dio dio = Dio();
  final ImgUrl = 'https://www.w3schools.com/w3css/img_lights.jpg';

  try {
    var dir = await getApplicationDocumentsDirectory();
    print(dir.path);

    await dio.download(ImgUrl, "${dir.path}/myImage.jpg",
        onReceiveProgress: (rec, total) {
      print("Rec: $rec , Total: $total");
    });
  } catch (e) {
    print(e);
  }
}
