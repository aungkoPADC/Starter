//
//  MovieDetailViewController.swift
//  Starter
//
//  Created by Aung Ko Ko Thet on 14/01/2021.
//

import UIKit

class MovieDetailViewController: UIViewController {

    @IBOutlet weak var ivBack: UIImageView!
    @IBOutlet weak var btnRateMovie: UIButton!
    @IBOutlet weak var collectionViewActors: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCollectionViewCells()
        initGestureRecognizers()

        btnRateMovie.layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        btnRateMovie.layer.borderWidth = 2
        btnRateMovie.layer.cornerRadius = 20
        // Do any additional setup after loading the view.
    }
    
    private func registerCollectionViewCells(){
        collectionViewActors.delegate = self
        collectionViewActors.dataSource = self
        collectionViewActors.register(UINib(nibName: String(describing: ActorCollectionViewCell
                                                                .self), bundle: nil), forCellWithReuseIdentifier: String(describing: ActorCollectionViewCell.self))
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

extension MovieDetailViewController : UICollectionViewDataSource , UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: ActorCollectionViewCell.self), for: indexPath) as? ActorCollectionViewCell else {
            return UICollectionViewCell()
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width/2.5, height: CGFloat(200))
    }
    
    
    
}
