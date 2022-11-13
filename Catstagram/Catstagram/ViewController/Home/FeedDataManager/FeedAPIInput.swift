//
//  FeedAPIInput.swift
//  Catstagram
//
//  Created by Kay on 2022/11/13.
//

// MARK: - 요청을 보낼때 같이 보낼 파라미터 형식
struct FeedAPIInput: Encodable {
    var limit: Int
    var page: Int
}
