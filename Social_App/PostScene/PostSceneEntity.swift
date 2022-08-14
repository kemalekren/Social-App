//
//  PostSceneEntity.swift
//  Social_App
//
//  Created by Kemal Ekren on 14.08.2022.
//

import Foundation

struct Post {
  var postText: String
  var postImage: String
  var commentCount: Int
  var viewCount: Int
  var likeCount: Int
  var user: User
}

struct User {
  var userName: String
  var name: String
}
