import 'package:clean_architecture/feature/daily_news/presentation/cubit/article/remote/remote_article_cubit.dart';
import 'package:clean_architecture/feature/daily_news/presentation/cubit/article/remote/remote_article_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomePage"),
      ),
      body: BlocBuilder<RemoteArticleCubit, RemoteArticleState>(
        builder: (context, state) {
          if (state is GetNewsState) {
            final news = state.articles;
            print(news);

            return Column(
              children: [
                Text(
                 news[0].description ?? "No data",
                  style: const TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            );
          }

          return const  CircularProgressIndicator.adaptive();
        },
      ),
    );
  }
}
