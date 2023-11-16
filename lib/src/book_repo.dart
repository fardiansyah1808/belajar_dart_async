import 'package:belajar_dart_unit_test/src/book.dart';

class BookRepository {
  void save(Book book) {
    print("$book is Saved");
    throw UnsupportedError("Book is not save");
  }

  void update(Book book) {
    print("$book is Updated");
    throw UnsupportedError("Book is not update");
  }

  void delete(Book book) {
    print("$book is Deleted");
    throw UnsupportedError("Book is not delete");
  }

  Book? findById(String id) {
    print("Find book by id: $id");
    throw UnsupportedError("Find $id is not supported");
  }
}
