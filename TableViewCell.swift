//
//  TableViewCell.swift
//  mobile_rating
//
//  Created by Stanislav on 12.04.2023.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    static let ident = "Identifier"
    
    private lazy var imageCell: UIImageView = {
        
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    private lazy var labelCell: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        return label
    }()
    private lazy var pick = UIImageView()

    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func confCell(text: String) {
        labelCell.text = text
    }
    
    func setupUI() {
        
        labelCell.translatesAutoresizingMaskIntoConstraints = false
        pick.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(imageCell)
        contentView.addSubview(labelCell)
        contentView.addSubview(pick)
//
        imageCell.image = UIImage(systemName: "bitcoinsign.circle.fill")
        pick.image = UIImage(systemName: "chevron.right")
        
        NSLayoutConstraint.activate([
            imageCell.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 10.0),
            imageCell.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            imageCell.heightAnchor.constraint(equalTo: contentView.heightAnchor),
            imageCell.widthAnchor.constraint(equalToConstant: 60),
            labelCell.leftAnchor.constraint(equalTo: imageCell.rightAnchor, constant: 20),
            labelCell.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            labelCell.heightAnchor.constraint(equalToConstant: 40),
            labelCell.widthAnchor.constraint(equalToConstant: 100),
            pick.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -10),
            pick.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            pick.heightAnchor.constraint(equalToConstant: 30),
            pick.widthAnchor.constraint(equalToConstant: 30)
        ])

    }
}
