// This is a basic Flutter widget test.
// To perform an interaction with a widget in your test, use the WidgetTester utility that Flutter
// provides. For example, you can send tap and scroll gestures. You can also use WidgetTester to
// find child widgets in the widget tree, read text, and verify that the values of widget properties
// are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:image_test_utils/image_test_utils.dart';
import 'package:music_discovery/main.dart';

void main() {
  testWidgets('one text field on first screen', (WidgetTester tester) async {
    provideMockedNetworkImages(() async {
      await tester.pumpWidget(new App());

      expect(find.byType(TextField), findsOneWidget);
    });
  });

  testWidgets('reject 4 character long string', (WidgetTester tester) async {
    provideMockedNetworkImages(() async {
      await tester.pumpWidget(new App());
      await tester.tap(find.byType(TextField));
      await tester.pumpAndSettle();
      await tester.enterText(find.byType(EditableText), "0000");
      await tester.pumpAndSettle();
      await tester.tap(find.text("Submit"));
      await tester.pumpAndSettle();
      expect(find.byType(AlertDialog), findsOneWidget);
    });
  });
}
