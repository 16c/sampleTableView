//
//  ViewController.swift
//  sampleTableView
//
//  Created by 今川博司 on 2018/01/19.
//  Copyright © 2018年 今川博司. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var myTableView: UITableView!
    var teaList = ["ダージリン","アッサム","ウバ","ヌワラエリア","キーモン"]
    var selectedRowIndex = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return teaList.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = teaList[indexPath.row]
        cell.accessoryType = .detailButton
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print ("\(teaList[indexPath.row])がタップされました")
        selectedRowIndex = indexPath.row
        performSegue(withIdentifier: "showDetail", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var dvc:DetailViewController = segue.destination as! DetailViewController
        dvc.passedIndex = selectedRowIndex
    }
    
}
