class Result<T> {
  final T? data; // The data on success
  final String? error; // The error message on failure

  // Private constructor
  const Result._({this.data, this.error});

  // Factory for success
  factory Result.success(T data) {
    return Result._(data: data);
  }

  // Factory for failure
  factory Result.failure(String error) {
    return Result._(error: error);
  }

  // Check if the result is successful
  bool get isSuccess => data != null;

  // Check if the result is a failure
  bool get isFailure => error != null;
}

