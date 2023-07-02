enum FromWhom { me, hers }

class Message {
  final String text;
  final String? imageURL;
  final FromWhom fromWhom;

  Message({required this.text, this.imageURL, required this.fromWhom});
}
