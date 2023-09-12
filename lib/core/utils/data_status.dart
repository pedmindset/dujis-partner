enum LoginDataStatus {
  initial,
  loading,
  success,
  error;

  bool get isInitial => this == LoginDataStatus.initial;
  bool get isLoading => this == LoginDataStatus.loading;
  bool get isSuccess => this == LoginDataStatus.success;
  bool get isError => this == LoginDataStatus.error;
}

enum ShopperDataStatus {
  orderInitial,
  orderLoading,
  orderSuccess,
  orderError,
  pastOrderInitial,
  pastOrderLoading,
  pastOrderSuccess,
  pastOrderError,
  supplierInitial,
  supplierLoading,
  supplierSuccess,
  supplierError,
  packedInitial,
  packedLoading,
  packedSuccess,
  packedError,
  assignInitial,
  assignLoading,
  assignSuccess,
  assignError;

  bool get isOrderInitial => this == ShopperDataStatus.orderInitial;
  bool get isOrderLoading => this == ShopperDataStatus.orderLoading;
  bool get isOrderSuccess => this == ShopperDataStatus.orderSuccess;
  bool get isOrderError => this == ShopperDataStatus.orderError;

  bool get isPastOrderInitial => this == ShopperDataStatus.pastOrderInitial;
  bool get isPastOrderLoading => this == ShopperDataStatus.pastOrderLoading;
  bool get isPastOrderSuccess => this == ShopperDataStatus.pastOrderSuccess;
  bool get isPastOrderError => this == ShopperDataStatus.pastOrderError;

  bool get isSupplierInitial => this == ShopperDataStatus.supplierInitial;
  bool get isSupplierLoading => this == ShopperDataStatus.supplierLoading;
  bool get isSupplierSuccess => this == ShopperDataStatus.supplierSuccess;
  bool get isSupplierError => this == ShopperDataStatus.supplierError;

  bool get isPackedInitial => this == ShopperDataStatus.packedInitial;
  bool get isPackedLoading => this == ShopperDataStatus.packedLoading;
  bool get isPackedSuccess => this == ShopperDataStatus.packedSuccess;
  bool get isPackedError => this == ShopperDataStatus.packedError;

  bool get isAssignInitial => this == ShopperDataStatus.assignInitial;
  bool get isAssignLoading => this == ShopperDataStatus.assignLoading;
  bool get isAssignSuccess => this == ShopperDataStatus.assignSuccess;
  bool get isAssignError => this == ShopperDataStatus.assignError;
}

enum SupplierDataStatus {
  dashboardInitial,
  dashboardLoading,
  dashboardSuccess,
  dashboardError,

  ordersInitial,
  ordersLoading,
  ordersSuccess,
  ordersError,

  latestOrdersInitial,
  latestOrdersLoading,
  latestOrdersSuccess,
  latestOrdersError,

  pastOrdersInitial,
  pastOrdersLoading,
  pastOrdersSuccess,
  pastOrdersError;

  bool get isDashboardInitial => this == SupplierDataStatus.dashboardInitial;
  bool get isDashboardLoading => this == SupplierDataStatus.dashboardLoading;
  bool get isDashboardSuccess => this == SupplierDataStatus.dashboardSuccess;
  bool get isDashboardError => this == SupplierDataStatus.dashboardError;

  bool get isOrdersInitial => this == SupplierDataStatus.ordersInitial;
  bool get isOrdersLoading => this == SupplierDataStatus.ordersLoading;
  bool get isOrdersSuccess => this == SupplierDataStatus.ordersSuccess;
  bool get isOrdersError => this == SupplierDataStatus.ordersSuccess;

  bool get isLatestOrdersInitial =>
      this == SupplierDataStatus.latestOrdersInitial;
  bool get isLatestOrdersLoading =>
      this == SupplierDataStatus.latestOrdersLoading;
  bool get isLatestOrdersSuccess =>
      this == SupplierDataStatus.latestOrdersSuccess;
  bool get isLatestOrdersError => this == SupplierDataStatus.latestOrdersError;

  bool get isPastOrdersInitial => this == SupplierDataStatus.pastOrdersInitial;
  bool get isPastOrdersLoading => this == SupplierDataStatus.pastOrdersLoading;
  bool get isPastOrdersSuccess => this == SupplierDataStatus.pastOrdersSuccess;
  bool get isPastOrdersError => this == SupplierDataStatus.pastOrdersError;
}
