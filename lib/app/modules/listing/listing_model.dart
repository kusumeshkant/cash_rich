class Listing {
  Status? status;

  Listing({this.status});

  Listing.fromJson(Map<String, dynamic> json) {
    status = json['status'] != null ? Status?.fromJson(json['status']) : null;

  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (status != null) {
      data['status'] = status?.toJson();
    }
    return data;
  }
}

class Status {
  String? timestamp;
  int? errorCode;
  String? errorMessage;
  int? elapsed;
  int? creditCount;

  Status(
      {this.timestamp,
      this.errorCode,
      this.errorMessage,
      this.elapsed,
      this.creditCount});

  Status.fromJson(Map<String, dynamic> json) {
    timestamp = json['timestamp'];
    errorCode = json['error_code'];
    errorMessage = json['error_message'];
    elapsed = json['elapsed'];
    creditCount = json['credit_count'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['timestamp'] = timestamp;
    data['error_code'] = errorCode;
    data['error_message'] = errorMessage;
    data['elapsed'] = elapsed;
    data['credit_count'] = creditCount;
    return data;
  }
}
