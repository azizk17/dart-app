import 'package:flutter/material.dart';
import '../providers/providers.dart' show UsersProvider;
import 'package:common/common.dart' show User, UsersBloc;

/***
 * 
 *  ! # This screen for testing and development illustration ONLY
 * 
 */
class UsersList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return UsersProvider(
      child: BuildUsersList(),
    );
  }
}

class BuildUsersList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Testing Screen"),
      ),
      body: _body(context),
    );
  }

  Widget _body(BuildContext context) {
    print("Here has no Stream");
    return Scaffold(
      appBar: AppBar(
        title: Text("TESTING SCREEN"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _msg(context),
          _list(context),
        ],
      ),
    );
  }

  Widget _msg(BuildContext context) {
    return Text("TESTING SCREEEN");
  }

  Widget _list(BuildContext context) {
    final bloc = UsersProvider.of(context);
    return StreamBuilder(
      stream: bloc.items,
      builder: (context, AsyncSnapshot<Map<String, User>> snapshot) {
        if (!snapshot.hasData) {
          return Text("data");
        }
        print("Why called many times");
        return Flexible(
          child: ListView.builder(
            itemCount: snapshot.data.length,
            itemBuilder: (BuildContext contex, int index) {
              String id = snapshot.data.keys.elementAt(index);
              return Column(
                children: <Widget>[
                  ListTile(
                    title: Text("${snapshot.data[id].name}"),
                    onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => InfoScreen(id, bloc)),
                        ),
                  ),
                  new Divider(
                    height: 1.0,
                  ),
                ],
              );
            },
          ),
        );
        // return Text(snapshot.data.keys.toString());
      },
    );
  }
}

/***
 * 
 * ? Info screen
 * 
 */

class InfoScreen extends StatelessWidget {
  final String id;
  final UsersBloc bloc;
  InfoScreen(this.id, this.bloc);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("info"),
      ),
      body: Column(
        children: [
          _buildInfo(context),
          _editName(bloc, id: id),
        ],
      ),
    );
  }

  Widget _buildInfo(BuildContext context) {
    this.bloc.getItemById(this.id);
    return StreamBuilder(
      stream: this.bloc.item,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (!snapshot.hasData) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        print(
            "snapshot type : " + snapshot.data.toJson().runtimeType.toString());
        return Container(
          padding: EdgeInsets.all(10.2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                snapshot.data.name,
                textScaleFactor: 2.2,
              ),
              Text(
                snapshot.data.email,
                textScaleFactor: 2.2,
              ),
              _submit(bloc),
              Text(this._updateUser.toString()),
            ],
          ),
        );
      },
    );
  }

  User _updateUser = User();
  Widget _editName(UsersBloc bloc, {String id}) {
    return StreamBuilder(
        stream: bloc.updatedItem,
        initialData: _updateUser,
        builder: (context, snapshot) {
          return TextField(
            decoration: InputDecoration(
              labelText: "enter a new name",
              errorText: snapshot.error,
              hintText: snapshot.data?.name,
            ),
            onChanged: (val) => this._updateUser =
                this._updateUser.rebuild((b) => b..name = val),
          );
        });
  }

  Widget _submit(UsersBloc bloc) {
    print("upadted user objec + " + this._updateUser.toString());
    return FlatButton(
      child: Text("Save"),
      onPressed: () => bloc.update(this._updateUser),
    );
  }
}
