//
//  SDRViewController.swift
//  SDRDesignModeDemo
//
//  Created by 刘云飞 on 2022/12/16.
//

import UIKit


@objc class SDRViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        
    }

}

extension SDRViewController {
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let red = SDRRedShapeDecorator(decoratedShape: SDRCircle())
        red.drawShape()
        
    }
}
