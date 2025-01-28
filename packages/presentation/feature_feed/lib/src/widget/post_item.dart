import 'package:domain_post/domain_post.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PostItem extends StatelessWidget {
  final Post post;

  const PostItem({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    final createdDate = DateFormat('dd MMM yyyy').format(
      DateTime.parse(post.createdDate),
    );
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        spacing: 8,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            post.title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            createdDate,
            style: TextStyle(
              fontSize: 12,
              color: Colors.black54,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Text(
              post.body,
              style: TextStyle(
                fontSize: 16,
              ),
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Divider(
            color: Colors.black12,
          ),
        ],
      ),
    );
  }
}
