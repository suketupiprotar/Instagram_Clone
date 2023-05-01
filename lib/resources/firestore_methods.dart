
import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:instagram_clone/model/post.dart';
import 'package:instagram_clone/resources/storage_method.dart';

class FirestoreMethods{
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  //upload post 
  Future<String> uploadPost(String description,Uint8List file,String uid,String username,String profImage,) async{
    String res = 'Some Error Occured';
    try{
      String photoUrl = await StorageMethods().uploadImageToStorage('posts', file, true);

      Post post = Post(description: description,uid: uid,username: username,postId: ,datePublished: DateTime.now(),postUrl: photoUrl,profImage: profImage,);
    }
    catch(err)
    {

    }
  }
}