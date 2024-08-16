class Ticker {
  const Ticker();
  Stream<int> Tick({required int ticks}) {
    return Stream.periodic(Duration(seconds: 2), (x) => ticks - x - 1)
        .take(ticks);
  }
}