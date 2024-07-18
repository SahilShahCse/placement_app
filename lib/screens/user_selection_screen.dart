import 'package:flutter/material.dart';
import 'package:placement_app/widgets/user_selection_component.dart';

import '../widgets/selection_cards.dart';

class UserSelectionScreen extends StatelessWidget {
  const UserSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffd7ebba),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UserSelectionComponent(),
          ],
        ),
      ),
    );
  }
}
