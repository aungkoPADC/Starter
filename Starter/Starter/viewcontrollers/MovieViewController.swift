//
//  MovieViewController.swift
//  Starter
//
//  Created by Aung Ko Ko Thet on 14/01/2021.
//

import UIKit

class MovieViewController: UIViewController {

    
    @IBOutlet weak var ivSearch: UIImageView!
    @IBOutlet weak var ivMenu: UIImageView!
    @IBOutlet weak var viewForToolbar: UIView!
    @IBOutlet weak var tableViewMovies: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewMovies.dataSource = self
        tableViewMovies.register(UINib(nibName: String(describing: MovieSliderTableViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: MovieSliderTableViewCell.self))
        tableViewMovies.register(UINib(nibName: String(describing: PopularFilmTableViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: PopularFilmTableViewCell.self))
    }
    
}

extension MovieViewController : UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: String(describing:MovieSliderTableViewCell.self), for: indexPath) as? MovieSliderTableViewCell else {
                return UITableViewCell()
            }
            return cell
        case 1:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: String(describing:PopularFilmTableViewCell.self), for: indexPath) as? PopularFilmTableViewCell else {
                return UITableViewCell()
            }
            return cell
        default:
            return UITableViewCell()
        }
        
    }
    
    
}
