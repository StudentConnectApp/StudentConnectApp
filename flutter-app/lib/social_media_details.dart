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
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
            child: Align(
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
        ))
      ],
    );
  }
}
