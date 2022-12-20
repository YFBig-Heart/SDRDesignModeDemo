//
//  SDRFlyweightPattern.swift
//  GeekLogo
//
//  Created by 晴天 on 2022/12/19.
//

import UIKit

var createCnt:Int = 0
var reuseCnt:Int = 0

class SDRReuseViewTableView: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self;
        tableView.delegate = self;
        tableView.register(SDRReuseViewTableCell.self, forCellReuseIdentifier: "SDRReuseViewTableCell")
        tableView.rowHeight = 100;
    }
}
extension SDRReuseViewTableView {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100;
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SDRReuseViewTableCell", for: indexPath)
        cell.contentView.backgroundColor = UIColor(red: CGFloat(arc4random_uniform(255))/256.0, green: CGFloat(arc4random_uniform(255))/256.0, blue: CGFloat(arc4random_uniform(255))/256.0, alpha: 1)
        return cell
    }
}

class SDRReuseViewTableCell: UITableViewCell {
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?){
        super.init(style: style, reuseIdentifier: reuseIdentifier);
        createCnt += 1
        print("创建了 \(createCnt) 次");
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func prepareForReuse() {
        super.prepareForReuse()
        reuseCnt += 1
        print("复用了 \(reuseCnt) 次");
    }
}

