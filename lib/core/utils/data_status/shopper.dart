enum ShNewOrdersStatus {
  initial,
  loading,
  success,
  error,
  networkError;

  bool get isInitial => this == ShNewOrdersStatus.initial;
  bool get isLoading => this == ShNewOrdersStatus.loading;
  bool get isSuccess => this == ShNewOrdersStatus.success;
  bool get isError => this == ShNewOrdersStatus.error;
  bool get isNetworkError => this == ShNewOrdersStatus.networkError;
}

enum ShPastOrdersStatus {
  initial,
  loading,
  success,
  error,
  networkError;

  bool get isInitial => this == ShPastOrdersStatus.initial;
  bool get isLoading => this == ShPastOrdersStatus.loading;
  bool get isSuccess => this == ShPastOrdersStatus.success;
  bool get isError => this == ShPastOrdersStatus.error;
  bool get isNetworkError => this == ShPastOrdersStatus.networkError;
}

enum ShSupplierStatus {
  initial,
  loading,
  success,
  error,
  networkError;

  bool get isInitial => this == ShSupplierStatus.initial;
  bool get isLoading => this == ShSupplierStatus.loading;
  bool get isSuccess => this == ShSupplierStatus.success;
  bool get isError => this == ShSupplierStatus.error;
  bool get isNetworkError => this == ShSupplierStatus.networkError;
}

enum ShPackedStatus {
  initial,
  loading,
  success,
  error,
  networkError;

  bool get isInitial => this == ShPackedStatus.initial;
  bool get isLoading => this == ShPackedStatus.loading;
  bool get isSuccess => this == ShPackedStatus.success;
  bool get isError => this == ShPackedStatus.error;
  bool get isNetworkError => this == ShPackedStatus.networkError;
}

enum ShAssignStatus {
  initial,
  loading,
  success,
  error,
  networkError;

  bool get isInitial => this == ShAssignStatus.initial;
  bool get isLoading => this == ShAssignStatus.loading;
  bool get isSuccess => this == ShAssignStatus.success;
  bool get isError => this == ShAssignStatus.error;
  bool get isNetworkError => this == ShAssignStatus.networkError;
}
