//
//  ViewController.swift
//  Douying
//
//  Created by liuke on 2020/3/2.
//  Copyright © 2020 NightElf. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lists.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView .dequeueReusableCell(withIdentifier: "viewCell", for: indexPath)
        
        cell.textLabel?.text = lists[indexPath.row];
        
        return cell;
    }
 
    @IBOutlet var tableView: UITableView!
    let lists = ["抖音小姐姐","快手小哥哥","许汉升","https://cocoapods.org/","https://app.quicktype.io/"];
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
         
    }


}

