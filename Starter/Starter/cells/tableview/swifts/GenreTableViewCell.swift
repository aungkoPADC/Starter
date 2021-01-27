//
//  GenreTableViewCell.swift
//  Starter
//
//  Created by Aung Ko Ko Thet on 28/01/2021.
//

import UIKit

class GenreTableViewCell: UITableViewCell {

    @IBOutlet weak var collectionViewGenre: UICollectionView!
    @IBOutlet weak var collectionViewMovie: UICollectionView!
    
    let genreList = [GenreVO(name: "ACTION", isSelected: true),GenreVO(name: "DRAMA", isSelected: false),GenreVO(name: "COMEDY", isSelected: false),GenreVO(name: "ADVENTUREEEEEEE", isSelected: false),GenreVO(name: "BIOGRAPHY", isSelected: false)]
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        collectionViewGenre.dataSource = self
        collectionViewGenre.delegate = self
        
        collectionViewGenre.register(UINib(nibName: String(describing: GenreCollectionViewCell.self), bundle: nil), forCellWithReuseIdentifier: String(describing: GenreCollectionViewCell.self))
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

extension GenreTableViewCell : UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return genreList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: GenreCollectionViewCell.self), for: indexPath) as? GenreCollectionViewCell else {
            return UICollectionViewCell()
        }
        cell.data = genreList[indexPath.row]
        cell.onTapItem = { genreName in
            self.genreList.forEach { (genreVO) in
                if genreName == genreVO.name{
                    genreVO.isSelected = true
                }else{
                    genreVO.isSelected = false
                }
            }
            self.collectionViewGenre.reloadData()
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: widthOfString(text: genreList[indexPath.row].name,font: UIFont(name: "Geeza Pro Regular", size: 14) ?? UIFont.systemFont(ofSize: 14))+20, height: 45)
    }
    
    func widthOfString(text:String,font:UIFont)->CGFloat{
        let fontAttributes = [NSAttributedString.Key.font : font]
        let textSize = text.size(withAttributes: fontAttributes)
        return textSize.width
    }
    
}
