import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_post_firebase/pages/sign_in_page.dart';
import '../blocs/auth/auth_bloc.dart';
import '../blocs/main/main_bloc.dart';
import '../blocs/post/post_bloc.dart';
import '../pages/home_page.dart';
import '../services/auth_service.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(create: (_) => AuthBloc()),
        BlocProvider<PostBloc>(create: (_) => PostBloc()),
        BlocProvider<MainBloc>(create: (_) => MainBloc()),
      ],
      child: MaterialApp(
        themeMode: ThemeMode.dark,
        darkTheme: ThemeData.dark(useMaterial3: true),
        debugShowCheckedModeBanner: false,
        home: StreamBuilder<User?>(
          initialData: null,
          stream: AuthService.auth.authStateChanges(),
          builder: (context, snapshot) {
            if(snapshot.data != null) {
              return  const HomePage();
            } else {
              return  SignInPage();
            }
          },
        ),
      ),
    );
  }
}