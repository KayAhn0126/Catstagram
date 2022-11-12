//
//  ProfileCollectionViewCell.swift
//  Catstagram
//
//  Created by Kay on 2022/11/11.
//

import UIKit

class ProfileCollectionViewCell: UICollectionViewCell {
    static let identifier = "ProfileCollectionViewCell"
    
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var addProfileImageView: UIImageView!
    @IBOutlet weak var profileEditButton: UIButton!
    @IBOutlet weak var addFriendButton: UIButton!
    
    @IBOutlet weak var postCount: UILabel!
    @IBOutlet weak var followerCount: UILabel!
    @IBOutlet weak var followingCount: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpAttribute()
    }
    
    private func setUpAttribute() {
        profileImageView.layer.cornerRadius = 44
        addProfileImageView.layer.cornerRadius = 12
        
        profileImageView.layer.borderColor = UIColor.lightGray.cgColor
        profileImageView.layer.borderWidth = 2
        
        
        profileEditButton.layer.cornerRadius = 5
        profileEditButton.layer.borderColor = UIColor.lightGray.cgColor
        profileEditButton.layer.borderWidth = 1
        
        addFriendButton.layer.cornerRadius = 3
        addFriendButton.layer.borderColor = UIColor.lightGray.cgColor
        addFriendButton.layer.borderWidth = 1
        [postCount,followerCount,followingCount].forEach {
            $0.text = "\(Int.random(in: 0...1000))"
        }
    }
}
