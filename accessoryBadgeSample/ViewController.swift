//
//  ViewController.swift
//  accessoryBadgeSample
//
//  Created by satoshi.marumoto on 2020/04/16.
//  Copyright © 2020 satoshi.marumoto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView:UITableView!
    
    // 画像配列
    let imgArray = [
        "park","sun",
        "road","flower",
        "wave"]
    // 文字列配列
    let strArray = [
        "park","sun",
        "road","flower",
        "wave"]

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
    
extension ViewController: UITableViewDataSource {
    
    func tableView(_ table: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        return imgArray.count
    }
    
    func tableView(_ table: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        guard let cell = table.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TableViewCell else {fatalError("Wrong cell class dequeued")}
        let image = UIImage(named: imgArray[indexPath.row] )

        cell.iconImageView.image = image
        cell.titleLabel.text = strArray[indexPath.row]
        cell.setAccessoryUnreadBadge()
        
        return cell
    }

}
