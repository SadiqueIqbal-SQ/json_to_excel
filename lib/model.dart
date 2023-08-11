class Student {
  SecurityQuestion? securityQuestion;
  String? sId;
  String? studentID;
  String? fullName;
  String? countryCode;
  int? phoneNumber;
  String? email;
  bool? isEmailVerified;
  bool? isPhoneNumberVerified;
  bool? isAccountActive;
  int? iV;

  Student(
      {this.securityQuestion,
      this.sId,
      this.studentID,
      this.fullName,
      this.countryCode,
      this.phoneNumber,
      this.email,
      this.isEmailVerified,
      this.isPhoneNumberVerified,
      this.isAccountActive,
      this.iV});

  Student.fromJson(Map<String, dynamic> json) {
    securityQuestion = json['securityQuestion'] != null
        ? new SecurityQuestion.fromJson(json['securityQuestion'])
        : null;
    sId = json['_id'];
    studentID = json['studentID'];
    fullName = json['fullName'];
    countryCode = json['countryCode'];
    phoneNumber = json['phoneNumber'];
    email = json['email'];
    isEmailVerified = json['isEmailVerified'];
    isPhoneNumberVerified = json['isPhoneNumberVerified'];
    isAccountActive = json['isAccountActive'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.securityQuestion != null) {
      data['securityQuestion'] = this.securityQuestion!.toJson();
    }
    data['_id'] = this.sId;
    data['studentID'] = this.studentID;
    data['fullName'] = this.fullName;
    data['countryCode'] = this.countryCode;
    data['phoneNumber'] = this.phoneNumber;
    data['email'] = this.email;
    data['isEmailVerified'] = this.isEmailVerified;
    data['isPhoneNumberVerified'] = this.isPhoneNumberVerified;
    data['isAccountActive'] = this.isAccountActive;
    data['__v'] = this.iV;
    return data;
  }
}

class SecurityQuestion {
  String? question;
  String? answer;

  SecurityQuestion({this.question, this.answer});

  SecurityQuestion.fromJson(Map<String, dynamic> json) {
    question = json['question'];
    answer = json['answer'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['question'] = this.question;
    data['answer'] = this.answer;
    return data;
  }
}
