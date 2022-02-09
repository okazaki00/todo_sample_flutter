import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo/todo_screen.dart';
import 'package:todo/todo_view_model.dart';

final todoProvider = ChangeNotifierProvider((ref) => TodoViewModel());

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
    const MyApp({Key? key}) : super(key: key);
    
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        title: "todo",
        theme: ThemeData(
          scaffoldBackgroundColor: const Color.fromRGBO(247, 217, 76, 0),
          primaryColor: const Color.fromRGBO(247, 217, 76, 0),
          secondaryHeaderColor: const Color.fromRGBO(247, 217, 76, 0),
          appBarTheme: const AppBarTheme(backgroundColor: Color(0xffFFEC47)),
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
            backgroundColor: Color(0xffFFEC47)),
          textTheme: ThemeData.light().textTheme.copyWith(
            headline4: ThemeData.light()
                .textTheme
                .headline4
                ?.copyWith(color: Colors.white, fontWeight: FontWeight.w900)),
          ),
          home: TodoScreen(),
        );
    }
}

