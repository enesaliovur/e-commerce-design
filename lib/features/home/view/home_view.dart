import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    final double dynamicWidth = MediaQuery.of(context).size.width;
    final double _dynamicHeight = MediaQuery.of(context).size.height;
    final String _profilePhotoUrl =
        "https://media-exp1.licdn.com/dms/image/C4D03AQF3uHaMSxqDrw/profile-displayphoto-shrink_100_100/0/1601621452324?e=1645660800&v=beta&t=X4wcKXghD2aHRZc5YYu-I4db2VnpOSYQYJRKsvv4NHc";
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: EdgeInsets.all(dynamicWidth * 0.05),
        child: Column(
          children: [
            _buildHeaderColumn(_profilePhotoUrl),
            _buildGridViewCount()
          ],
        ),
      )),
    );
  }

  Expanded _buildGridViewCount() {
    return Expanded(
      child: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 12,
        mainAxisSpacing: 100,
        crossAxisCount: 2,
        children: <Widget>[
          Container(child: Placeholder()),
          Container(child: Placeholder()),
          Container(child: Placeholder()),
          Container(child: Placeholder()),
          Container(child: Placeholder()),
          Container(child: Placeholder()),
          Container(child: Placeholder()),
          Container(child: Placeholder()),
        ],
      ),
    );
  }

  Column _buildHeaderColumn(String _profilePhotoUrl) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildHeader(_profilePhotoUrl),
        SizedBox(height: 10,),
        _buildSearchBar(),
          SizedBox(height: 10,),
        _buildChooseCategories(),
      ],
    );
  }

  Row _buildChooseCategories() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButton(
          onPressed: () {},
          child: Text(
            "All",
            style: TextStyle(color: Colors.white),
          ),
          style: ElevatedButton.styleFrom(
              primary: Colors.black,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              )),
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text(
            "Nike",
            style: TextStyle(color: Colors.grey),
          ),
          style: ElevatedButton.styleFrom(
              primary: Colors.white,
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0))),
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text(
            "Adidas",
            style: TextStyle(color: Colors.grey),
          ),
          style: ElevatedButton.styleFrom(
              primary: Colors.white,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              )),
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text(
            "Converse",
            style: TextStyle(color: Colors.grey),
          ),
          style: ElevatedButton.styleFrom(
              primary: Colors.white,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              )),
        ),
      ],
    );
  }

  Row _buildSearchBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [_buildSearchTextField(), _buildSearchIconButton()],
    );
  }

  Container _buildSearchIconButton() {
    return Container(
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(12),
        ),
        child: IconButton(
          onPressed: () {},
          icon: Icon(Icons.search),
          color: Colors.white,
        ));
  }

  Container _buildSearchTextField() {
    return Container(
      width: MediaQuery.of(context).size.width * 0.75,
      child: TextField(
        decoration: InputDecoration(
          hintText: "Search",
          isDense: true,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
        ),
      ),
    );
  }

  Row _buildHeader(String _profilePhotoUrl) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _builTextContent(),
        _buildUserProfilePhotoAvatar(_profilePhotoUrl)
      ],
    );
  }

  CircleAvatar _buildUserProfilePhotoAvatar(String _profilePhotoUrl) {
    return CircleAvatar(
      backgroundImage: NetworkImage(_profilePhotoUrl),
    );
  }

  Column _builTextContent() {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Hi Enes Ali"),
           SizedBox(height: 8,),
          Text("Good Morning!"),
        ]);
  }
}
