import 'package:belajar_dart_unit_test/book.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

@GenerateNiceMocks([MockSpec<BookRepository>()])
import 'mock_object_test.mocks.dart';

void main() {
  group("Book Service", () {
    var bookRepository = MockBookRepository();
    var bookService = BookService(bookRepository);

    test("New book is Saved", () {
      bookService.save("1", "Grand Theft Auto", 99000);
      verify(bookRepository.save(Book("1", "Grand Theft Auto", 99000)))
          .called(1);
    });

    test("Find book by id is not found", () {
      expect(() {
        bookService.find("1");
      }, throwsException);
    });

    test("Find book by id is success", () {
      when(bookRepository.findById("1"))
          .thenReturn(Book("1", "Grand Theft Auto", 99000));

      var book = bookService.find("1");
      expect(book, equals(Book("1", "Grand Theft Auto", 99000)));
      verify(bookRepository.findById("1")).called(1);
    });
    test("Find book by id is fardi1998", () {
      when(bookRepository.findById(argThat(startsWith("fardi"))))
          .thenReturn(Book("fardi1998", "Grand Theft Auto", 99000));

      var book = bookService.find("fardi1998");
      expect(book, equals(Book("fardi1998", "Grand Theft Auto", 99000)));
      verify(bookRepository.findById(any)).called(1);
    });
  });
}
