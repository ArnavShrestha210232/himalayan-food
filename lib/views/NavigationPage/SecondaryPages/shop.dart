import 'package:eccomerce/helper/custom_gridshop.dart';
import 'package:eccomerce/provider/search_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  void initState() {
    Provider.of<Search_provider>(context, listen: false);
    super.initState();
  }

  TextEditingController _searchQueryController = TextEditingController();
  bool _isSearching = false;
  String searchQuery = "Search query";
  @override
  Widget build(BuildContext context) {
    // Search_provider search_provider =
    //     Provider.of<Search_provider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        leading: _isSearching
            ? const BackButton()
            : Container(
                child: IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'bottomnavbar');
                  },
                  icon: Icon(
                    Icons.arrow_back,
                  ),
                ),
              ),
        title: _isSearching ? _buildSearchField() : Text('Shop'),
        actions: _buildActions(context),
      ),
      body: Stack(
        children: [
          Container(
            height: MediaQuery.sizeOf(context).height * 5,
            child: Custom_Grid_Shop(
                height: double.infinity,
                axisDirection: Axis.vertical,
                crossAxisCount: 2,
                childAspectRatio: 12 / 19.5,
                mainAxisSpacing: 11,
                crossAxisSpacing: 10),
          ),
          // Positioned(
          //   bottom: 550,
          //   right: 10,
          //   left: 10,
          //   child: Padding(
          //     padding: const EdgeInsets.symmetric(horizontal: 8),
          //     child: SearchBar(
          //       hintStyle:
          //           MaterialStatePropertyAll(TextStyle(color: Colors.grey)),
          //       elevation: MaterialStateProperty.all(1),
          //       hintText: 'Search...',
          //       leading: Icon(Icons.search),
          //       trailing: [
          //         Icon(Icons.sort),
          //       ],
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }

  Widget _buildSearchField() {
    return TextField(
      controller: _searchQueryController,
      autofocus: true,
      decoration: InputDecoration(
        hintText: "Search...",
        border: InputBorder.none,
        hintStyle: TextStyle(color: Colors.grey),
      ),
      style: TextStyle(color: Colors.black, fontSize: 16.0),
      onChanged: (query) => updateSearchQuery(query),
    );
  }

  List<Widget> _buildActions(BuildContext context) {
    if (_isSearching) {
      return <Widget>[
        IconButton(
          icon: const Icon(Icons.clear),
          onPressed: () {
            if (_searchQueryController == null ||
                _searchQueryController.text.isEmpty) {
              Navigator.pushNamed(context, 'shop');
              return;
            }
            _clearSearchQuery();
          },
        ),
        Padding(
          padding: const EdgeInsets.only(right: 12),
          child: Icon(Icons.sort),
        ),
      ];
    }

    return <Widget>[
      Consumer<Search_provider>(
        builder: (context, index, _) => IconButton(
          icon: const Icon(Icons.search),
          onPressed: () => _startSearch(),
        ),
      ),
    ];
  }

  void _startSearch() {
    // ModalRoute.of(context)
    // .addLocalHistoryEntry(LocalHistoryEntry(onRemove: _stopSearching));

    setState(() {
      _isSearching = true;
    });
  }

  void updateSearchQuery(String newQuery) {
    setState(() {
      searchQuery = newQuery;
    });
  }

  void _stopSearching() {
    _clearSearchQuery();

    setState(() {
      _isSearching = false;
    });
  }

  void _clearSearchQuery() {
    setState(() {
      _searchQueryController.clear();
      updateSearchQuery("");
    });
  }
}
