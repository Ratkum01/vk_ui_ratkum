import 'package:vk_ui_ratkum/models/user_model.dart';

enum PostType { images, video, audio }

class Post {
  final String id;
  final User user;
  final PostType type;
  final String caption;
  final String assetPatch;

  Post( {required this.id,  required this.user,  required this.type,  required this.caption,  required this.assetPatch});
  static List<Post> posts= [
    Post(id: '1', user: User.users[0], type: PostType.video, caption: 'Маши́на (лат. machina — «устройство, конструкция», от др.-греч. μηχανή — «приспособление, способ») — техническое устройство, выполняющее механические движения для преобразования энергии, материалов и информации.', assetPatch: 'assets/videos/video1.mp4'),
     Post(id: '2', user: User.users[1], type: PostType.video, caption: 'Маши́на (лат. machina — «устройство, конструкция», от др.-греч. μηχανή — «приспособление, способ») — техническое устройство, выполняющее механические движения для преобразования энергии, материалов и информации.', assetPatch: 'assets/videos/video2.mp4'),
      Post(id: '3', user: User.users[2], type: PostType.video, caption: 'Маши́на (лат. machina — «устройство, конструкция», от др.-греч. μηχανή — «приспособление, способ») — техническое устройство, выполняющее механические движения для преобразования энергии, материалов и информации.', assetPatch: 'assets/videos/video3.mp4')
  ];
}
