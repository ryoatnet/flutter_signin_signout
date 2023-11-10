/// 疑似化の際、レスポンスを遅らせるためのmixin
mixin LateResponse {
  Future<T> responseAsync<T>(Future<T> Function() function, {int delay = 500}) {
    return Future<T>.delayed(
      Duration(milliseconds: delay),
      function,
    );
  }

  Future<T> response<T>(T Function() function, {int delay = 500}) {
    return Future<T>.delayed(
      Duration(milliseconds: delay),
      function,
    );
  }
}
