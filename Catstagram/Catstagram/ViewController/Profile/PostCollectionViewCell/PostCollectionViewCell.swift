//
//  PostCollectionViewCell.swift
//  Catstagram
//
//  Created by Kay on 2022/11/12.
//

import UIKit

class PostCollectionViewCell: UICollectionViewCell {
    static let identifier = "PostCollectionViewCell"
    
    @IBOutlet weak var postImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    public func setUpData() {
        // 이미지뷰의 이미지를 업로드 한다.
    }
}
