class LocalUser {
  String uid;
  String displayName;
  String email;

  LocalUser({this.uid, this.displayName, this.email});
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'displayName': displayName,
      'email': email,
    };
  }

  factory LocalUser.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
    return LocalUser(
      uid: map['uid'],
      displayName: map['displayName'],
      email: map['email'],
    );
  }
}
