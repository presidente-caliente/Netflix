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
        let table = UITableView(frame: .zero, style: .grouped)
        
        // register function for use
        table.register(CollectionViewTableViewCell.self, forCellReuseIdentifier: CollectionViewTableViewCell.identifier)
        
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = .systemBackground
        
        // add a subview
        view.addSubview(homeFeedTable)
        
        // define self to delegate view
        homeFeedTable.delegate = self
        
        // define self as data source
        homeFeedTable.dataSource = self
        
        // instantiate the HeroHeaderUIView object
        let headerView = HeroHeaderUIView(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: 450))
        
        homeFeedTable.tableHeaderView = headerView
    }
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        // define homeFeedTable object bounds within view
        homeFeedTable.frame = view.bounds
    }

}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 20
    }
    
    // define number of rows
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    // define cells
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CollectionViewTableViewCell.identifier, for: indexPath) as? CollectionViewTableViewCell else {
            return UITableViewCell()
        }
        
        return cell
    }
    
    // define cell row height
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    // define cell header height
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
}
