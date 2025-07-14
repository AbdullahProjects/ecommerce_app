import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  String? id;
  String? firstName;
  String? lastName;
  String? userName;
  String? email;
  String? phoneNumber;
  String? profilePicture;

  UserModel(
      {this.id,
      this.firstName,
      this.lastName,
      this.userName,
      this.email,
      this.phoneNumber,
      this.profilePicture});

  /// Helper function to get the full name
  String get fullName => "$firstName $lastName";

  /// Static function to split full name into first and last name
  static List<String> nameParts(String fullName) => fullName.split(" ");

  /// Helper function to create an empty user model
  static UserModel empty() => UserModel(
      id: '',
      firstName: '',
      lastName: '',
      userName: '',
      phoneNumber: '',
      profilePicture: '',
      email: '');

  /// Get data from json to create Model
  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    userName = json['userName'];
    email = json['email'];
    phoneNumber = json['phoneNumber'];
    profilePicture = json['profilePicture'];
  }

  /// Convert model to Json structure for storing data in Firebase
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['firstName'] = this.firstName;
    data['lastName'] = this.lastName;
    data['userName'] = this.userName;
    data['email'] = this.email;
    data['phoneNumber'] = this.phoneNumber;
    data['profilePicture'] = this.profilePicture;
    return data;
  }

  /// Convert Document Snapshot of Firebase to create a UserModel
  factory UserModel.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    if (document.data() != null) {
      return UserModel(
        id: document.id,
        firstName: document['firstName'],
        lastName: document['lastName'],
        userName: document['userName'],
        email: document['email'],
        phoneNumber: document['phoneNumber'],
        profilePicture: document['profilePicture'],
      );
    } else {
      return UserModel();
    }
  }
}
