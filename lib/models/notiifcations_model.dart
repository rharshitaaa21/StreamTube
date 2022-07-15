class NotificationModel {
  final String name;
  final String messageType;
  final String message;
  final String timeStamp;
  final String avatarUrl;

  NotificationModel(
      {required this.name,
      required this.messageType,
      required this.message,
      required this.timeStamp,
      required this.avatarUrl});
}

List<NotificationModel> notificationData = [
  NotificationModel(
    name: "Levi Senpai",
    avatarUrl: "https://randomuser.me/api/portraits/men/91.jpg",
    messageType: "comment",
    message: "Nice one bro. Keep up the good work.",
    timeStamp: "1 hour ago",
  ),
  NotificationModel(
    name: "MaddyDaddy",
    avatarUrl: "https://randomuser.me/api/portraits/women/37.jpg",
    messageType: "subscribe",
    message: "Can you please show how to add videos in flutter? Thanks.",
    timeStamp: "4 hours ago",
  ),
  NotificationModel(
    name: "Deee",
    avatarUrl: "https://randomuser.me/api/portraits/women/30.jpg",
    messageType: "subscribe",
    message: "The tutorial was totally professional",
    timeStamp: "22 hours ago",
  ),
  NotificationModel(
    name: "Jane Dope",
    avatarUrl: "https://randomuser.me/api/portraits/men/37.jpg",
    messageType: "subscribe",
    message: "Nice one",
    timeStamp: "1 day ago",
  ),
  NotificationModel(
    name: "Proxima",
    avatarUrl: "https://randomuser.me/api/portraits/men/21.jpg",
    messageType: "comment",
    message: "Can you make another tutorial about flutter providers?",
    timeStamp: "1 day ago",
  ),
  NotificationModel(
    name: "Enderman",
    avatarUrl: "https://randomuser.me/api/portraits/men/80.jpg",
    messageType: "subscribe",
    message: " Nice brauh.",
    timeStamp: "2 days ago",
  ),
  NotificationModel(
    name: "Mr. Snape",
    avatarUrl: "https://randomuser.me/api/portraits/men/41.jpg",
    messageType: "comment",
    message: "Bro god or what? next level tuts",
    timeStamp: "3 days ago",
  ),
];
