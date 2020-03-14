import 'package:flutter/material.dart';
import 'package:youtube_ui_flutter/models/video_model.dart';

class HomeTab extends StatelessWidget {


  final List<VideoModel> videos = [
    VideoModel(
      videoThubmnail: "http://i3.ytimg.com/vi/hKAUnriFxCE/hqdefault.jpg",
      title: "Two Coders YouTube video",
      channelName: "Two Coders",
      videoUploadDate: "1 month ago",
      videoViews: "1K views",
      channelImage: "https://yt3.ggpht.com/a/AATXAJxqjG0TMFjW12kLx1SJOLrEBgU70jy9LbpEIw=s288-c-k-c0xffffffff-no-rj-mo"
    ),

    VideoModel(
      videoThubmnail: "http://i3.ytimg.com/vi/zf1kS7RvOck/hqdefault.jpg",
      title: "Two Coders YouTube video",
      channelName: "Two Coders",
      videoUploadDate: "1 month ago",
      videoViews: "1K views",
      channelImage: "https://yt3.ggpht.com/a/AATXAJxqjG0TMFjW12kLx1SJOLrEBgU70jy9LbpEIw=s288-c-k-c0xffffffff-no-rj-mo"
    ),

    VideoModel(
      videoThubmnail: "http://i3.ytimg.com/vi/IM_3f4tGNRk/hqdefault.jpg",
      title: "Two Coders YouTube video",
      channelName: "Two Coders",
      videoUploadDate: "1 month ago",
      videoViews: "1K views",
      channelImage: "https://yt3.ggpht.com/a/AATXAJxqjG0TMFjW12kLx1SJOLrEBgU70jy9LbpEIw=s288-c-k-c0xffffffff-no-rj-mo"
    ),

    VideoModel(
      videoThubmnail: "http://i3.ytimg.com/vi/CgO6QE79yTc/hqdefault.jpg",
      title: "Two Coders YouTube video",
      channelName: "Two Coders",
      videoUploadDate: "1 month ago",
      videoViews: "1K views",
      channelImage: "https://yt3.ggpht.com/a/AATXAJxqjG0TMFjW12kLx1SJOLrEBgU70jy9LbpEIw=s288-c-k-c0xffffffff-no-rj-mo"
    ),

    VideoModel(
      videoThubmnail: "http://i3.ytimg.com/vi/GmCafgp4mbY/hqdefault.jpg",
      title: "Two Coders YouTube video",
      channelName: "Two Coders",
      videoUploadDate: "1 month ago",
      videoViews: "1K views",
      channelImage: "https://yt3.ggpht.com/a/AATXAJxqjG0TMFjW12kLx1SJOLrEBgU70jy9LbpEIw=s288-c-k-c0xffffffff-no-rj-mo"
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: videos.length,
        itemBuilder: (ctx, i) {
          
          return InkWell(
            onTap: (){},
            child: Container(
              margin: EdgeInsets.symmetric(
                vertical: 10, 
              ),
              child: Column(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image(
                      width: MediaQuery.of(context).size.width,
                      height: 230,
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        videos[i].videoThubmnail
                      ),
                    ),
                  ),
                  SizedBox(height: 5,),

                  ListTile(
                    trailing: IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.more_vert),
                    ),
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(60),
                      child: Image(
                        image: NetworkImage(
                          videos[i].channelImage
                        ),
                      ),
                    ),
                    title: Text(videos[i].title),
                    subtitle: Text(
                      "${videos[i].channelName} . ${videos[i].videoViews} . ${videos[i].videoUploadDate}"
                    ),
                  ),


                ],
              ),
            ),
          );

        },
      );
  }
}