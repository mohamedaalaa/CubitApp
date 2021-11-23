



class DataModel {
  DataModel({
    this.id,
    this.name,
    this.description,
    this.price,
    this.stars,
    this.people,
    this.selectedPeople,
    this.img,
    this.location,
    this.createdAt,
    this.updatedAt,
  });

  var id;
  var name;
  var description;
  var price;
  var stars;
  var people;
  var selectedPeople;
  var img;
  var location;
  var createdAt;
  var updatedAt;

  factory DataModel.fromJson(Map<String, dynamic> json) =>
      DataModel(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        price: json["price"],
        stars: json["stars"],
        people: json["people"],
        selectedPeople: json["selected_people"],
        img: json["img"],
        location: json["location"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );
}