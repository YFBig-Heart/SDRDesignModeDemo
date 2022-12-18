//
//  SDRBridgePattern.swift
//  SDRDesignModeDemo
//
//  Created by 刘云飞 on 2022/12/16.
//

import UIKit

class SDRBridgePattern: NSObject {

}

// 1.定义一个协议，用来处理搜索内容转成富文本
protocol SDRSearchCellModelProtocol {
    func buildHtmlAttriWithText(_ text:String, font:UIFont, hexColor:UIColor)-> NSAttributedString
}






