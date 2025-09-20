class OtpRequest {
  String phonenumber;
  String otp;

  OtpRequest({
    required this.phonenumber,
    required this.otp,
  });

  Map<String, dynamic> toJson() => {
        'phonenumber': phonenumber,
        'otp': otp,
      };
}

class OtpResponse {
  String accessToken;
  String refreshToken;
  String message;

  OtpResponse({
    required this.accessToken,
    required this.refreshToken,
    required this.message,
  });

  factory OtpResponse.fromJson(Map<String, dynamic> json) => OtpResponse(
        accessToken: json['data']['accessToken'],
        refreshToken: json['data']['refreshToken'],
        message: json['message'],
      );
}
