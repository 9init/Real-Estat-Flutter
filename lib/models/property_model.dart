class PropertyModel {
  String title;
  String subTitle;
  String details;
  String thumbnail;
  List<String> images;
  int rooms;
  int area;
  int floors;
  int price;
  double rating;
  PropertyModel({
    required this.title,
    required this.subTitle,
    required this.details,
    required this.thumbnail,
    required this.images,
    required this.rooms,
    required this.area,
    required this.floors,
    required this.price,
    required this.rating,
  });
}

List<PropertyModel> properties = [
  PropertyModel(
    title: 'Villa With Nice View',
    subTitle: "Al Khusus, Al Qalyubia",
    details:
        'Indulge in the ultimate beachfront experience with direct access to sandy shores, turquoise waters, and stunning ocean views. A perfect paradise for beach lovers seeking coastal bliss.',
    thumbnail: 'images/properties/villa2.jpeg',
    images: [
      'images/properties/villa1.jpeg',
      'images/properties/villa2.jpeg',
      'images/properties/villa3.jpeg'
    ],
    rooms: 5,
    area:400,
    floors: 3,
    price: 10000000,
    rating: 4.3,
  ),
  PropertyModel(
    title: 'Modern Villa',
    subTitle: "Imbabah, Giza",
    details:
        'Step into this elegant and modern villa with its modern design, rooftop terrace and city views. Perfect for travelers from all over the world looking for a stylish and modern urban getaway. For those looking for distinction .',
    thumbnail: 'images/properties/ap4.jpeg',
    images: [
      'images/properties/ap2.jpeg',
      'images/properties/ap7.jpeg',
      'images/properties/ap6.jpeg'
    ],
    rooms: 5,
    area: 600,
    floors: 2,
    price: 1800000,
    rating: 4.9,
  ),
  PropertyModel(
    title: 'Doubelx House',
    subTitle: "Al Wardiyan, Alexandria",
    details:
        'Escape to this peaceful oasis with its lush gardens, private pool, and serene ambiance. Perfect for relaxation and rejuvenation, this villa offers a secluded retreat for a tranquil getaway.',
    thumbnail: 'images/properties/ap6.jpeg',
    images: [
      'images/properties/ap4.jpeg',
      'images/properties/ap5.jpeg',
      'images/properties/ap6.jpeg'
    ],
    rooms: 4,
    area: 150,
    floors: 2,
    price: 6000000,
    rating: 4.5,
  ),
];
