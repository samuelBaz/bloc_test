import 'package:block_test/blocs/counter_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SecondPage extends StatefulWidget{

  final String title;

  const SecondPage({Key? key, required this.title}) : super(key: key);


  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {

  void _incrementCounter() {
    final counterBloc = BlocProvider.of<CounterBloc>(context);
    counterBloc.add(const OnSetCounterEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'SP You have pushed the button this many times:',
            ),
            BlocBuilder<CounterBloc, CounterState>(builder: (context, state) {
              return Text(
                state.counter.toString(),
                style: Theme.of(context).textTheme.headline4,
              );
            }),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}