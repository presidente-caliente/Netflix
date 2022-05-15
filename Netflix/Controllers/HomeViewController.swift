//
//  HomeViewController.swift
//  Netflix
//
//  Created by Joyce on 5/15/22.
//

import UIKit

class HomeViewController: UIViewController {

    private let homeFeedTable: UITableView = {
        
        // instantiate single column row
        let table = UITableView()
        
        // register function for use
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = .systemBackground
        
        // add a subview
        view.addSubview(homeFeedTable)
    }
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        // define homeFeedTable object bounds within view
        homeFeedTable.frame = view.bounds
    }

}
