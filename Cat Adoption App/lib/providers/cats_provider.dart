import 'package:cat_adoption_app/util/cat_class.dart';
import 'package:flutter/material.dart';

class CatsProvider extends ChangeNotifier {

  List<Cat> getCats(){
    return cats;
  }


  List<Cat> cats = [
    Cat(
      name: "Knoxx",
      age: "3 months",
      sex: "Male",
      description: "He's a silly boy.",
      imagePath: 'images/cat.png',
      color: "Gray",
      longerDescription:
          "Knoxx is a playful kitten who loves to chase toys and cuddle. He's very friendly and gets along well with other animals.",
    ),
    Cat(
      name: "Pookie",
      age: "6 months",
      sex: "Female",
      description: "Girly kitty.",
      imagePath: 'images/cat2.png',
      color: "White",
      longerDescription:
          "Pookie is a curious and energetic kitten who loves to explore. She's very affectionate and enjoys cuddling with her human companions.",
    ),
    Cat(
      name: "Whiskers",
      age: "1 year",
      sex: "Male",
      description: "He loves to explore.",
      imagePath: 'images/cat3.png',
      color: "White",
      longerDescription:
          "Whiskers is a mischievous cat who loves to play hide-and-seek. He's very intelligent and can often figure out how to open doors and drawers.",
    ),
    Cat(
      name: "Oliver",
      age: "3 years",
      sex: "Male",
      description: "Just adopt him.",
      imagePath: 'images/cat4.png',
      color: "White",
      longerDescription:
          "Oliver is a calm and gentle cat who loves to relax on the windowsill and watch birds. He's very patient and enjoys being petted.",
    ),
    Cat(
      name: "Luna",
      age: "8 months",
      sex: "Female",
      description: "A mischievous cat.",
      imagePath: 'images/cat5.png',
      color: "Gray",
      longerDescription:
          "Luna is a playful and energetic kitten who loves to chase laser pointers and play with toys. She's very curious and always exploring her surroundings.",
    ),
    Cat(
      name: "Leo",
      age: "2 years",
      sex: "Male",
      description: "Very mindful paws.",
      imagePath: 'images/cat6.png',
      color: "Spot",
      longerDescription:
          "Leo is a relaxed and easygoing cat who loves to nap in sunbeams. He's very gentle and enjoys being petted. He's also quite good at catching mice!",
    ),
    Cat(
      name: "Orange",
      age: "3 months",
      sex: "Female",
      description: "eeeeppp",
      imagePath: 'images/cat7.png',
      color: "Orange",
      longerDescription:
          "Orange is a playful and energetic kitten who loves to chase toys and climb curtains. She's very curious and always exploring her surroundings.",
    ),
    Cat(
      name: "Pampo",
      age: "6 months",
      sex: "Male",
      description: "He loves cuddles.",
      imagePath: 'images/cat8.png',
      color: "Brown",
      longerDescription:
          "Pampo is a cuddly and affectionate kitten who loves to be held. He's very gentle and enjoys being petted. He's also quite good at fetching toys.",
    ),
    Cat(
      name: "Willow",
      age: "2 years",
      sex: "Female",
      description: "Really?",
      imagePath: 'images/cat9.png',
      color: "White",
      longerDescription:
          "Willow is a mischievous and playful cat who loves to chase butterflies and birds. She's very curious and always exploring her surroundings.",
    ),
    Cat(
      name: "Jasper",
      age: "1 year",
      sex: "Male",
      description: "Please don't scare him",
      imagePath: 'images/cat10.png',
      color: "White",
      longerDescription:
          "Jasper is a shy and gentle cat who prefers quiet environments. He's very affectionate and enjoys being petted. He's also quite good at catching bugs.",
    ),
  ];

  
}
