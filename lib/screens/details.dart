import 'dart:math';

import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;
  @override
  initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 4000),
    );
    _animationController.repeat();
  }

  @override
  Widget build(BuildContext context) {
    dynamic e = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.redAccent,
                    image: DecorationImage(
                      image: AssetImage("assets/images/galaxy-night-view.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.1),
                    image: const DecorationImage(
                      image: AssetImage("assets/images/wallpaper.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 120,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 115.0),
                          child: Text(
                            "OverView",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          e.data,
                          style: const TextStyle(
                              color: Colors.white70, fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(width: 500),
              Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  elevation: 5,
                  child: Stack(
                    children: [
                      Container(
                        width: 350,
                        decoration: BoxDecoration(
                          color: const Color(0xff54759E).withOpacity(0.3),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: InkWell(
                                onTap: () => showModalBottomSheet(
                                  context: context,
                                  builder: (context) => Container(
                                    height: 315,
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(20),
                                            topRight: Radius.circular(20)),
                                        image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/wallpaper.jpg"),
                                        )),
                                    child: Column(
                                      children: [
                                        Container(
                                          alignment: Alignment.center,
                                          height: 100,
                                          width: double.infinity,
                                          decoration: const BoxDecoration(
                                            color: Colors.black,
                                          ),
                                          child: Text(
                                            "Welcome to ${e.name}",
                                            style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 25),
                                          ),
                                        ),
                                        Hero(
                                          tag: e.name,
                                          child: AnimatedBuilder(
                                            animation: _animationController,
                                            child: Image.asset(
                                              e.image,
                                              scale: e.scale,
                                            ),
                                            builder: (BuildContext context,
                                                Widget? child) {
                                              return Transform.rotate(
                                                angle:
                                                    _animationController.value *
                                                        2 *
                                                        pi,
                                                child: child,
                                              );
                                            },
                                          ),
                                        ),
                                        const SizedBox(height: 10),
                                        const Text(
                                          "Distance To sun",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10),
                                        ),
                                        const SizedBox(height: 5),
                                        Text(
                                          "${e.location}",
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 25),
                                        ),
                                        const SizedBox(height: 10),
                                        const Text(
                                          "Distance To Earth",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10),
                                        ),
                                        const SizedBox(height: 5),
                                        Text(
                                          "${e.distoearth}",
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 25),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                child: Hero(
                                  tag: e.name,
                                  child: AnimatedBuilder(
                                    animation: _animationController,
                                    child: Image.asset(
                                      e.image,
                                      scale: e.scale,
                                    ),
                                    builder:
                                        (BuildContext context, Widget? child) {
                                      return Transform.rotate(
                                        angle:
                                            _animationController.value * 2 * pi,
                                        child: child,
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              e.name,
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              "Milk way galaxy",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                children: [
                                  const Icon(Icons.location_on),
                                  Text(e.location),
                                  const Spacer(),
                                  Text(e.distance),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
            ],
          ),
          Column(
            children: [
              Row(
                children: [
                  const SizedBox(
                    height: 90,
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(Icons.arrow_back),
                    color: Colors.white,
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.more_vert),
                    color: Colors.white,
                  ),
                ],
              ),
              const Spacer(),
            ],
          ),
        ],
      ),
    );
  }
}
