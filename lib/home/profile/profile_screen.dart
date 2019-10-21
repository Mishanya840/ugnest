import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ugnest/authentication/authentication.dart';
import 'package:ugnest/authentication/authentication_bloc.dart';
import 'package:ugnest/common/common.dart';
import 'package:ugnest/home/profile/bloc.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        if (state is EditingProfileState) {
          return _buildEditableScreen(context, state);
        } else if (state is LoadedProfileState) {
          return _buildViewOnlyScreen(context, state);
        } else {
          return Center(child: LoadingIndicator());
        }
      },
    );
  }

  Widget _buildEditableScreen(BuildContext context, EditingProfileState state) {
    var profileBloc = BlocProvider.of<ProfileBloc>(context);
    return Scaffold(
      appBar: AppBar(
          title: Text('Заполнение анкеты'),
          centerTitle: true
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              Expanded(
                child: ListView(children: <Widget>[
                  for (final attr in state.attributes.where((a) => a.type == 'string'))
                        TextFormField(
                          decoration: InputDecoration(labelText: attr.title),
                          initialValue: attr.value,
                          onChanged: (value) => profileBloc.add(UpdateUserAttribute(attr.id, value)),
                        )
                ],),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton(
                    child: Text('Сохранить'),
                    onPressed: () => _formKey.currentState.validate()
                        ? profileBloc.add(SaveChangesProfile())
                        : null
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildViewOnlyScreen(BuildContext context, LoadedProfileState state) {
    final AuthenticationBloc authenticationBloc = BlocProvider.of<AuthenticationBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Моя анкета'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.edit), onPressed: () => BlocProvider.of<ProfileBloc>(context).add(EditProfile()),)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView(children: <Widget>[
                for (final attr in state.attributes)
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(children: <Widget>[
                        Text('${attr.title}:'),
                        Text(attr.value ?? ''),
                      ],)
                  ),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                  child: Text('Выйти', style: Theme.of(context).textTheme.display1),
                  onPressed: () => authenticationBloc.add(LoggedOut())
              ),
            )
          ],
        ),
      ),
    );
  }
}
