class ApiResponse<T> {
  final Status? status;
  final T? data;
  final String? message;

  const ApiResponse.pure({this.data, this.message}) : status = Status.pure;

  const ApiResponse.loading({this.data, this.message})
      : status = Status.loading;

  const ApiResponse.completed(this.data, {this.message = ""})
      : status = Status.completed;

  const ApiResponse.error(this.message, {this.data}) : status = Status.error;

  @override
  String toString() {
    return "Status : $status \n Message : $message \n Data : $data";
  }
}

enum Status { pure, loading, completed, error }
