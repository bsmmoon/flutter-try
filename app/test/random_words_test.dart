import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:app/test_helper.dart';
import 'package:app/random_words.dart';

void main() {
  testWidgets('finds title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(RandomWords()));
    expect(find.text('Startup Name Generator'), findsOneWidget);
  });

  testWidgets('find button to saved', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(RandomWords()));
    expect(find.byType(IconButton), findsOneWidget);
  });
}
