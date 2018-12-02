import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:image_test_utils/image_test_utils.dart';
import 'package:music_discovery/main.dart';

void main(){
  testWidgets("Display 3 songs for 20105", (WidgetTester tester) async{
    provideMockedNetworkImages(() async {
      await tester.pumpWidget(new MaterialApp(home: new App()));
      await tester.tap(find.byType(TextField));
      await tester.pumpAndSettle();
      await tester.enterText(find.byType(EditableText), "20105");
      await tester.pumpAndSettle();
      await tester.tap(find.text("Submit"));
      await tester.pumpAndSettle();
      await tester.tap(find.text("Display Top Trending Songs"));
      await tester.pumpAndSettle();
      expect(find.byType(ListTile), findsNWidgets(3));
    });
  });

//checks if the default values are empty strings
  testWidgets('Checks default for 20105', (WidgetTester tester) async {
    provideMockedNetworkImages(() async {
      await tester.pumpWidget(new MaterialApp(home: new App()));
      await tester.tap(find.byType(TextField));
      await tester.pumpAndSettle();
      await tester.enterText(find.byType(EditableText), "20105");
      await tester.pumpAndSettle();
      await tester.tap(find.text("Submit"));
      await tester.pumpAndSettle();
      await tester.tap(find.text("Display Top Trending Songs"));
      await tester.pumpAndSettle();
      expect(find.text(' '), findsNWidgets(3));
    });
  });

  testWidgets('Displays 3 songs for 22033', (WidgetTester tester) async {
    provideMockedNetworkImages(() async {
      await tester.pumpWidget(new MaterialApp(home: new App()));
      await tester.tap(find.byType(TextField));
      await tester.pumpAndSettle();
      await tester.enterText(find.byType(EditableText), "22033");
      await tester.pumpAndSettle();
      await tester.tap(find.text("Submit"));
      await tester.pumpAndSettle();
      await tester.tap(find.text("Display Top Trending Songs"));
      await tester.pumpAndSettle();
      expect(find.byType(ListTile), findsNWidgets(3));
    });
  });

  testWidgets('Checks default for 22033', (WidgetTester tester) async {
    provideMockedNetworkImages(() async {
      await tester.pumpWidget(new MaterialApp(home: new App()));
      await tester.tap(find.byType(TextField));
      await tester.pumpAndSettle();
      await tester.enterText(find.byType(EditableText), "22033");
      await tester.pumpAndSettle();
      await tester.tap(find.text("Submit"));
      await tester.pumpAndSettle();
      await tester.tap(find.text("Display Top Trending Songs"));
      await tester.pumpAndSettle();
      expect(find.text(' '), findsNWidgets(3));
    });
  });

  testWidgets('Displays 3 songs for 34523', (WidgetTester tester) async {
    provideMockedNetworkImages(() async {
      await tester.pumpWidget(new MaterialApp(home: new App()));
      await tester.tap(find.byType(TextField));
      await tester.pumpAndSettle();
      await tester.enterText(find.byType(EditableText), "34523");
      await tester.pumpAndSettle();
      await tester.tap(find.text("Submit"));
      await tester.pumpAndSettle();
      await tester.tap(find.text("Display Top Trending Songs"));
      await tester.pumpAndSettle();
      expect(find.byType(ListTile), findsNWidgets(3));
    });
  });

  testWidgets('Checks default for 34523', (WidgetTester tester) async {
    provideMockedNetworkImages(() async {
      await tester.pumpWidget(new MaterialApp(home: new App()));
      await tester.tap(find.byType(TextField));
      await tester.pumpAndSettle();
      await tester.enterText(find.byType(EditableText), "34523");
      await tester.pumpAndSettle();
      await tester.tap(find.text("Submit"));
      await tester.pumpAndSettle();
      await tester.tap(find.text("Display Top Trending Songs"));
      await tester.pumpAndSettle();
      expect(find.text(' '), findsNWidgets(3));
    });
  });
}