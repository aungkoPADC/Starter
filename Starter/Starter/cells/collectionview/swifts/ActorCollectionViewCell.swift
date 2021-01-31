//
//  ActorCollectionViewCell.swift
//  Starter
//
//  Created by Aung Ko Ko Thet on 31/01/2021.
//

import UIKit

class ActorCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var ivHeart: UIImageView!
    @IBOutlet weak var ivHeartFill: UIImageView!
    
    var delegate : ActorActionDelegate?=nil
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        initGestureRecognizers()
    }
    
    private func initGestureRecognizers(){
        let tapGestForFavorite = UITapGestureRecognizer(target: self, action: #selector(onTapFavorite))
        ivHeartFill.isUserInteractionEnabled = true
        ivHeartFill.addGestureRecognizer(tapGestForFavorite)
        
        let tapGestForUnFavorite = UITapGestureRecognizer(target: self, action: #selector(onTapUnFavorite))
        ivHeart.isUserInteractionEnabled = true
        ivHeart.addGestureRecognizer(tapGestForUnFavorite)
    }
    
    @objc func onTapFavorite(){
        ivHeartFill.isHidden = true
        ivHeart.isHidden = false
        delegate?.onTapFavorite(isFavorte: true)
    }
    
    @objc func onTapUnFavorite(){
        ivHeart.isHidden = true
        ivHeartFill.isHidden = false
        delegate?.onTapFavorite(isFavorte: false)
    }

}
