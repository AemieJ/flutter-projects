import 'dart:async';
import '../events/counter_event.dart';

class CounterBloc {
  int _counter = 0; 
  // ignore: close_sinks
  final _counterStateController = StreamController<int>();
  StreamSink<int> get _inCounter => _counterStateController.sink;
  Stream<int> get counter => _counterStateController.stream;

  // ignore: close_sinks
  final _counterEventController = StreamController<CounterEvent>();
  Sink<CounterEvent> get counterEventSink => _counterEventController.sink;

  CounterBloc() {
    _counterEventController.stream.listen(_mapEventToState);
  }

  void _mapEventToState(CounterEvent event) {
    if (event is IncreamentEvent) {
      _counter++;
    } else {
      _counter--;
    }
    _inCounter.add(_counter);
  }

   void dispose() {
     _counterStateController.close();
     _counterEventController.close();
   }
}

