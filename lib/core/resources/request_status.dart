class RequestStatus<T> {
  final T? data;
  final dynamic error; // Change dynamic to a specific error type if needed

  const RequestStatus({this.data, this.error});
}

class InitialRequestStatus<T> extends RequestStatus<T> {
  const InitialRequestStatus() : super(data: null, error: null);
}

class RequestStatusLoading<T> extends RequestStatus<T> {
  const RequestStatusLoading() : super(data: null, error: null);
}

class RequestStatusSuccess<T> extends RequestStatus<T> {
  const RequestStatusSuccess({T? data}) : super(data: data, error: null);
}

class RequestStatusFailure<T> extends RequestStatus<T> {
  const RequestStatusFailure(dynamic error) : super(data: null, error: error);
}
