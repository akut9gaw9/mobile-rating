//
//  ViewController.swift
//  mobile_rating
//
//  Created by Stanislav on 12.04.2023.
//

import UIKit

class ViewController: UIViewController {

    let tableView = UITableView()
    let data = ["Time Spent", "Photos and Videos", "Interactions", "Account History", "Recent Search", "Link You've Visited", "Archived", "Recently Deleted", "Download Your Information"]
    let identifier = "myCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Your Account"
        view.backgroundColor = .systemBackground
        tableView.register(TableViewCell.self, forCellReuseIdentifier: TableViewCell.ident)
        setupConstraints()
        tableView.dataSource = self
        tableView.delegate = self
        // Do any additional setup after loading the view.
    }
    
    func setupConstraints() {
        tableView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(tableView)
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            tableView.leftAnchor.constraint(equalTo: view.leftAnchor),
            tableView.rightAnchor.constraint(equalTo: view.rightAnchor)
        ])
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.ident, for: indexPath) as! TableViewCell
        cell.confCell(text: data[indexPath.row])
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
}

