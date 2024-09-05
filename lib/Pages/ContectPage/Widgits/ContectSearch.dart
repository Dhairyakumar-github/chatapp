import 'package:flutter/material.dart';

class ContectSearch extends StatelessWidget {
  const ContectSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      // height: 60,
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: TextField(
        onChanged: (value) {},
        style: Theme.of(context).textTheme.bodyLarge,
        decoration: InputDecoration(
            prefixIcon: Icon(Icons.search),
            hintText: "Search ",
            filled: true,
            fillColor: Theme.of(context).colorScheme.onPrimary),
      ),
    );
  }
}
