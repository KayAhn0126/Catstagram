//
//  FeedModel.swift
//  Catstagram
//
//  Created by Kay on 2022/11/13.
//

// MARK: - 서버로 부터 response를 어떤 형태로 받을것인지.
struct FeedModel: Decodable {
    var id: String?
    var url: String?
}
