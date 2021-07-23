import 'package:anithemes/screen/library.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  PageController? _pageController;
  int _page = 1;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AniThemes"),
        actions: [
          IconButton(onPressed: () => Navigator.pushNamed(context, "/settings"), icon: Icon(Icons.settings))
        ],
      ),

      body: PageView(
        children: <Widget>[
          Container(
            color: Colors.orangeAccent,
          ),
          Container(
            color: Colors.redAccent,
          ),
          LibrarySection()
        ],
        controller: _pageController,
        physics: BouncingScrollPhysics(),
        onPageChanged: onPageChanged,
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.library_music), label: "Library")
        ],
        selectedItemColor: Theme.of(context).primaryColorLight,
        currentIndex: _page,
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
    _pageController?.dispose();
    super.dispose();
  }

  void navigationTapped(int page) {
    _pageController?.animateToPage(
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

