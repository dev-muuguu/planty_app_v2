import 'package:flutter/material.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showSearch(
          context: context,
          delegate: PlantSearchDelegate(),
        );
      },
      child: Container(
        padding: const EdgeInsets.only(left: 20),
        alignment: Alignment.center,
        width: 335,
        height: 32,
        decoration: BoxDecoration(
          border: Border.all(width: 2, color: const Color(0xFF618C6C)),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Image.asset("assets/icons/searchIcon.png"),
            const SizedBox(
              width: 13,
            ),
            const Text(
              'хайлт',
              style: TextStyle(
                color: Color(0xFF618C6C),
                fontSize: 12,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PlantSearchDelegate extends SearchDelegate {
  List<String> searchTerms = [
    "Spider Plant (Chlorophytum comosum)",
    "Peace Lily (Spathiphyllum)",
    "Snake Plant (Sansevieria trifasciata)",
    "Pothos (Epipremnum aureum)",
    "ZZ Plant (Zamioculcas zamiifolia)",
    "Aloe Vera (Aloe barbadensis miller)",
    "Fiddle Leaf Fig (Ficus lyrata)",
    "Chinese Evergreen (Aglaonema)",
    "Rubber Plant (Ficus elastica)",
    "Philodendron (Philodendron hederaceum)"
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          icon: const Icon(Icons.clear),
          onPressed: () {
            query = '';
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var plant in searchTerms) {
      if (plant.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(plant);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var plant in searchTerms) {
      if (plant.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(plant);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }
}
