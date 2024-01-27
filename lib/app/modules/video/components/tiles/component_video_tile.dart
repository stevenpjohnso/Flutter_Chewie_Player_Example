import 'package:chewie_player_example/app/modules/video/video_store.dart';
import 'package:flutter/material.dart';

class ComponentVideoTile extends StatefulWidget {
  final VideoStore videoStore;
  final int index;

  const ComponentVideoTile(
      {Key? key, required this.videoStore, required this.index})
      : super(key: key);

  @override
  State<ComponentVideoTile> createState() => _ComponentVideoTileState();
}

class _ComponentVideoTileState extends State<ComponentVideoTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: ListTile(
        onTap: () => widget.videoStore.changeVideo(index: widget.index),
        tileColor: widget.videoStore.currPlayIndex == widget.index
            ? Colors.grey.shade800
            : Colors.transparent,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
        leading: Container(
          height: 80,
          width: 90,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0), color: Colors.red),
          child: const Center(
            child: Icon(Icons.ondemand_video_rounded,
                size: 40, color: Colors.white),
          ),
        ),
        title: Text('Vídeo: ${widget.index + 1}',
            style: TextStyle(
                color: widget.videoStore.currPlayIndex == widget.index
                    ? Colors.white
                    : Colors.black)),
        subtitle: Text('A brief video description',
            style: TextStyle(
                color: widget.videoStore.currPlayIndex == widget.index
                    ? Colors.white
                    : Colors.grey)),
      ),
    );
  }
}
