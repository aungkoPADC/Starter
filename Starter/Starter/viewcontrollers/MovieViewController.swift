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
        registerTableViewCells()
    }
    
    private func registerTableViewCells(){
        tableViewMovies.dataSource = self
        
        tableViewMovies.registerForCell(identifier: MovieSliderTableViewCell.identifier)
        tableViewMovies.registerForCell(identifier: PopularFilmTableViewCell.identifier)
        tableViewMovies.registerForCell(identifier: MovieShowTimeTableViewCell.identifier)
        tableViewMovies.registerForCell(identifier: GenreTableViewCell.identifier)
        tableViewMovies.registerForCell(identifier: ShowCaseTableViewCell.identifier)
        tableViewMovies.registerForCell(identifier: BestActorTableViewCell.identifier)
    }
    
}

extension MovieViewController : UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case MovieType.MOVIE_SLIDER.rawValue:
            return tableView.dequeueCell(identifier: MovieSliderTableViewCell.identifier, indexPath: indexPath)
        case MovieType.MOVIE_POPULAR.rawValue:
            return tableView.dequeueCell(identifier: PopularFilmTableViewCell.identifier, indexPath: indexPath)
        case MovieType.MOVIE_SHOWTIME.rawValue:
            return tableView.dequeueCell(identifier: MovieShowTimeTableViewCell.identifier, indexPath: indexPath)
        case MovieType.MOVIE_GENRE.rawValue:
            return tableView.dequeueCell(identifier: GenreTableViewCell.identifier, indexPath: indexPath)
        case MovieType.MOVIE_SHOWCASE.rawValue:
            return tableView.dequeueCell(identifier: ShowCaseTableViewCell.identifier, indexPath: indexPath)
        case MovieType.MOVIE_BEST_ACTOR.rawValue:
            return tableView.dequeueCell(identifier: BestActorTableViewCell.identifier, indexPath: indexPath)
        default:
            return UITableViewCell()
        }
        
    }
    
    
}
