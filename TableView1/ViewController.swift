//
//  ViewController.swift
//  TableView1
//
//  Created by ouyou on 2019/06/17.
//  Copyright © 2019 ouyou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        let nib1 = UINib(nibName: "TableViewCell1", bundle: nil)
        let nib2 = UINib(nibName: "TableViewCell2", bundle: nil)
        let nib3 = UINib(nibName: "TableViewCell3", bundle: nil)
        tableView.register(nib1, forCellReuseIdentifier: "cell1")
        tableView.register(nib2, forCellReuseIdentifier: "cell2")
        tableView.register(nib3, forCellReuseIdentifier: "cell3")
    }


}

extension ViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell1") as! TableViewCell1
            return cell
        }else if indexPath.row == 1{
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell2") as! TableViewCell2
            return cell
        }else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell3") as! TableViewCell3
            return cell
        }
    }
    
    
}
