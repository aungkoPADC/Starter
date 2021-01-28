//
//  ShowCaseTableViewCell.swift
//  Starter
//
//  Created by Aung Ko Ko Thet on 29/01/2021.
//

import UIKit

class ShowCaseTableViewCell: UITableViewCell {

    @IBOutlet weak var lblMoreShowCases: UILabel!
    @IBOutlet weak var lblShowCases: UILabel!
    @IBOutlet weak var collectionViewShowCases: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        lblMoreShowCases.underlineText(text: "MORE SHOWCASES")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
