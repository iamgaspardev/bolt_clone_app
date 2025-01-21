import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.red.shade100,
                  ),
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.red.shade300,
                        child: Icon(
                          Icons.person,
                          color: Colors.white,
                          size: 40,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Gaspar Giddson',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Row(
                            children: [
                              Icon(Icons.star, color: Colors.red),
                              Text(
                                '4.98 Rating',
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.add_circle, color: Colors.red),
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(12),
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      decoration: BoxDecoration(
                        color: Colors.red.shade50,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.calendar_today, color: Colors.red),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              'Connect your calendar for personalized suggestions',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                    ListTile(
                      leading: Icon(Ionicons.person, color: Colors.red),
                      title: Text('Personal info'),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Icon(Ionicons.log_in_outline, color: Colors.red),
                      title: Text('Login & security'),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Icon(Icons.privacy_tip, color: Colors.red),
                      title: Text('Privacy'),
                      onTap: () {},
                    ),
                    const Divider(),
                    Text(
                      'Saved places',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    ListTile(
                      leading: Icon(Ionicons.home, color: Colors.red),
                      title: Text('Enter home location'),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Icon(Icons.work, color: Colors.red),
                      title: Text('Work'),
                      subtitle: Text('MDH, Dar es Salaam'),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Icon(Ionicons.add, color: Colors.red),
                      title: Text('Add a place'),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
