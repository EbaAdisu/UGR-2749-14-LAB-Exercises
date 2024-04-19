import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BlocProvider(
        create: (_) => CounterBloc(),
        child: HomePage(),
      ),
    );
  }
}

// home_page.dart

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App with BLoC"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: BlocBuilder<CounterBloc, CounterState>(
          builder: (context, state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('You have pushed the button this many times:'),
                Text('${state.count}',
                    style: Theme.of(context).textTheme.headline4),
              ],
            );
          },
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: () =>
                context.read<CounterBloc>().add(CounterEvent.decrement),
            tooltip: 'Decrement',
            child: Icon(Icons.remove),
          ),
          SizedBox(width: 20), // Spacing between the buttons
          FloatingActionButton(
            onPressed: () =>
                context.read<CounterBloc>().add(CounterEvent.increment),
            tooltip: 'Increment',
            child: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}

enum CounterEvent { increment, decrement }

// counter_state.dart
class CounterState {
  final int count;
  CounterState({required this.count});
}

// counter_bloc.dart

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(count: 0)) {
    on<CounterEvent>((event, emit) {
      switch (event) {
        case CounterEvent.increment:
          emit(CounterState(count: state.count + 1));
          break;
        case CounterEvent.decrement:
          emit(CounterState(count: state.count - 1));
          break;
      }
    });
  }
}
