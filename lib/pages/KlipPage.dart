import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:video_player/video_player.dart';
import 'package:visibility_detector/visibility_detector.dart';

import '../models/postype_model.dart';

class KlipPage extends StatelessWidget {
  //static const routeName ='/';
  const KlipPage({super.key});

  @override
  Widget build(BuildContext context) {
    List post = Post.posts;
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          extendBodyBehindAppBar: true, // будет занимать весь экран + АПП БАР
          backgroundColor: Colors.black,
          appBar: _CustomAppBar(),
          body: SingleChildScrollView(
            child: ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              children: post.map((post) {
                return CustomVideoPlayer(
                  post: post,
                );
              }).toList(),
            ),
          )),
    );
  }
}

class CustomVideoPlayer extends StatefulWidget {
  final Post post;

  const CustomVideoPlayer({super.key, required this.post});

  @override
  State<CustomVideoPlayer> createState() => _CustomVideoPlayerState();
}

class _CustomVideoPlayerState extends State<CustomVideoPlayer> {
  late VideoPlayerController controller;

  @override
  void initState() {
    controller = VideoPlayerController.asset(widget.post.assetPatch);
    controller.initialize().then((_) {
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector( //авто запуск видео , и если видео видно на 50процент запускается
      key: Key(controller.dataSource),
      onVisibilityChanged: (visibilityInfo) {
        if (visibilityInfo.visibleFraction > 0.5) {
          controller.play();
        }
        else{
          if(mounted){
            controller.pause();
          }
        }
      },
      child: GestureDetector(
        //?
        onTap: (() {
          if (controller.value.isPlaying) {
            // проверка видео на воспроизвидение
            controller.pause();
          } else {
            controller.play();
          }
        }),
        child: AspectRatio(
            //?
            aspectRatio: controller.value.aspectRatio,
            child: Stack(children: [
              VideoPlayer(controller),
              const Positioned.fill(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    //эффект градиента
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.black,
                        Colors.transparent,
                        Colors.transparent,
                        Colors.black
                      ],
                      stops: [0.0, 0.2, 0.5, 1.0],
                    ),
                  ),
                ),
              ),
              _buildVideoCaptions(context),
              _buildVideoActions(context)
            ])),
      ),
    );
  }

  Align _buildVideoActions(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        height: controller.value.size.height * 0.55, //берем размеры контроллера
        width: MediaQuery.of(context).size.width * 0.2,
        padding: EdgeInsets.only(bottom: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            _VideoActions(icon: Icons.favorite, value: "14KK"),
            SizedBox(
              height: 10,
            ),
            _VideoActions(icon: Icons.comment_rounded, value: "14KK"),
            SizedBox(
              height: 10,
            ),
            _VideoActions(icon: Icons.share, value: "14KK")
          ],
        ),
      ),
    );
  }

//Тело Видео
  Align _buildVideoCaptions(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        height: 200,
        width: MediaQuery.of(context).size.width * 0.75, //ширина 75 процентов
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '@${widget.post.user.username}',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              //нехуя не понял тут
              widget.post.caption,
              maxLines: 3,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}

class _VideoActions extends StatelessWidget {
  const _VideoActions({Key? key, required this.icon, required this.value})
      : super(key: key);
  final IconData icon;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
          color: Colors.transparent,
          child: Ink(
            decoration: const ShapeDecoration(
                shape: CircleBorder(), color: Colors.black),
            child: IconButton(
                onPressed: () {},
                color: Colors.red,
                icon: Icon(
                  icon,
                  color: Colors.white,
                )),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          value,
          style: Theme.of(context)
              .textTheme
              .titleSmall!
              .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}

class _CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const _CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Row(
        children: [
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/ratkum.jpeg')),
                color: Colors.purple,
                shape: BoxShape.circle),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: TabBar(
                isScrollable: true,
                indicatorColor: Colors.white,
                indicatorSize: TabBarIndicatorSize.label,
                tabs: [
                  Tab(
                    child: Text(
                      'Для вас',
                      style: TextStyle(color: Colors.white, fontSize: 13),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Подписки',
                      style: TextStyle(color: Colors.white, fontSize: 13),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Тренды',
                      style: TextStyle(color: Colors.white, fontSize: 13),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Мои',
                      style: TextStyle(color: Colors.white, fontSize: 13),
                    ),
                  )
                ]),
          ),
          Icon(
            Icons.search,
            color: Colors.white,
            size: 25,
          ),
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(56.0);
}
