//
//  DataTransferDelegate.swift
//  Catstagram
//
//  Created by Kay on 2022/11/13.
//

import Foundation

protocol DataTransferDelegate {
    func sendData(_ dataFromServer: [FeedModel])
}
