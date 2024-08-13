import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    List imageview = [
      {
        "name": "Peter Parker",
        "image":
            "https://i.pinimg.com/564x/2e/7d/59/2e7d591fff87df246ab4eb6de31e0c48.jpg",
        "bg":
            "https://i.pinimg.com/564x/ed/14/ea/ed14ea822462d93c926056fcfd9db4c5.jpg",
        "description": "Spider Man"
      },
      {
        "name": "Wade Willson",
        "image":
            "https://i.pinimg.com/736x/0a/c3/39/0ac339905a0b6d69c4f6fd6499e3a8aa.jpg",
        "bg":
            "https://i.pinimg.com/564x/40/f5/6f/40f56f8ea9807d6738d85cd3d9bd1bb9.jpg",
        "description": "Deadpool"
      },
      {
        "name": "Tony Stark",
        "image":
            "https://i.pinimg.com/564x/8a/a0/bf/8aa0bfd2fd83bb9cbbd0bfe238502e30.jpg",
        "bg":
            "https://i.pinimg.com/564x/1f/42/3c/1f423c2822e270c63f294f8cd5ef2c74.jpg",
        "description": "Iron Man"
      },
      {
        "name": "Thor",
        "image":
            "https://i.pinimg.com/564x/d6/d1/4a/d6d14af1c3161eab121330f2a14f0d90.jpg",
        "bg":
            "https://i.pinimg.com/564x/30/54/73/3054739cede1cdd1a41243960da445f8.jpg",
        "description": "Thor"
      },
      {
        "name": "Steve Rogers",
        "image":
            "https://i.pinimg.com/564x/30/d9/24/30d9242504a5f44a798146e10b081b41.jpg",
        "bg":
            "https://i.pinimg.com/564x/d5/89/07/d589074ae1921954b0f9a6395a27f387.jpg",
        "description": "Captain America"
      },
      {
        "name": "Loki",
        "image":
            "https://i.pinimg.com/564x/63/8e/7e/638e7e29db4cdad3dee138fb478c7c74.jpg",
        "bg":
            "https://i.pinimg.com/564x/65/48/80/654880920a8e846004c0c8b93bfa76cc.jpg",
        "description": "God"
      },
      {
        "name": "Loki",
        "image":
            "https://i.pinimg.com/564x/8b/e2/09/8be20959a1ca1225c04cc4ba6a627144.jpg",
        "bg":
            "https://i.pinimg.com/736x/76/58/4d/76584dda7d1e1c45a1115100697b1d37.jpg",
        "description": "God"
      },
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: PageView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: imageview.length,
          itemBuilder: (context, index) {
            final item = imageview[index];
            return Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(item["bg"]!),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Divider(thickness: 2, color: Colors.white),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: CircleAvatar(
                          radius: 25,
                          backgroundImage: NetworkImage(item["image"]!),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item["name"]!,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(height: 3),
                          Text(
                            item["description"]!,
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Icon(
                          Icons.more_vert,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(width: 2, color: Colors.white),
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Center(
                                child: Text(
                                  "Send Message",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 15),
                          Icon(
                            Icons.favorite_outline,
                            color: Colors.white,
                            size: 30,
                          ),
                          SizedBox(width: 15),
                          Icon(
                            Icons.send,
                            color: Colors.white,
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
