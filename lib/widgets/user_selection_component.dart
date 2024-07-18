import 'package:flutter/material.dart';
import 'package:placement_app/widgets/selection_cards.dart';

class UserSelectionComponent extends StatefulWidget {
  @override
  _UserSelectionComponentState createState() => _UserSelectionComponentState();
}

class _UserSelectionComponentState extends State<UserSelectionComponent> {
  String? selectedCard;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(child: SelectionCard(title: 'Teacher', icon: Icons.theater_comedy_outlined, isSelected: false, onTap: (){})),
        SizedBox(width: 10),
        Expanded(child: SelectionCard(title: 'Student', icon: Icons.theater_comedy_outlined, isSelected: false, onTap: (){})),
        SizedBox(width: 10),
        Expanded(child: SelectionCard(title: 'Recruiter', icon: Icons.theater_comedy_outlined, isSelected: false, onTap: (){})),
        ],
    );
  }
}
