// File: views/auth/profile_setup_screen.dart
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProfileSetupScreen extends StatefulWidget {
  const ProfileSetupScreen({super.key});

  @override
  State<ProfileSetupScreen> createState() => _ProfileSetupScreenState();
}

class _ProfileSetupScreenState extends State<ProfileSetupScreen> {
  final _formKey = GlobalKey<FormState>();
  String name = '';
  String gender = 'M';
  String experience = 'Green';
  String timeWeekdays = 'Morning';
  String timeWeekends = 'Afternoon';
  List<String> gymChoices = ['MyFitness - Tallinn', 'Gym! - Tartu'];
  List<String> buddyPrefs = ['Spotter', 'Powerlifting', 'Daily Talker'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Set Up Profile')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: 'Name'),
                onChanged: (val) => setState(() => name = val),
              ),
              const SizedBox(height: 16),
              DropdownButtonFormField<String>(
                value: gender,
                decoration: const InputDecoration(labelText: 'Gender'),
                items: ['M', 'F', 'Both'].map((g) => DropdownMenuItem(value: g, child: Text(g))).toList(),
                onChanged: (val) => setState(() => gender = val!),
              ),
              const SizedBox(height: 16),
              DropdownButtonFormField<String>(
                value: experience,
                decoration: const InputDecoration(labelText: 'Experience Level'),
                items: ['Pink', 'Yellow', 'Green', 'Blue', 'Black']
                    .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                    .toList(),
                onChanged: (val) => setState(() => experience = val!),
              ),
              const SizedBox(height: 16),
              DropdownButtonFormField<String>(
                value: timeWeekdays,
                decoration: const InputDecoration(labelText: 'Weekday Time'),
                items: ['Early Morning', 'Morning', 'Afternoon', 'Evening', 'Night']
                    .map((t) => DropdownMenuItem(value: t, child: Text(t)))
                    .toList(),
                onChanged: (val) => setState(() => timeWeekdays = val!),
              ),
              const SizedBox(height: 16),
              DropdownButtonFormField<String>(
                value: timeWeekends,
                decoration: const InputDecoration(labelText: 'Weekend Time'),
                items: ['Early Morning', 'Morning', 'Afternoon', 'Evening', 'Night']
                    .map((t) => DropdownMenuItem(value: t, child: Text(t)))
                    .toList(),
                onChanged: (val) => setState(() => timeWeekends = val!),
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    context.go('/home');
                  }
                },
                child: const Text('Finish Setup'),
              )
            ],
          ),
        ),
      ),
    );
  }
}