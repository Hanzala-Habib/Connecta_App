import 'package:connecta_app/constants/all_colors/GlobalColors.dart';
import 'package:flutter/material.dart';

class SearchTextfeild extends StatefulWidget {
  const SearchTextfeild({super.key});

  @override
  State<SearchTextfeild> createState() => _TextfeildState();
}

class _TextfeildState extends State<SearchTextfeild> {
  @override
  TextEditingController searchController = TextEditingController();
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(

        controller: searchController,
        decoration: InputDecoration(
          labelText: 'Search',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide:BorderSide.none
          ),
          prefixIcon: Icon(Icons.search),
        ),
      ),
    );
  }
}
