//
//  SDRDecoratorPattern.swift
//  SDRDesignModeDemo
//
//  Created by 刘云飞 on 2022/12/16.
//

import UIKit

// 1.创建一个接口
@objc protocol SDRShapeprotocol : NSObjectProtocol  {
    @objc optional func drawShape()
}
// 2.创建实现接口的实体类。
class SDRRectangle:NSObject, SDRShapeprotocol {
    
    func drawShape() {
        print("Shape: Rectangle")
    }
}
class SDRCircle:NSObject, SDRShapeprotocol {
    func drawShape() {
        print("Shape: Circle")
    }
}
// 3.创建实现了 Shape 接口的抽象装饰类 （ Swift 这里用协议做了抽象类）
class SDRShapeDecorator:NSObject, SDRShapeprotocol {
    
    let decoratedShape:SDRShapeprotocol
    
    init(decoratedShape: SDRShapeprotocol) {
        self.decoratedShape = decoratedShape
    }
    
    func drawShape() {
        decoratedShape.drawShape?()
    }
}
class SDRRedShapeDecorator:SDRShapeDecorator {
    // 4.创建扩展了 ShapeDecorator 类的实体装饰类
    override func drawShape() {
        super.drawShape()
        self.setRedBorder(decoratedShape);
    }
    
    func setRedBorder(_ decoratedShape:SDRShapeprotocol) {
        print("Border Color: Red")
    }
    
}






