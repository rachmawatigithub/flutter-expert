import 'dart:convert';
import 'dart:io';
import 'package:core/data/models/movie_model.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:http/io_client.dart';

class SslPinning {
  Future<SecurityContext> get globalContext async {
    final sslCert =
        await rootBundle.load('assets/certificates/certification.cer');
    SecurityContext securityContext = SecurityContext(withTrustedRoots: false);
    securityContext.setTrustedCertificatesBytes(sslCert.buffer.asInt8List());
    return securityContext;
  }

  Future<MovieModel> getMovieModel() async {
    HttpClient client = HttpClient(context: await globalContext);
    client.badCertificateCallback =
        (X509Certificate cert, String host, int port) => false;
    IOClient ioClient = IOClient(client);
    final response =
        await ioClient.get(Uri.parse('https://api.themoviedb.org/'));

    return MovieModel.fromJson(jsonDecode(response.body)[0]);
  }
}
