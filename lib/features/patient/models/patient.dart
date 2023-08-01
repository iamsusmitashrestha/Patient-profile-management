class Patient {
  final String id;
  final String fullName;
  final String email;
  final String contact;
  final String dob;
  final String address;
  final String notes;
  final String gender;

  Patient(
    this.fullName,
    this.email,
    this.contact,
    this.dob,
    this.address,
    this.notes,
    this.gender,
    this.id,
  );

  Patient.fromJson(Map<String, dynamic> parsedJson)
      : fullName = parsedJson['fullName'],
        id = parsedJson['id'],
        email = parsedJson['email'],
        contact = parsedJson['contact'],
        dob = parsedJson['dob'],
        address = parsedJson['address'],
        notes = parsedJson['notes'],
        gender = parsedJson['gender'];
}
