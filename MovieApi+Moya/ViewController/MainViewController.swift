//
//  MainViewController.swift
//  MovieApi+Moya
//
//  Created by Malcolm Kumwenda on 2018/01/16.
//  Copyright © 2018 mdevsa. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    var networkProvider: NetworkManager!
    
    init(networkProvider: NetworkManager) {
        super.init(nibName: nil, bundle: nil)
        self.networkProvider = networkProvider
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        networkProvider.getNewMovies(page: 1) { movies in
            
        }
    }
}
