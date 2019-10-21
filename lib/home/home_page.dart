import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ugnest/home/home.dart';
import 'package:ugnest/home/profile/bloc.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var homePageBloc = BlocProvider.of<HomePageBloc>(context);
    return Scaffold(
      body: BlocBuilder<HomePageBloc, HomePageState>(
        bloc: homePageBloc,
        builder: (context, state) {
          if (state is ScreenHomePageState) {
            if (state.tab == ScreenTab.createOffers) {
              return Center(child: Text('Создать объявление'));
            }
            if (state.tab == ScreenTab.search) {
              return Center(child: Text('Поиск'));
            }
            if (state.tab == ScreenTab.profile) {
              return ProfileScreen();
            }
          }
          return Container();
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: BlocBuilder<HomePageBloc, HomePageState>(
          bloc: homePageBloc,
          builder: (context, state) =>
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  IconButton(icon: Icon(Icons.search),
                      color: _activeColor(state, ScreenTab.search),
                      onPressed: () => homePageBloc.add(ChangedScreenHomePageEvent(ScreenTab.search))),
                  IconButton(icon: Icon(Icons.add_circle_outline),
                      color: _activeColor(state, ScreenTab.createOffers),
                      onPressed: () => homePageBloc.add(ChangedScreenHomePageEvent(ScreenTab.createOffers))),
                  IconButton(icon: Icon(Icons.person_outline),
                      color: _activeColor(state, ScreenTab.profile),
                      onPressed: () {
                        BlocProvider.of<ProfileBloc>(context).add(RequestUserInfo());
                        homePageBloc.add(ChangedScreenHomePageEvent(ScreenTab.profile));
                      }),
                ],
              ),
        ),
      ),
    );
  }

  Color _activeColor(HomePageState state, ScreenTab tab) => state is ScreenHomePageState && state.tab == tab ? Colors.blue : null;
}
