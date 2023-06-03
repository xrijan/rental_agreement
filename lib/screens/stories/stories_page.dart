
import 'package:flutter/material.dart';
import '../../constants/size.dart';
class StoriesPage extends StatefulWidget {
  const StoriesPage({Key? key}) : super(key: key);

  @override
  State<StoriesPage> createState() => _StoriesPageState();
}

class _StoriesPageState extends State<StoriesPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              const ReviewWidget(),
              SizedBox(
                height: MySize.kSizeBoxHeight20,
              ),
              const Divider(
                color: Colors.black,
              ),
              Container(
                height: MySize.kScreenHeight / 5,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xffDDDDDD),
                      blurRadius: 6.0,
                      spreadRadius: 2.0,
                      offset: Offset(0.0, 0.0),
                    )
                  ],
                ),
                child: Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 20),
                            width: MySize.kScreenWidth * 0.10,
                            height: MySize.kScreenWidth * 0.10,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: const Image(
                                  image: NetworkImage(
                                    'https://wisehealthynwealthy.com/wp-content/uploads/2022/01/CreativecaptionsforFacebookprofilepictures.jpg',
                                  ),
                                  fit: BoxFit.cover,
                                )),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Joan Perkins',
                                style:
                                TextStyle(fontSize: MySize.kHeading2),
                              ),
                              const Text(
                                'Digital Media Specialist',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MySize.kSizeBoxHeight10,
                        width: double.infinity,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          const Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          const Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          const Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.grey[300],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MySize.kSizeBoxHeight10,
                        width: double.infinity,
                      ),
                      const Text(
                          'Digital Media Specialist, Communication departmentDigital Media Specialist, Communication department Digital Media Specialist ')
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: MySize.kSizeBoxHeight20,
                width: double.infinity,
              ),
              Container(
                height: MySize.kScreenHeight / 5,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xffDDDDDD),
                      blurRadius: 6.0,
                      spreadRadius: 2.0,
                      offset: Offset(0.0, 0.0),
                    )
                  ],
                ),
                child: Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 20),
                            width: MySize.kScreenWidth * 0.10,
                            height: MySize.kScreenWidth * 0.10,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: const Image(
                                  image: NetworkImage(
                                      'https://media.istockphoto.com/id/1311084168/photo/overjoyed-pretty-asian-woman-look-at-camera-with-sincere-laughter.jpg?b=1&s=170667a&w=0&k=20&c=XPuGhP9YyCWquTGT-tUFk6TwI-HZfOr1jNkehKQ17g0='
                                  ),
                                  fit: BoxFit.cover,
                                )),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Joan Perkins',
                                style:
                                TextStyle(fontSize: MySize.kHeading2),
                              ),
                              const Text(
                                'Digital Media Specialist',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MySize.kSizeBoxHeight10,
                        width: double.infinity,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          const Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          const Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          const Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.grey[300],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MySize.kSizeBoxHeight10,
                        width: double.infinity,
                      ),
                      const Text(
                          'Digital Media Specialist, Communication departmentDigital Media Specialist, Communication department Digital Media Specialist ')
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: MySize.kSizeBoxHeight20,
                width: double.infinity,
              ),
              Container(
                height: MySize.kScreenHeight / 5,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xffDDDDDD),
                      blurRadius: 6.0,
                      spreadRadius: 2.0,
                      offset: Offset(0.0, 0.0),
                    )
                  ],
                ),
                child: Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 20),
                            width: MySize.kScreenWidth * 0.10,
                            height: MySize.kScreenWidth * 0.10,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: const Image(
                                  image: NetworkImage(
                                      'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80'
                                  ),
                                  fit: BoxFit.cover,
                                )),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Joan Perkins',
                                style:
                                TextStyle(fontSize: MySize.kHeading2),
                              ),
                              const Text(
                                'Digital Media Specialist',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MySize.kSizeBoxHeight10,
                        width: double.infinity,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          const Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          const Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          const Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.grey[300],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MySize.kSizeBoxHeight10,
                        width: double.infinity,
                      ),
                      const Text(
                          'Digital Media Specialist, Communication departmentDigital Media Specialist, Communication department Digital Media Specialist ')
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: MySize.kSizeBoxHeight20,
                width: double.infinity,
              ),
              Container(
                height: MySize.kScreenHeight / 5,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xffDDDDDD),
                      blurRadius: 6.0,
                      spreadRadius: 2.0,
                      offset: Offset(0.0, 0.0),
                    )
                  ],
                ),
                child: Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 20),
                            width: MySize.kScreenWidth * 0.10,
                            height: MySize.kScreenWidth * 0.10,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: const Image(
                                  image: NetworkImage(
                                      'https://expertphotography.b-cdn.net/wp-content/uploads/2020/08/social-media-profile-photos-3.jpg'
                                  ),
                                  fit: BoxFit.cover,
                                )),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Joan Perkins',
                                style:
                                TextStyle(fontSize: MySize.kHeading2),
                              ),
                              const Text(
                                'Digital Media Specialist',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MySize.kSizeBoxHeight10,
                        width: double.infinity,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          const Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          const Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          const Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.grey[300],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MySize.kSizeBoxHeight10,
                        width: double.infinity,
                      ),
                      const Text(
                          'Digital Media Specialist, Communication departmentDigital Media Specialist, Communication department Digital Media Specialist ')
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ReviewWidget extends StatelessWidget {
  const ReviewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MySize.kSizeBoxHeight20,
          width: double.infinity,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Center(
              child: Text('Review',
                  style: TextStyle(
                    fontSize: MySize.kHeading2,
                  ))),
        ),
        const Center(
            child: Text(
              '4.0',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            )),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.star,
              color: Colors.yellow,
            ),
            const Icon(
              Icons.star,
              color: Colors.yellow,
            ),
            const Icon(
              Icons.star,
              color: Colors.yellow,
            ),
            const Icon(
              Icons.star,
              color: Colors.yellow,
            ),
            Icon(
              Icons.star,
              color: Colors.grey[300],
            ),
          ],
        ),
        const Center(
            child: Text('based on 23 review',
                style: TextStyle(color: Colors.grey))),
        Row(
          children: [
            const Text('Excellent'),
            SizedBox(
              width: MySize.kScreenWidth * 0.15,
            ),
            Expanded(
              child: LinearProgressIndicator(
                value: 0.9,
                backgroundColor: Colors.grey[300],
                valueColor: const AlwaysStoppedAnimation<Color>(Colors.green),
              ),
            ),
          ],
        ),
        Row(
          children: [
            SizedBox(
                width: MySize.kScreenWidth * 0.188, child: const Text('Good')),
            SizedBox(
              width: MySize.kScreenWidth * 0.1,
            ),
            Expanded(
              child: LinearProgressIndicator(
                value: 0.7,
                backgroundColor: Colors.grey[300],
                valueColor: const AlwaysStoppedAnimation<Color>(Colors.greenAccent),
              ),
            ),
          ],
        ),
        Row(
          children: [
            SizedBox(
                width: MySize.kScreenWidth * 0.188,
                child: const Text('Average')),
            SizedBox(
              width: MySize.kScreenWidth * 0.1,
            ),
            Expanded(
              child: LinearProgressIndicator(
                value: 0.64,
                backgroundColor: Colors.grey[300],
                valueColor: const AlwaysStoppedAnimation<Color>(Colors.yellow),
              ),
            ),
          ],
        ),
        Row(
          children: [
            const Text('Below Average'),
            SizedBox(
              width: MySize.kScreenWidth * 0.064,
            ),
            Expanded(
              child: LinearProgressIndicator(
                value: 0.4,
                backgroundColor: Colors.grey[300],
                valueColor: const AlwaysStoppedAnimation<Color>(Colors.orange),
              ),
            ),
          ],
        ),
        Row(
          children: [
            const Text('Poor'),
            SizedBox(
              width: MySize.kScreenWidth * 0.216,
            ),
            Expanded(
              child: LinearProgressIndicator(
                value: 0.2,
                backgroundColor: Colors.grey[300],
                valueColor: const AlwaysStoppedAnimation<Color>(Colors.red),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
