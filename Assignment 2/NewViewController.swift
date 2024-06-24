//
//  ViewController.swift
//  Assignment 2
//
//  Created by user252703 on 6/21/24.
//

import UIKit

class NewViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var table: UITableView!
    struct List {
        let name: String
        let detail: String
        let price: String
    }

    var data: [List] = [
        List(name: "Dell", detail: "2.7Ghz", price: "$1299.99"),
        List(name: "Hp", detail: "2.3Ghz", price: "$299.99"),
        List(name: "Apple", detail: "2Ghz", price: "$2299.99"),
        List(name: "sony", detail: "3Ghz", price: "$2569.99"),    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Laptops"

        navigationItem.hidesBackButton = true
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(add))
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .close, target: self, action: #selector(close))
        table.dataSource = self
        table.delegate = self
    }

    @objc func add() {
        data.insert(List(name: "IBM Tablet", detail: "9000520", price: "$999.00"), at: 4) // Added the new item to the end of the list
        table.reloadData() // Reload the table to reflect the new data
    }

    @objc func close() {
        navigationController?.popViewController(animated: true)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = data[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! NewTableViewCell
        cell.name.text = row.name
        cell.price.text = row.price
        cell.detail.text = row.detail
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70;
    }
}
