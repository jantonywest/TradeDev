//
//  ViewController.swift
//  TradeDev
//
//  Created by Jinto Antony on 2021-01-05.
//  Copyright © 2021 JA. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
     var movieManager = MovieManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.register()
        HttpService().connectMoviesList { (data,err) in
            if let data = data{
                self.movieManager = MovieManager(data)
                 DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }
        }
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.movieManager.movies?.count ?? 0
    }
          
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "movieList", for: indexPath) as! MovieListTableViewCell
        cell.lblMovieName.text = self.movieManager.getMovieName(atIndex: indexPath.row)
        
        cell.selectionStyle = .none
        return cell;
    }

    func tableView(_ tableView: UITableView,
                 heightForRowAt indexPath: IndexPath) -> CGFloat {
     
         return 65
    }
     func register(){
         self.tableView.register(UINib(nibName: "MovieListTableViewCell", bundle: nil), forCellReuseIdentifier: "movieList");
     }

}

