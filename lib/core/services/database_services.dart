abstract class DatabaseServices {
  Future<void> addData({
    required String path,
    required Map<String, dynamic> data,
    String docId,
  });

  Future<T?> getData<T>({
    required String path,
    required T Function(dynamic rawData) fromResponse,
  });
}
