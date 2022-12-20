//
//  SDRBridgePattern.swift
//  SDRDesignModeDemo
//
//  Created by 刘云飞 on 2022/12/16.
//

import UIKit

// 1.定义一个协议，用来处理搜索内容转成富文本
protocol SDRSearchTextProtocol {
    func buildHtmlAttriWithText(_ text:String, font:UIFont, hexColor:UIColor)-> NSAttributedString
}

protocol DrawApi {
    func drawCircle(_ radius: Float, x:Float, y: Float)
}

class SDRTopicCellModel: SDRSearchTextProtocol {
    func buildHtmlAttriWithText(_ text: String, font: UIFont, hexColor: UIColor) -> NSAttributedString {
        let attri = NSMutableAttributedString.init(string: "话题:\(text)", attributes: [NSAttributedString.Key.font : font, NSAttributedString.Key.foregroundColor : hexColor]);
        return attri
    }
}

class SDRRecipeCellModel: SDRSearchTextProtocol {
    func buildHtmlAttriWithText(_ text: String, font: UIFont, hexColor: UIColor) -> NSAttributedString {
        let attri = NSMutableAttributedString.init(string: "辅食:\(text)", attributes: [NSAttributedString.Key.font : font, NSAttributedString.Key.foregroundColor : hexColor]);
        return attri
    }
}

class SDRSearchModel :NSObject {
    var content:String?
    var title:String?
}


class SDRSearchBaseCellModel:NSObject {
    
    let textProtocol:SDRSearchTextProtocol
    let model:SDRSearchModel
    var contenAttri: NSAttributedString?
    
    init(textProtocol: SDRSearchTextProtocol, model: SDRSearchModel) {
        self.textProtocol = textProtocol
        self.model = model
    }
    
    func configSearchModel()  {
        self.contenAttri = textProtocol.buildHtmlAttriWithText(self.model.content ?? "", font: UIFont.systemFont(ofSize: 14), hexColor: UIColor.darkGray);
    }
}



