import 'package:flutter/material.dart';
import 'package:rental_agreement/model/stories_model.dart';
import '../../constants/size.dart';

class StoriesPage extends StatefulWidget {
  const StoriesPage({Key? key}) : super(key: key);

  @override
  State<StoriesPage> createState() => _StoriesPageState();
}

class _StoriesPageState extends State<StoriesPage> {
  final StoryModel storyModel = StoryModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF0f172a),
      appBar: AppBar(
        elevation: 0,
        title: Text('Stories'),
        backgroundColor: Color(0XFF0f172a),
      ),
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            Container(
              height: MySize.kScreenHeight,
              width: double.infinity,
              decoration: const BoxDecoration(
                // Replace with your desired background color
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: ListView.builder(
                    itemCount: storyModel.story.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: MySize.kScreenHeight / 5,
                        margin: EdgeInsets.only(bottom: 20),
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
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
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
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        child: Image(
                                          image: NetworkImage(storyModel
                                              .story[index]['imageUrl']),
                                          fit: BoxFit.cover,
                                        )),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        storyModel.story[index]['name'],
                                        style: TextStyle(
                                            fontSize: MySize.kHeading2),
                                      ),
                                      Text(
                                        storyModel.story[index]['profession'],
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
                              Text(storyModel.story[index]['testimonial'])
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

