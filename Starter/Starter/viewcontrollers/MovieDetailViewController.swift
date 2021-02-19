//
//  MovieDetailViewController.swift
//  Starter
//
//  Created by Aung Ko Ko Thet on 14/01/2021.
//

import UIKit

class MovieDetailViewController: UIViewController {

    @IBOutlet weak var ivBack: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initGestureRecognizers()

        // Do any additional setup after loading the view.
    }
    
    private func initGestureRecognizers(){
        let tapGestureForBack = UITapGestureRecognizer(target: self, action: #selector(onTapBack))
        ivBack.isUserInteractionEnabled = true
        ivBack.addGestureRecognizer(tapGestureForBack)
    }
    

    @objc func onTapBack(){
        self.dismiss(animated: true, completion: nil)
    }
}
