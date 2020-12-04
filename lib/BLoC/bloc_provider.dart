import 'package:flutter/cupertino.dart';
import 'package:flutter_train_bloc/BLoC/Bloc.dart';


class BlocProvider<T extends Bloc> extends StatefulWidget {
  final Widget child;
  final T bloc;

  const BlocProvider({Key key, @required this.bloc, @required this.child})
      : super(key: key);

  static T of<T extends Bloc>(BuildContext context) {
    final BlocProvider<T> provider =
    context.findAncestorWidgetOfExactType<BlocProvider<T>>();
    return provider.bloc;
  }

  @override
  State createState() {
    return _BlocProviderState();
  }
}

class _BlocProviderState extends State<BlocProvider> {

  @override
  void initState() {
    super.initState();
    widget.bloc.init();
  }

  @override
  Widget build(BuildContext context) {
    widget.bloc.build(context);
    return widget.child;
  }

  @override
  void dispose() {
    widget.bloc.dispose();
    super.dispose();
  }
}
