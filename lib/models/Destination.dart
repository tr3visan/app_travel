import 'Activity.dart';

class Destination {
  String imageUrl;
  String city;
  String country;
  String description;
  List<Activity> activities;

  Destination({this.imageUrl, this.city, this.country, this.description,
      this.activities});
}

List<Activity> activities = [
  Activity(
    imageUrl: 'assets/images/lugar1.jpg',
    name: 'Masp',
    type: 'São Paulo - SP',
    startTimes: ['9:00 am', '11:00 am'],
    rating: 5,
    price: 30
  ),
  Activity(
      imageUrl: 'assets/images/lugar2.jpg',
      name: 'Arcos da Lapa',
      type: 'Rio de Janeiro - RJ',
      startTimes: ['11:00 am', '1:00 pm'],
      rating: 4,
      price: 210
  ),
  Activity(
      imageUrl: 'assets/images/lugar3.jpg',
      name: 'Farol de Itapuã',
      type: 'Salvador - BA',
      startTimes: ['12:30 pm', '2:00 pm'],
      rating: 3,
      price: 125
  ),
];

List<Destination> destinations = [
  Destination(
    imageUrl: 'assets/images/saopaulo.jpg',
    city: 'São Paulo',
    country: 'Brasil',
    description: 'Visite São Paulo e descubra as maravilhas desta cidade.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/rio.jpg',
    city: 'Rio de Janeiro',
    country: 'Brasil',
    description: 'Visite o Rio e descubra as maravilhas desta cidade.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/natal.jpg',
    city: 'Natal',
    country: 'Brasil',
    description: 'Visite Natal e descubra as maravilhas desta cidade.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/floripa.jpg',
    city: 'Florianópolis',
    country: 'Brasil',
    description: 'Visite Floripa e descubra as maravilhas desta cidade.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/bahia.jpg',
    city: 'Salvador',
    country: 'Brasil',
    description: 'Visite Salvador e descubra as maravilhas desta cidade.',
    activities: activities,
  ),
];