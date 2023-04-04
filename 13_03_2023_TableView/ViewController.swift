//
//  ViewController.swift
//  13_03_2023_TableView
//
//  Created by Vishal Jagtap on 04/04/23.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate{
    var foodItems : [String] = ["Upma","Poha","PavBhaji","VadaPav","Samosa"]
    
    @IBOutlet weak var foodItemsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        foodItemsTableView.dataSource = self
        foodItemsTableView.delegate = self
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tableViewCell = self.foodItemsTableView.dequeueReusableCell(withIdentifier: "Cell")
        tableViewCell?.textLabel?.text = foodItems[indexPath.row]
        return tableViewCell ?? UITableViewCell()
    }
}
