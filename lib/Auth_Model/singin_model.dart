class Auth_model_SIngin {
  bool? status;
  String? message;
  Null? data;

  Auth_model_SIngin({this.status, this.message, this.data});

  Auth_model_SIngin.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    data['data'] = this.data;
    return data;
  }
}
