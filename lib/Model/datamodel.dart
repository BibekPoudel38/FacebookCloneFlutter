class PostModel {
  final String username;
  final String userphoto;
  final String coverPhoto;
  final String time;
  final AudienceType audience;
  final int likes;
  final int comments;
  final String mainText;
  final String mainImage;
  final String dob;
  final String address;
  final String work;
  final String workas;
  final String bio;

  PostModel({
    this.username,
    this.userphoto,
    this.coverPhoto,
    this.time,
    this.audience,
    this.likes,
    this.comments,
    this.mainText,
    this.mainImage,
    this.dob,
    this.address,
    this.work,
    this.workas,
    this.bio,
  });
}

enum AudienceType {
  everyone,
  friends,
  only_me,
}

List<PostModel> userList = [
  PostModel(
    username: "Mark Zuckerberg",
    address: "California USA",
    coverPhoto: "https://gbksoft.com/blog/wp-content/uploads/2018/12/Cover-1-984x555.jpg",
    audience: AudienceType.everyone,
    comments: 155,
    dob: "1985/12/13",
    likes: 1200,
    mainImage: "https://cdn.vox-cdn.com/thumbor/M5J1ucWa2Hkfx8ZfxKneinL3pvw=/1400x1400/filters:format(jpeg)/cdn.vox-cdn.com/uploads/chorus_asset/file/13443393/998115066.jpg.jpg",
    mainText: "enjoying the holidays",
    time: "October 23",
    userphoto: "https://dfjc3etzov2zz.cloudfront.net/wp-content/uploads/2018/04/Mark-Zuckerberg-Forbes.jpg",
    work: "Facebook, Inc",
    workas: "CEO",
    bio: "Mark Elliot Zuckerberg is an American media magnate, internet entrepreneur, and philanthropist. He is known for co-founding Facebook, Inc. and serves as its chairman, chief executive officer, and controlling shareholder"
  ),
  PostModel(
    username: "Bill Gates",
    address: "Washington USA",
    coverPhoto: "https://www.chicagotribune.com/resizer/OmlMccAFjPwyEWujvbSnVMFR-ps=/1200x0/top/arc-anglerfish-arc2-prod-tronc.s3.amazonaws.com/public/JUNRXVT6UVGUBLWTM74W4YEFLA.jpg",
    audience: AudienceType.friends,
    comments: 536,
    dob: "October 28, 1955",
    likes: 756,
    mainImage: "https://www.telegraph.co.uk/content/dam/technology/2017/05/24/TELEMMGLPICT000002448951_trans_NvBQzQNjv4BqCeUb4KqoO7Hiv_XyAWGXnQFM6BeGVYc9pkD5d3nEjgA.jpeg",
    mainText: "Time for another windows update without any changes 😂😂",
    time: "5 hours ago",
    userphoto: "https://3m3y892ngk5k1mjv4e2in6jm-wpengine.netdna-ssl.com/wp-content/uploads/2017/02/bill-gates-2.jpg",
    work: "Microsoft, Inc",
    workas: "Co-Founder",
    bio: "William Henry Gates III is an American business magnate, software developer, and philanthropist. He is best known as the co-founder of Microsoft Corporation."
  ),
  PostModel(
    username: "राजेश हमाल",
    address: "Kathmandu, Nepal",
    coverPhoto: "https://qph.fs.quoracdn.net/main-qimg-fa71762640ea42b843ecfb956e05413e.webp",
    audience: AudienceType.only_me,
    comments: 1253,
    dob: "June 9, 1964",
    likes: 2236,
    mainImage: "https://assets-api.kathmandupost.com/thumb.php?src=https://assets-cdn.kathmandupost.com/uploads/source/news/2017/entertainment/rajesh-hama-25062017085005.jpg&w=900&height=601",
    mainText: "Travelling to Pokhara after very long time.",
    time: "Just now",
    userphoto: "https://myrepublica.nagariknetwork.com/uploads/media/RajeshHamal.jpg",
    work: "Nepali Film Industry",
    workas: "Actor",
    bio: "Rajesh Hamal is a Nepali film actor, singer, model, and television host. Born in Tansen, Palpa, Nepal, Hamal was one of the highest paid Nepali actors throughout the 1990s and 2000s. Hamal debuted as an actor in his uncle's film Yug Dekhi Yug Samma in 1991."
  ),
];
