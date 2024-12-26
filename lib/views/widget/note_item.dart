import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: const Color(0xffFFCC80)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Text(
              'Flutter Tips',
              style: TextStyle(color: Colors.black, fontSize: 26),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 16),
              child: Text('Build your project with Ahmad Tayasna',
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.5), fontSize: 16)),
            ),
            trailing: const Padding(
              padding: EdgeInsets.only(bottom: 5),
              child: Icon(
                Icons.delete,
                color: Colors.black,
                size: 36,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Text('May 21,2024',
                style: TextStyle(
                    color: Colors.black.withOpacity(.4), fontSize: 16)),
          )
        ],
      ),
    );
  }
}
