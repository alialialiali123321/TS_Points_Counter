import 'package:flutter/material.dart';

class PointsCounter extends StatefulWidget {
  const PointsCounter({super.key});

  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int teamAPoints = 0;

  int teamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Points Counter'),
        backgroundColor: Colors.orange,
      ),
      body: Column(
        children: [
          const Spacer(
            flex: 1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  const Text(
                    'Team A',
                    style: TextStyle(
                      fontSize: 35,
                    ),
                  ),
                  Text(
                    '$teamAPoints',
                    style: const TextStyle(
                      fontSize: 150,
                    ),
                  ),
                  DefaultButton(
                    text: 'Add 1 Point',
                    onPressed: () {
                      setState(() {
                        teamAPoints++;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  DefaultButton(
                    text: 'Add 2 Point',
                    onPressed: () {
                      setState(() {
                        teamAPoints += 2;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  DefaultButton(
                    text: 'Add 3 Point',
                    onPressed: () {
                      setState(() {
                        teamAPoints += 3;
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 370,
                child: VerticalDivider(
                  color: Colors.grey,
                  thickness: 1,
                ),
              ),
              Column(
                children: [
                  const Text(
                    'Team B',
                    style: TextStyle(
                      fontSize: 35,
                    ),
                  ),
                  Text(
                    '$teamBPoints',
                    style: const TextStyle(
                      fontSize: 150,
                    ),
                  ),
                  DefaultButton(
                    text: 'Add 1 Point',
                    onPressed: () {
                      setState(() {
                        teamBPoints++;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  DefaultButton(
                    text: 'Add 2 Point',
                    onPressed: () {
                      setState(() {
                        teamBPoints += 2;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  DefaultButton(
                    text: 'Add 3 Point',
                    onPressed: () {
                      setState(() {
                        teamBPoints += 3;
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
          const Spacer(
            flex: 3,
          ),
          DefaultButton(
            text: 'Reset',
            onPressed: () {
              setState(() {
                teamAPoints = 0;
                teamBPoints = 0;
              });
            },
          ),
          const Spacer(
            flex: 2,
          )
        ],
      ),
    );
  }
}

class DefaultButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const DefaultButton({
    super.key,
    this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.orange,
        foregroundColor: Colors.black,
        textStyle: const TextStyle(fontSize: 18),
        fixedSize: const Size(160, 50),
      ),
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
