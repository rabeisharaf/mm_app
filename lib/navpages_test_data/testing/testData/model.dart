class Result {
  List NN;
  List LR;
  List DT;
  List SVM;
  List XGBOOST;

  Result({
    this.NN,
    this.LR,
    this.DT,
    this.SVM,
    this.XGBOOST,
  });

  Result.fromJson(Map<String, dynamic> json) {
    NN = json['NN'];
    LR = json['LR'];
    DT = json['DT'];
    SVM = json['SVM'];
    XGBOOST = json['XGBOOST'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['NN'] = NN;
    data['LR'] = LR;
    data['DT'] = DT;
    data['SVM'] = SVM;
    data['XGBOOST'] = XGBOOST;

    return data;
  }
}
