class Singleton {
  List<int> questions= List<int>.generate(8, (i) => 0);
  static final Singleton _singleton = Singleton._internal();

  factory Singleton() {
    return _singleton;
  }

  Singleton._internal();
}
