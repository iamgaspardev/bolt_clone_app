import 'package:flutter/material.dart';

class SearchRoute extends StatefulWidget {
  const SearchRoute({super.key});

  @override
  State<SearchRoute> createState() => _SearchRouteState();
}

class _SearchRouteState extends State<SearchRoute> {
  final List<String> suggestions = [
    "Coco Beach, Dar es Salaam",
    "Kariakoo Market, Dar es Salaam",
    "Sam Nujoma Road, Dar es Salaam",
    "Posta City Center, Dar es Salaam",
    "Mlimani City Mall, Dar es Salaam",
    "Julius Nyerere International Airport, Dar es Salaam",
    "Mwenge Woodcarvers Market, Dar es Salaam",
    "University of Dar es Salaam, Dar es Salaam",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Your route",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.close, color: Colors.red),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.add, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.red.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        _buildRouteInputField(
                            "From ...", Icons.location_on_outlined),
                        _buildRouteInputField(
                            "Destination", Icons.flag_outlined),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: suggestions.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: const Icon(Icons.location_pin, color: Colors.grey),
                  title: Text(
                    suggestions[index].split(',').first,
                    style: const TextStyle(fontWeight: FontWeight.w300),
                  ),
                  subtitle: Text(suggestions[index].split(',').last.trim()),
                  onTap: () {},
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRouteInputField(String hint, IconData icon) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 4, bottom: 4),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 4.0),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.transparent),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Icon(icon, color: Colors.grey),
            ),
            Expanded(
              child: TextField(
                cursorColor: Colors.red.withOpacity(0.6),
                decoration: InputDecoration(
                    hintText: hint,
                    border: InputBorder.none,
                    hintStyle: TextStyle(fontWeight: FontWeight.w400)),
                onTap: () {},
              ),
            ),
            IconButton(
              icon: const Icon(Icons.more_vert, color: Colors.grey),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
