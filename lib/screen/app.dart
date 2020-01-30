import 'package:flutter/material.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> with SingleTickerProviderStateMixin {
  PageController _pageController;
  int _page = 1;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("AniThemes")),

//      body: PageView(
//        children: <Widget>[
//          Container(
//            color: Colors.orangeAccent,
//          ),
//          Container(
//            color: Colors.redAccent,
//          ),
//          Container(
//            color: Colors.blueAccent,
//          ),
//        ],
//        controller: _pageController,
//        physics: BouncingScrollPhysics(),
//        onPageChanged: onPageChanged,
//      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.search), title: Text("Search")),
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
          BottomNavigationBarItem(icon: Icon(Icons.library_music), title: Text("Library"))
        ],
        selectedItemColor: Theme.of(context).primaryColorLight,
        currentIndex: 1,
        onTap: navigationTapped,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void navigationTapped(int page) {
    _pageController.animateToPage(
      page,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeIn,
    );
  }


  void onPageChanged(int page) {
    setState(() {
      this._page = page;
    });
  }

}

