//
//  SDRCompositePattern.swift
//  SDRDesignModeDemo
//
//  Created by 刘云飞 on 2022/12/20.
//

import UIKit

// 医生端课程资源文件
class YSDPopularScienceResourceModel : NSObject {
    
    var idx:Int? // 资源ID
    var imgUrl: String? //封面
    
    //  图文
    var hasVoice:Bool = false
    var contentArr:[YSDPopularScienceResourceModel]?
    
    // 音频
    var voice:String? //  音频资源文件地址
    var voiceUrl:String? // 音频文件url
    
    // 视频
    var videoUrl:String? // 视频资源文件地址
    func add(_ resouce:YSDPopularScienceResourceModel?){
        guard let res = resouce else {
            return
        }
        if var list = contentArr {
            list.append(res)
        }else {
            self.contentArr = [res]
        }
    }
    func remove(_ resouce:YSDPopularScienceResourceModel?) {
        if var list = contentArr,let res = resouce {
            list.removeAll{$0.idx == res.idx}
        }
    }
    
    
}
