import 'package:flutter/material.dart';

import 'package:common/common.dart';
// import 'package:mobt/src/providers/story_provider.dart';

import './screens/index.dart';
import './screens/groups/group_screen.dart';

bool isAuth = true;
bool userIsAuthenticated = false;

// Map<String, MaterialPageRoute> guestRoutes = {
//   "/": homeRoute(),
//   "/groups/id": group(),
//   "/settings": settings()
// };

Route routes(RouteSettings s) {
  /**
   * Guest Routes
   */
  if (userIsAuthenticated == true /** hard coded for NOW */) {
    switch (s.name) {
      case '/':
        return welcomeRoute();
      case "/login":
        return login();
      case "/phone_verify":
        return phoneVerifyRoute();
        break;
    }
  }
  /**
   * Auth routes
   */
  switch (s.name) {
    case "/":
      return homeRoute();
    case "/settings":
      return settings();
      break;
  }

  // return guestRoutes[s.name];
  // // return homeRoute();
  // print("List doesn't containe this key: " + s.name);
  // return;
  // // return guestRoutes[s.name];
  // switch (s.name) {
  //   case '/':
  //     return homeRoute();
  //   case '/me':
  //     return usersProfileRoute();
  //   /** Settings Routes */
  //   case '/settings':
  //     return settings();
  //   case '/settings/profile':
  //     return profileSettings();
  //   case '/auth/login':
  //     return login();
  //   /** Groups */
  //   case '/groups/create':
  //     return createGroup();
  //   case '/groups/id':
  //     return group();
  //   case '/groups/info':
  //     return groupInfo();
  //   case '/groups/id/edit':
  //     return editGroup();
  //     break;
  // }
}

/**
 * 
 *  Welcome page
 * 
 */
MaterialPageRoute welcomeRoute() {
  return MaterialPageRoute(builder: (context) {
    return WelcomeScreen();
  });
}

MaterialPageRoute phoneVerifyRoute() {
  return MaterialPageRoute(builder: (context) {
    return PhoneVerifyScreen();
  });
}
/**
 *
 * Home
 */

MaterialPageRoute homeRoute() {
  return MaterialPageRoute(builder: (context) {
    return Home();
  });
}

/**
 * 
 *  Auth
 * 
 */
// login
MaterialPageRoute login() {
  return MaterialPageRoute(builder: (context) {
    //! return LoginScreen();

    return null;
  });
}

/**
 *
 * * Users
 *
 */
MaterialPageRoute usersProfileRoute() {
  // print('result in routes ${b.toString()}');
  return MaterialPageRoute(builder: (context) {
    // final bloc = StoryProvider.of(context);
    // bloc.fetchItems();
    return UsersProfile();
  });
}
/**
 * 
 * *  Settings Routes
 * 
 */

MaterialPageRoute settings() {
  // print('result in routes ${b.toString()}');
  return MaterialPageRoute(
    builder: (context) {
      // final bloc = StoryProvider.of(context);
      // bloc.fetchItems();
      //! return SettingsScreen();
      return null;
    },
    fullscreenDialog: true,
  );
}

MaterialPageRoute profileSettings() {
  return MaterialPageRoute(builder: (context) {
    return ProfileSettingsScreen();
  });
}

/**
 * 
 *  Groups
 * 
 */
MaterialPageRoute group() {
  // print('result in routes ${b.toString()}');
  return MaterialPageRoute(builder: (context) {
    // final bloc = StoryProvider.of(context);
    // bloc.fetchItems();
    return GroupScreen();
  });
}

MaterialPageRoute createGroup() {
  // print('result in routes ${b.toString()}');
  return MaterialPageRoute(
    builder: (context) {
      // final bloc = StoryProvider.of(context);
      // bloc.fetchItems();
      return CreateGroupScreen();
    },
    fullscreenDialog: true,
  );
}

MaterialPageRoute editGroup() {
  // print('result in routes ${b.toString()}');
  return MaterialPageRoute(builder: (context) {
    // final bloc = StoryProvider.of(context);
    // bloc.fetchItems();
    return EditGroupScreen();
  });
}

MaterialPageRoute groupInfo() {
  // print('result in routes ${b.toString()}');
  return MaterialPageRoute(builder: (context) {
    // final bloc = StoryProvider.of(context);
    // bloc.fetchItems();
    return GroupInfoScreen();
  });
}
