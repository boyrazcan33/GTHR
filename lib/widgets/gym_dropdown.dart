// File: widgets/gym_dropdown.dart
import 'package:flutter/material.dart';

class GymDropdown extends StatelessWidget {
  final List<String> gyms;
  final String selectedGym;
  final void Function(String?) onChanged;

  const GymDropdown({
    super.key,
    required this.gyms,
    required this.selectedGym,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: selectedGym,
      decoration: const InputDecoration(labelText: 'Select Gym'),
      items: gyms.map((gym) => DropdownMenuItem(value: gym, child: Text(gym))).toList(),
      onChanged: onChanged,
    );
  }
}