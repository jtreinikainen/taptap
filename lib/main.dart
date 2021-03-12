import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Täptäp',
      theme: ThemeData(
        primaryColor: Colors.pink[600],
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Timers(),
    );
  }
}

class Timers extends StatefulWidget {
  @override
  _TimersState createState() => _TimersState();
}

class _TimersState extends State<Timers> {
  final _timers = ["moi", "hei"];
  final _selected = {};

  void _selectTimer() {}

  Widget _buildTimers() {
    return ListView.builder(
        padding: EdgeInsets.all(16.0),
        itemCount: _timers.length,
        itemBuilder: (context, int i) {
          return _buildCard(_timers[i]);
        });
  }

  Widget _buildCard(String label) {
    return ListTile(title: Text(label));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TäpTäp'),
      ),
      body: _buildTimers(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        tooltip: "Täp",
        child: const Icon(Icons.add),
      ),
      endDrawer: Drawer()
    );
  }
}

class TimerCard extends StatelessWidget {
  TimerCard({@required this.index, @required this.onPress});

  final index;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
      children: <Widget>[
        Text('Card $index'),
        TextButton(
          child: const Text('Press'),
          onPressed: this.onPress,
        ),
      ],
    ));
  }
}
