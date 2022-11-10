//
//  FeedTableViewCell.swift
//  Catstagram
//
//  Created by Kay on 2022/11/05.
//

import UIKit

class FeedTableViewCell: UITableViewCell {

    @IBOutlet weak var userImageView: UIImageView!
    @IBOutlet weak var userLabel: UILabel!
    @IBOutlet weak var userMoreButton: UIButton!
    
    @IBOutlet weak var contentImageView: UIImageView!
    
    @IBOutlet weak var heartButton: UIButton!
    @IBOutlet weak var commentButton: UIButton!
    @IBOutlet weak var directMessageButton: UIButton!
    @IBOutlet weak var bookMarkButton: UIButton!
    
    @IBOutlet weak var likeLabel: UILabel!
    @IBOutlet weak var contentDescriptionLabel: UILabel!
    
    @IBOutlet weak var myProfileImageView: UIImageView!
    @IBOutlet weak var replyTextField: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        userImageView.layer.cornerRadius = 12.5
        userImageView.clipsToBounds = true
        
        myProfileImageView.layer.cornerRadius = 12.5
        myProfileImageView.clipsToBounds = true
        
        let fontSize = UIFont.boldSystemFont(ofSize: 9)
        let attributedStr = NSMutableAttributedString(string: contentDescriptionLabel.text ?? "")
        let range = NSRange(location: 0, length: userLabel.text?.count ?? 0)
        attributedStr.addAttribute(.font, value: fontSize, range: range)
        contentDescriptionLabel.attributedText = attributedStr
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func heartButtonTapped(_ sender: UIButton) {
        heartButton.isSelected.toggle()
    }
    
    @IBAction func bookMarkButtonTapped(_ sender: UIButton) {
        bookMarkButton.isSelected.toggle()
    }
}
