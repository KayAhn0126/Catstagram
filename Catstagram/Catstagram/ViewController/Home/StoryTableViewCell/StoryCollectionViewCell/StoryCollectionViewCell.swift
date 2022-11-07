//
//  StoryCollectionViewCell.swift
//  Catstagram
//
//  Created by Kay on 2022/11/06.
//

import UIKit

class StoryCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var cellBackgroundView: UIView!
    @IBOutlet weak var profileBackgroundView: UIView!
    @IBOutlet weak var userImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        cellBackgroundView.layer.cornerRadius = 24
        profileBackgroundView.layer.cornerRadius = 23.5
        userImageView.layer.cornerRadius = 22.5
        userImageView.clipsToBounds = true
    }
}
