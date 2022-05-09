class UserModel {
  String? id;
  String? name;
  String? email;
  String? pass;
  String? lastName;
  String? cpf;
  String? confirmPass;

  UserModel(
      {this.email,
      this.pass,
      this.name,
      this.confirmPass,
      this.id,
      this.cpf,
      this.lastName});

  Map<String, dynamic> toMap() {
    return {
      "name": this.name,
      "email": this.email,
      "Id": this.id,
      "pass": this.pass,
      "lastName": this.lastName,
      "cpf": this.cpf,
      "confirmPass": this.confirmPass,
    };
  }
}
//https://jsontodart.com/