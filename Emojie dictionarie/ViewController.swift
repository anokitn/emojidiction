//
//  ViewController.swift
//  Emojie dictionarie
//
//  Created by NBN LOC on 11/01/2019.
//  Copyright © 2019 Anokitn. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tabel1: UITableView!
    
    var emoj = ["😅","😎","🤬","😷","🤕","😺","🐙","🐋"]

   //========== = == = = = = = = = = = = = =
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        
        
        tabel1.dataSource = self
        tabel1.delegate = self
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { return emoj.count
    
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {         print(indexPath.row)
        let cell = UITableViewCell()
        cell.textLabel?.text = emoj[indexPath.row]
        return cell
        
    }

}

