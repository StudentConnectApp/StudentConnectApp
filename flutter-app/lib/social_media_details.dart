import 'package:flutter/material.dart';

void main() => runApp(const SocialMediaDetails());

class SocialMediaDetails extends StatelessWidget {
  const SocialMediaDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.white,
            body: SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.0),
                child: SocialMediaDetailsPage(),
              ),
            )));
  }
}

class SocialMediaDetailsPage extends StatefulWidget {
  const SocialMediaDetailsPage({super.key});

  @override
  _SocialMediaPageDetailsState createState() => _SocialMediaPageDetailsState();
}

class _SocialMediaPageDetailsState extends State<SocialMediaDetailsPage> {
  bool isChecked = false;

  get onChanged => null;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Align(
          alignment: Alignment.topRight,
          child: TextButton(
            onPressed: () {},
            child: const Text(
              'skip',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ),
        const Text(
          'Social Media',
          textAlign: TextAlign.left,
          style: TextStyle(
            color: Colors.green,
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Instagram',
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'LinkedIn',
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Snapchat',
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Twitter',
            ),
          ),
        ),
        Row(
          children: <Widget>[
            Checkbox(
                checkColor: Colors.black,
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value!;
                  });
                }),
            const Expanded(
              child: Text(
                  'I acknowledge that social media handles entered will be shared with mutual friends on the app.',
                style: TextStyle(
                  color: Colors.red
                ),
              ),
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.all(50.0),
          child: ElevatedButton(onPressed: (){},
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all(Colors.white),
              backgroundColor: MaterialStateProperty.all(Colors.black),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
              ),
            ),
              child: const Text('continue'),
          ),
        ),
      ],
    );
  }
}
