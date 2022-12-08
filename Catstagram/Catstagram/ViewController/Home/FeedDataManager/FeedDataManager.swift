//
//  FeedDataManager.swift
//  Catstagram
//
//  Created by Kay on 2022/11/13.
//

import Alamofire

class FeedDataManager {
    weak var dataDelegate: DataTransferDelegate?
    
    init(_ dataDelegate: DataTransferDelegate? = nil) {
        self.dataDelegate = dataDelegate
    }
    deinit {
        print("deinit")
    }
    
    func feedDataManager(_ parameters: FeedAPIInput) {
        AF.request("https://api.thecatapi.com/v1/images/search", method: .get, parameters: parameters).validate().responseDecodable(of: [FeedModel].self) { response in
            switch response.result {
            case .success(let data):
                self.dataDelegate?.sendData(data)
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
}
