//
//  PostSceneProtocols.swift
//  Social_App
//
//  Created by Kemal Ekren on 14.08.2022.
//

import UIKit

typealias EntryPoint = PostSceneViewProtocol & UIView

protocol PostSceneViewProtocol {
  var presenter: PostScenePresenterProcotol? { get set }

  func onFetchPostSuccess(with post: [Post])
  func onFetchPostFail(with error: String)
}

protocol PostSceneInteractorProcotol {
  var presenter: PostSceneInteractorProcotol? { get set }
  func fetchPosts()
}

protocol PostScenePresenterProcotol {
  var router: PostSceneRouterProtocol? { get set }
  var interactor: PostSceneInteractorProcotol? { get set }
  var view: PostSceneViewProtocol? { get set }

  func onFetchPosts(with result: Result<[Post], Error>)
}

protocol PostSceneRouterProtocol {
  var entry: EntryPoint? { get set }
  static func start() -> PostSceneRouterProtocol
}
