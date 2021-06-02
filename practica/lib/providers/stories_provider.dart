import 'package:practica/models/stories_model.dart';

class StoriesProvider {
  List<Storie> stories = [];

  List<Storie> getStories() {
    stories = [
      new Storie(
        name: "Chelsie",
        photo:
            "https://pbs.twimg.com/media/EagTIZdXQAUyZdt?format=jpg&name=small",
      ),
      new Storie(
        name: "Lenna",
        photo: "https://i.chzbgr.com/full/9604483840/h0D4D9173/animal",
      ),
      new Storie(
        name: "Aracely",
        photo: "https://i.chzbgr.com/full/9604475392/h79C7922D/cat",
      ),
      new Storie(
        name: "Ozella",
        photo: "https://thispersondoesnotexist.com/image",
      ),
      new Storie(
        name: "Susanna",
        photo:
            "https://www.quironsalud.es/blogs/es/cambio-deseo/total-face-rejuvenecimiento-facial-cirugia.ficheros/1943358-Total%20face.jpg?width=400&height=478&aspectRatio=true",
      ),
      new Storie(
        name: "Kiara",
        photo:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxKXRvSXwGfDluy_9FVOQs3ofFfivqMp9s1Q&usqp=CAU",
      )
    ];
    return stories;
  }
}
