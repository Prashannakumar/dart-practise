import 'dart:async';

void main() {
  ///future
  // print("the main UI thread is starting on here");
  // print("It takes 10 seconds to display headlines");
  // displayNews();
  // print("The main UI thread ends.");

  /// async : await ///
  // Future checkVersion() async {
  //   var version = await checkVersion();
  //   // Do something with version
  //   try {
  //     return version;
  //   } catch (e) {
  //   // React to inability to look up the version
  //     return e;
  //   }
  // }
  // print(checkVersion());

  // print("The main UI thread is starting on here.");
  // print("Now it will take 3 seconds to display the version of Dart.");
  // checkVersion();
  // print("The main UI thread ends.");

  // Future<int>.delayed(
  //   Duration(seconds: 6),
  //   () {
  //     return 200;
  //   },
  // ).then((value) {
  //   print(value);
  // });
  // print('Waiting for a value for 6 seconds...');

  // Future<int>.delayed(
  //   Duration(seconds: 6),
  //   () => throw 'We are throwing some error here.',
  // ).then((value) {
  //   print(value);
  // });
  // print('Waiting for a value');

  Future<int>.delayed(
    Duration(seconds: 6),
    () {
      return 100;
      // throw 0000;
    },
  ).then((value) {
    print('success $value');
  }).catchError(
    (err) {
      print('Caught $err');
    },
    test: (err) => err.runtimeType == String,
  ).whenComplete(() {
    print("Process completed.");
  });
  print('The main UI thread is waiting');
}

Future<String> checkingNewsApp() {
  Future<String> delayingTenSec = Future.delayed(Duration(seconds: 5), () {
    return "the latest headlines are displayed here after 5 seconds";
  });
  return delayingTenSec;
}

void displayNews() async {
  Future<String> displayNewsHeadlines = checkingNewsApp();

  displayNewsHeadlines.then(
      (displayString) => print("Display news headlines here: $displayString"));

  String newsHeadlines = await checkingNewsApp();
  print("new headlines: $newsHeadlines");
}

Future<String> checkingVersion() {
// since we are returning a string value
// by delaying the main UI thread for 3 seconds
  Future<String> delayingTenSeconds = Future.delayed(Duration(seconds: 3), () {
    return "The version 2.1 is displayed here after 3 seconds.";
  });
// after 3 seconds the version will be displayed
  return delayingTenSeconds;
}

checkVersion() async {
  String version = await checkingVersion();
// Do something with version
  try {
    print("Displaying version here: $version");
  } catch (e) {
// React to inability to look up the version
    return e;
  }
}
