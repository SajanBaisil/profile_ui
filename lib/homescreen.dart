import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:profile_ui/listtiles.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 450,
            width: double.infinity,
            color: Colors.white,
            child: SafeArea(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_back)),
                        IconButton(
                            onPressed: () {}, icon: const Icon(Icons.segment)),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(80),
                        boxShadow: [
                          BoxShadow(color: Colors.grey.withOpacity(0.3))
                        ]),
                    child: const CircleAvatar(
                      radius: 80,
                      backgroundImage: AssetImage('assets/images.jpeg'),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('assets/facebook.png'),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('assets/google.png'),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('assets/twitter.png'),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('assets/linkdin.png'),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'chromicle',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                  ),
                  const Text('@amFOSS'),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'Mobile App Developer and Open',
                    style: TextStyle(fontSize: 20),
                  ),
                  const Text(
                    'Source enthusiastic',
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: const [
                listUi(
                  leading: Icons.lock_person,
                  text: 'Privacy',
                ),
                listUi(
                  leading: Icons.restore,
                  text: 'Purchase History',
                ),
                listUi(
                  leading: Icons.help_outline,
                  text: 'Help & Support',
                ),
                listUi(
                  leading: Icons.settings,
                  text: 'Settings',
                ),
                listUi(
                  leading: Icons.person_add_outlined,
                  text: 'Invite a friend',
                ),
                listUi(leading: Icons.logout, text: 'Log Out')
              ],
            ),
          )
        ],
      ),
    );
  }
}
