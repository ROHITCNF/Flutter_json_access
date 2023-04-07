

class Person {
    Person({
        required this.name,
        required this.age,
        required this.isMarried,
        required this.address,
        required this.phoneNumbers,
    });

    final String name;
    final int age;
    final bool isMarried;
    final Address address;
    final List<PhoneNumber> phoneNumbers;

    factory Person.fromJson(Map<String, dynamic> json) => Person(
        name: json["name"],
        age: json["age"],
        isMarried: json["isMarried"],
        address: Address.fromJson(json["address"]),
        phoneNumbers: List<PhoneNumber>.from(json["phoneNumbers"].map((x) => PhoneNumber.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "age": age,
        "isMarried": isMarried,
        "address": address.toJson(),
        "phoneNumbers": List<dynamic>.from(phoneNumbers.map((x) => x.toJson())),
    };
}

class Address {
    Address({
        required this.street,
        required this.city,
        required this.state,
        required this.zip,
    });

    final String street;
    final String city;
    final String state;
    final String zip;

    factory Address.fromJson(Map<String, dynamic> json) => Address(
        street: json["street"],
        city: json["city"],
        state: json["state"],
        zip: json["zip"],
    );

    Map<String, dynamic> toJson() => {
        "street": street,
        "city": city,
        "state": state,
        "zip": zip,
    };
}

class PhoneNumber {
    PhoneNumber({
        required this.type,
        required this.number,
    });

    final String type;
    final String number;

    factory PhoneNumber.fromJson(Map<String, dynamic> json) => PhoneNumber(
        type: json["type"],
        number: json["number"],
    );

    Map<String, dynamic> toJson() => {
        "type": type,
        "number": number,
    };
}
