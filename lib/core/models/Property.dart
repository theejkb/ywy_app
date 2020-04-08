class Property {
  final String id;
  final String user_id;
  final String title;
  final String description;
  final String surface;
  final String rooms;
  final String floor;
  final String price;
  final String city;
  final String address;
  final String cp;
  final String created_at;

  Property(
      {this.id,
      this.user_id,
      this.title,
      this.description,
      this.surface,
      this.rooms,
      this.floor,
      this.price,
      this.city,
      this.address,
      this.cp,
      this.created_at});

  factory Property.fromJson(Map<String, dynamic> json) {
    return Property(
        id: json['id'],
        user_id: json['user_id'],
        title: json['title'],
        description: json['description'],
        surface: json['surface'],
        rooms: json['rooms'],
        floor: json['floor'],
        price: json['price'],
        city: json['city'],
        address: json['address'],
        cp: json['cp'],
        created_at: json['created_at']);
  }
}
