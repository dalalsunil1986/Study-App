import 'package:http/http.dart' as http;

class BookRequest {
  final String url = 'http://192.168.0.25/api/books/';

  // final String query = "?client_id=${client_id}&client_secret=${client_secret}";

  // Github(this.userName);

  Future<http.Response> fetchBook() {
    return http.get(url);
  }

  Future<http.Response> fetchChapter(bookId) {
    return http.get("http://192.168.0.25/api/chapters/?book_id=$bookId");
  }

  // Future<http.Response> fetchFollowing() {
  //   return http.get(url + 'users/' + userName + '/following' + query);
  // }
}
