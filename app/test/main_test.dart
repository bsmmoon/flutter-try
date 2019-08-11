import 'package:flutter_test/flutter_test.dart';
import 'package:app/test_helper.dart';
import 'package:app/main.dart';
import 'package:app/random_words.dart';

void main() {
  testWidgets('has RandomWords widget', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(MyApp()));
    expect(find.byType(RandomWords), findsOneWidget);
  });
}
