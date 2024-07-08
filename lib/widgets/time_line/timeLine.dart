import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_twitter_clone/ui/theme/theme.dart';
import '../build_avatar_widget.dart';
import './UserInputAvatarField.dart';
import './likeBar.dart';

//time line dùng ở các vị trí khác nhau như ở trang chủ , bạn bè , nhóm ...
//sẽ có khác nhau ở tham số truyền vào để check xem người dùng đang ở page nào để call API
class timeLine extends StatefulWidget {
  const timeLine({super.key});

  @override
  State<timeLine> createState() => _timeLineState();
}

class _timeLineState extends State<timeLine> {
  final List<Map<String, dynamic>> DEMO_CONTENT = [
    {
      "userName": "Trương Tam Phong",
      "avatar":
          "https://assets.monica.im/tools-web/static/imageGeneratorFeatureIntro1-AQU1zYPO.webp",
      "content":
          "Hôm nay, tôi muốn chia sẻ một khoảnh khắc đặc biệt với mọi người: một bức ảnh ghi lại khoảnh khắc tuyệt vời trong cuộc sống của mình. 📸✨ Dù là một khoảnh khắc nhỏ bé nhưng nó đã mang lại cho tôi niềm vui và sự hài lòng lớn lao. Hy vọng mọi người cũng cảm thấy như vậy khi nhìn thấy nó! 💖😊 #KhoảnhKhắcĐángNhớ #ChiaSẻNiềmVui",
      "images": [
        "https://st3.depositphotos.com/1005145/15351/i/450/depositphotos_153516954-stock-photo-summer-landscape-with-flowers-in.jpg",
        "https://img-cdn.pixlr.com/image-generator/history/65ba5701b4f4f4419f746bc3/806ecb58-167c-4d20-b658-a6a6b2f221e9/medium.webp",
        "https://images.ctfassets.net/hrltx12pl8hq/3Z1N8LpxtXNQhBD5EnIg8X/975e2497dc598bb64fde390592ae1133/spring-images-min.jpg",
        "https://assets.monica.im/tools-web/static/imageGeneratorFeatureIntro1-AQU1zYPO.webp",
        "https://assets.monica.im/tools-web/static/imageGeneratorFeatureIntro1-AQU1zYPO.webp",
        "https://assets.monica.im/tools-web/static/imageGeneratorFeatureIntro1-AQU1zYPO.webp",
      ],
      "like": "321",
      "share": "58",
      "comment": [
        "Hôm nay, tôi muốn chia sẻ một khoảnh khắc đặc biệt với mọi người: một bức ảnh ghi lại khoảnh khắc tuyệt vời",
        "xyz",
        '123'
      ],
    },
    {
      "userName": "Test ABC",
      "avatar":
          "https://img-cdn.pixlr.com/image-generator/history/65ba5701b4f4f4419f746bc3/806ecb58-167c-4d20-b658-a6a6b2f221e9/medium.webp",
      "content":
          "Hôm nay, tôi muốn chia sẻ một khoảnh khắc đặc biệt với mọi người: một bức ảnh ghi lại khoảnh khắc tuyệt vời trong cuộc sống của mình. 📸✨ Dù là một khoảnh khắc nhỏ bé nhưng nó đã mang lại cho tôi niềm vui và sự hài lòng lớn lao. Hy vọng mọi người cũng cảm thấy như vậy khi nhìn thấy nó! 💖😊 #KhoảnhKhắcĐángNhớ #ChiaSẻNiềmVui",
      "images": [
        "https://st3.depositphotos.com/1005145/15351/i/450/depositphotos_153516954-stock-photo-summer-landscape-with-flowers-in.jpg",
      ],
      "like": "321",
      "share": "58",
      "comment": ["abc", "xyz", '123', '459'],
    },
    {
      "userName": "Nguyễn Đắc Hiếu",
      "avatar":
          "https://images.ctfassets.net/hrltx12pl8hq/3Z1N8LpxtXNQhBD5EnIg8X/975e2497dc598bb64fde390592ae1133/spring-images-min.jpg",
      "content":
          "Hôm nay, tôi muốn chia sẻ một khoảnh khắc đặc biệt với mọi người: một bức ảnh ghi lại khoảnh khắc tuyệt vời trong cuộc sống của mình. 📸✨ Dù là một khoảnh khắc nhỏ bé nhưng nó đã mang lại cho tôi niềm vui và sự hài lòng lớn lao. Hy vọng mọi người cũng cảm thấy như vậy khi nhìn thấy nó! 💖😊 #KhoảnhKhắcĐángNhớ #ChiaSẻNiềmVui",
      "images": [
        "https://st3.depositphotos.com/1005145/15351/i/450/depositphotos_153516954-stock-photo-summer-landscape-with-flowers-in.jpg",
        "https://images.ctfassets.net/hrltx12pl8hq/3Z1N8LpxtXNQhBD5EnIg8X/975e2497dc598bb64fde390592ae1133/spring-images-min.jpg",
      ],
      "like": "322",
      "share": "58",
      "comment": ["abc", "xyz", '123', '459'],
    },
    {
      "userName": "Đặng Tuấn Anh",
      "avatar":
          "https://images.ctfassets.net/hrltx12pl8hq/3Z1N8LpxtXNQhBD5EnIg8X/975e2497dc598bb64fde390592ae1133/spring-images-min.jpg",
      "content":
          "Hôm nay, tôi muốn chia sẻ một khoảnh khắc đặc biệt với mọi người: một bức ảnh ghi lại khoảnh khắc tuyệt vời trong cuộc sống của mình. 📸✨ Dù là một khoảnh khắc nhỏ bé nhưng nó đã mang lại cho tôi niềm vui và sự hài lòng lớn lao. Hy vọng mọi người cũng cảm thấy như vậy khi nhìn thấy nó! 💖😊 #KhoảnhKhắcĐángNhớ #ChiaSẻNiềmVui",
      "images": [
        "https://st3.depositphotos.com/1005145/15351/i/450/depositphotos_153516954-stock-photo-summer-landscape-with-flowers-in.jpg",
        "https://images.ctfassets.net/hrltx12pl8hq/3Z1N8LpxtXNQhBD5EnIg8X/975e2497dc598bb64fde390592ae1133/spring-images-min.jpg",
        "https://st3.depositphotos.com/1005145/15351/i/450/depositphotos_153516954-stock-photo-summer-landscape-with-flowers-in.jpg",
        "https://img-cdn.pixlr.com/image-generator/history/65ba5701b4f4f4419f746bc3/806ecb58-167c-4d20-b658-a6a6b2f221e9/medium.webp",
      ],
      "like": "3222",
      "share": "158",
      "comment": ["bài viết hay quá", "xyz", '123', '459'],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children:
          DEMO_CONTENT.map((data) => _buildFeedCard(context, data)).toList(),
    );
  }

