import 'package:flutter/material.dart';

void main() => runApp(const Root());

class Root extends StatelessWidget {
  const Root({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'This is Title',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Padding Row Column Expanded'),
        ),
        body: const HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Card(
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 20 / 9,
                child: Image.network(
                  'https://www.itying.com/images/flutter/3.png',
                  fit: BoxFit.cover,
                ),
              ),
              ListTile(
                leading: ClipOval(
                  child: Image.network(
                    'https://www.itying.com/images/flutter/1.png',
                    fit: BoxFit.cover,
                    height: 60,
                    width: 60,
                  ),
                ),
                title: const Text('www.itying.com'),
                subtitle:
                    const Text('https://www.itying.com/images/flutter/1.png'),
              )
            ],
          ),
        ),
        Card(
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 20 / 9,
                child: Image.network(
                  'https://www.itying.com/images/flutter/3.png',
                  fit: BoxFit.cover,
                ),
              ),
              const ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://www.itying.com/images/flutter/1.png',
                  ),
                ),
                title: Text('www.itying.com'),
                subtitle: Text('https://www.itying.com/images/flutter/1.png'),
              )
            ],
          ),
        ),
      ],
    );
  }
}
