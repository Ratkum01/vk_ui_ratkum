class User {
  final String id;
  final String username;
  final String imagePatch;
  final int followers;
  final int followings;
  final int likes;

  User(
      {required this.id,
      required this.username,
      required this.imagePatch,
      this.followers = 0,
      this.followings = 0,
      this.likes = 0});
  static List users = [
    User(
        id: '1',
        username: 'Susano',
        imagePatch: 'assets/images/massageImages/im.jpg',
        followers: 150,
        followings: 500,
        likes: 50
        ),
         User(
        id: '2',
        username: 'jone',
        imagePatch: 'assets/images/massageImages/ggg.jpg',
        followers: 150,
        followings: 500,
        likes: 50
        ), User(
        id: '3',
        username: 'Mike',
        imagePatch: 'assets/images/massageImages/sj.jpg',
        followers: 150,
        followings: 500,
        likes: 50
        )

  ];
}