  Widget _buildFeedCard(BuildContext context, Map<String, dynamic> data) {
    return Column(
      children: [
        Container(
            color: Colors.white,
            width: MediaQuery.of(context).size.width,
            child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: IntrinsicHeight(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          BuildAvatarWidget(urlAvatar: data['avatar']),
                          const SizedBox(width: 10),
                          Expanded(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(data["userName"].toString()),
                                const Row(
                                  children: [
                                    Text(
                                      'Short video * vừa xong * ',
                                      style: TextStyle(
                                          color: Color(0xff6E7191),
                                          fontSize: 12),
                                    ),
                                    Icon(
                                      Icons.language,
                                      size: 12,
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const Expanded(
                              child: Row(
                            children: [
                              Text(
                                'Theo dõi',
                                style: TextStyle(
                                    color: Color(0xffF6891F), fontSize: 14),
                              ),
                              Icon(
                                Icons.arrow_drop_down_rounded,
                                size: 25,
                                color: Color(0xff6E7191),
                              )
                            ],
                          )),
                        ],
                      ),
                      const SizedBox(height: 10),
                      _buildContent(data['content']),
                      SizedBox(
                        height: 250,
                        child: _buildImages(data['images']),
                      ),
                      LikeBar(
                        likeCount: data['like'],
                        shareCount: data['share'],
                        commentCount: data['comment'].length.toString(),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                        child: Container(
                          height: 1,
                          color: const Color(0xFFDDDEE6),
                        ),
                      ),
                      _buildComment(context, data),
                      const SizedBox(height: 10),
                      _buildYourComment(),
                      const SizedBox(height: 10),
                    ],
                  ),
                ))),
        const SizedBox(height: 10)
      ],
    );
  }

  Widget _buildComment(BuildContext context, data) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  print('click');
                },
                child: const Row(
                  children: [
                    Text(
                      'Phù hợp nhất',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.arrow_drop_down_outlined),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  print('click');
                },
                child: const Text(
                  'Xem thêm bình luận',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              data['comment'][0].length > 50
                  ? Positioned(
                      top: 0,
                      left: 0,
                      child: BuildAvatarWidget(
                        urlAvatar: data['avatar'],
                        width: 30,
                        height: 30,
                      ),
                    )
                  : BuildAvatarWidget(
                      urlAvatar: data['avatar'],
                      width: 30,
                      height: 30,
                    ),
              const SizedBox(width: 10),
              data['comment'][0].length > 50
                  ? Expanded(
                      flex: 8, // Chiếm 85%
                      child: Column(
                        children: [
                          Container(
                            constraints: BoxConstraints(
                              maxWidth: MediaQuery.of(context).size.width,
                            ),
                            padding: const EdgeInsets.only(left: 5, right: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color: const Color(0xffECECEC),
                            ),
                            child: IntrinsicHeight(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(height: 10),
                                  Text(
                                    data['userName'],
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                  Text(
                                    data['comment'][0],
                                    softWrap: true,
                                    overflow: TextOverflow.visible,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const Row(),
                        ],
                      ),
                    )
                  : Column(
                      children: [
                        Container(
                          constraints: BoxConstraints(
                            maxWidth: MediaQuery.of(context).size.width,
                          ),
                          padding: const EdgeInsets.only(left: 5, right: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: const Color(0xffECECEC),
                          ),
                          child: IntrinsicHeight(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 10),
                                Text(
                                  data['userName'],
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                ),
                                Text(
                                  data['comment'][0],
                                  softWrap: true,
                                  overflow: TextOverflow.visible,
                                ),
                              ],
                            ),
                          ),
                        ),
                        const Row(),
                      ],
                    ),
              const Expanded(
                flex: 1, // Chiếm 5%
                child: SizedBox(width: 10),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildYourComment() {
    return const UserInputAvatarField(urlAvatar: 'assets/images/mark-zuckerberg.jpg');
  }

  Widget _buildContent(String content) {
    bool isLongText = content.length > 180;
    bool showFullText = false;

    return StatefulBuilder(
      builder: (context, setState) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              showFullText || !isLongText
                  ? content
                  : "${content.substring(0, 180)}...",
              style: const TextStyle(fontSize: 14),
            ),
            if (isLongText)
              GestureDetector(
                onTap: () {
                  setState(() {
                    showFullText = !showFullText;
                  });
                },
                child: Text(
                  showFullText ? "Thu gọn" : "Xem thêm",
                  style: const TextStyle(
                    color: Colors.blue,
                    fontSize: 14,
                  ),
                ),
              ),
          ],
        );
      },
    );
  }

