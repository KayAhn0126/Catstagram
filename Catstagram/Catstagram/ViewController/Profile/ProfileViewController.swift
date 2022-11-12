//
//  ProfileViewController.swift
//  Catstagram
//
//  Created by Kay on 2022/11/11.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpCollectionView()
    }
    
    private func setUpCollectionView() {
        collectionView.dataSource = self
        collectionView.delegate = self
        
        collectionView.register(UINib(nibName: "ProfileCollectionViewCell",
                                      bundle: nil),
                                forCellWithReuseIdentifier: ProfileCollectionViewCell.identifier)
        collectionView.register(UINib(nibName: "PostCollectionViewCell",
                                      bundle: nil),
                                forCellWithReuseIdentifier: PostCollectionViewCell.identifier)
        collectionView.contentInset = UIEdgeInsets(top: 0, left: 1, bottom: 0, right: 1 )
    }
}

extension ProfileViewController: UICollectionViewDataSource {
    // 섹션의 갯수
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
    
    // Cell의 갯수
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 1
        default:
            return 24
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let section = indexPath.section
        switch section {
        case 0:
            guard let cell  = collectionView.dequeueReusableCell(withReuseIdentifier: ProfileCollectionViewCell.identifier, for: indexPath) as? ProfileCollectionViewCell else {
                return UICollectionViewCell()
            }
            return cell
        default:
            guard let cell  = collectionView.dequeueReusableCell(withReuseIdentifier: PostCollectionViewCell.identifier, for: indexPath) as? PostCollectionViewCell else {
                return UICollectionViewCell()
            }
            return cell
        }
    }
}

extension ProfileViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let section = indexPath.section
        switch section {
        case 0:
            return CGSize(width: collectionView.frame.width, height: 159)
        default:
            let side = (collectionView.frame.width - 4) / 3
            return CGSize(width: side, height: side)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        switch section {
        case 0 :
            return CGFloat(0)
        default :
            return CGFloat(1)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        switch section {
        case 0 :
            return CGFloat(0)
        default :
            return CGFloat(1)
        }
    }
}
