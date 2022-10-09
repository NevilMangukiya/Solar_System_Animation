class Data {
  String image;
  String name;
  String location;
  String distance;
  double scale;
  String data;
  String distoearth;

  Data({
    required this.name,
    required this.image,
    required this.location,
    required this.distance,
    required this.scale,
    required this.data,
    required this.distoearth,
  });
}

List<Data> myDetails = <Data>[
  Data(
    name: "Mercury",
    image: "assets/images/mer2.png",
    location: "54.6m km",
    distance: "36 B",
    scale: 2.59,
    data:
        "It has a solid surface that is covered with craters like our Moon. It has a thin atmosphere, and it doesn't have any moons. Mercury likes to keep things simple. Mercury spins slowly compared to Earth, so one day lasts a long time.",
    distoearth: "144.5 million km",
  ),
  Data(
    name: "Venus",
    image: "assets/images/vee1.png",
    location: "50.6m km",
    distance: "30 B",
    scale: 5.5,
    data:
        "Venus is the second planet from the Sun, and is Earth's closest neighbor in the solar system. Venus is the brightest object in the sky after the Sun and the Moon, and sometimes looks like a bright star in the morning or evening sky. The planet is a little smaller than Earth, and is similar to Earth inside.",
    distoearth: "256.43 million km",
  ),
  Data(
    name: "Earth",
    image: "assets/images/eart2.png",
    location: "149.6m km",
    distance: "93 B",
    scale: 5.5,
    data:
        "Earth consists of land, air, water and life. The land contains mountains, valleys and flat areas. The air is made up of different gases, mainly nitrogen and oxygen. The water includes oceans, lakes, rivers, streams, rain, snow and ice.",
    distoearth: "",
  ),
  Data(
    name: "Mars",
    image: "assets/images/mars-18087.png",
    location: "52.6m km",
    distance: "33 B",
    scale: 3,
    data:
        "Mars is sometimes called the Red Planet. It's red because of rusty iron in the ground. Like Earth, Mars has seasons, polar ice caps, volcanoes, canyons, and weather. It has a very thin atmosphere made of carbon dioxide, nitrogen, and argon.",
    distoearth: "111.56 million km",
  ),
  Data(
    name: "Jupiter",
    image: "assets/images/jup2.png",
    location: "778.6m km",
    distance: "43,440 miles",
    scale: 5,
    data:
        "Jupiter is the largest planet in the solar system. It is approximately 143,000 kilometers (about 89,000 miles) wide at its equator. Jupiter is so large that all of the other planets in the solar system could fit inside it. More than 1,300 Earths would fit inside Jupiter.",
    distoearth: "595.19 million km",
  ),
  Data(
    name: "Neptune",
    image: "assets/images/nepp.png",
    location: "78.6m km",
    distance: "44 miles",
    scale: 4.5,
    data:
        "Neptune is very similar to Uranus. It's made of a thick soup of water, ammonia, and methane over an Earth-sized solid center. Its atmosphere is made of hydrogen, helium, and methane. The methane gives Neptune the same blue color as Uranus",
    distoearth: "4.3351 billion km",
  ),
];