/**check box image case 1/2/4/ >4 */
  Widget _buildImages(List<String> images) {
    if (images.isEmpty) {
      return Container();
    } else if (images.length == 1) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: CachedNetworkImage(
          imageUrl: images[0],
          placeholder: (context, url) => const CircularProgressIndicator(),
          errorWidget: (context, url, error) => const Icon(Icons.error),
          fit: BoxFit.cover,
          width: double.infinity,
        ),
      );
    } else if (images.length == 2) {
      return Row(
        children: images.map((image) {
          return Expanded(
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: CachedNetworkImage(
                  imageUrl: image,
                  placeholder: (context, url) => const CircularProgressIndicator(),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                  fit: BoxFit.cover,
                  height: double.infinity,
                ),
              ),
            ),
          );
        }).toList(),
      );
    } else if (images.length == 4) {
      return Column(
        children: [
          Expanded(
            flex: 1,
            child: Row(
              children: images.sublist(0, 2).map((image) {
                return Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: CachedNetworkImage(
                        imageUrl: image,
                        placeholder: (context, url) =>
                            const CircularProgressIndicator(),
                        errorWidget: (context, url, error) => const Icon(Icons.error),
                        fit: BoxFit.cover,
                        height: double.infinity,
                        width: double.infinity,
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: images.sublist(2).map((image) {
                return Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: CachedNetworkImage(
                        imageUrl: image,
                        placeholder: (context, url) =>
                            const CircularProgressIndicator(),
                        errorWidget: (context, url, error) => const Icon(Icons.error),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      );
    } else if (images.length >= 5) {
      return Column(
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: CachedNetworkImage(
                  imageUrl: images[0],
                  placeholder: (context, url) => const CircularProgressIndicator(),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: CachedNetworkImage(
                        imageUrl: images[1],
                        placeholder: (context, url) =>
                            const CircularProgressIndicator(),
                        errorWidget: (context, url, error) => const Icon(Icons.error),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: CachedNetworkImage(
                        imageUrl: images[2],
                        placeholder: (context, url) =>
                            const CircularProgressIndicator(),
                        errorWidget: (context, url, error) => const Icon(Icons.error),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                if (images.length > 4)
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Stack(
                          children: [
                            CachedNetworkImage(
                              imageUrl: images[4],
                              placeholder: (context, url) =>
                                  const CircularProgressIndicator(),
                              errorWidget: (context, url, error) =>
                                  const Icon(Icons.error),
                              fit: BoxFit.cover,
                            ),
                            Container(
                              color: Colors.black.withOpacity(0.5),
                              child: Center(
                                child: Text(
                                  '+${images.length - 4}',
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 24),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      );
    } else {
      //case = 3
      return Column(
        children: [
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: CachedNetworkImage(
                        imageUrl: images[0],
                        placeholder: (context, url) =>
                            const CircularProgressIndicator(),
                        errorWidget: (context, url, error) => const Icon(Icons.error),
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: images.sublist(1).map((image) {
                return Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: CachedNetworkImage(
                        imageUrl: image,
                        placeholder: (context, url) =>
                            const CircularProgressIndicator(),
                        errorWidget: (context, url, error) => const Icon(Icons.error),
                        fit: BoxFit.cover,
                        height: double.infinity,
                        width: double.infinity,
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      );
    }
  }
}