//
//  BundleExtention.swift
//  TBMtimeBaseControll
//
//  Created by 田彬彬 on 2020/12/22.
//

import Foundation

open class BaseBundleStruct {
    
}


extension Bundle {
    
    /// 返回框架 bundle 对象
    public static var Base: Bundle {
        if let path = Bundle(for: BaseBundleStruct.self).path(forResource: "TBMtimeBaseControll", ofType: "bundle") {
            return Bundle(path: path)!
        }
        
        return Bundle.main
    }
    
    private struct AssociatedKeys {
        static var common = "Bundle.common"
        static var baseControll = "Bundle.baseControll"
    }
    
    /// 通用组件
    @objc public static var common: Bundle {
        get {
            return objc_getAssociatedObject(self, &AssociatedKeys.common) as? Bundle ?? Bundle.main
        }
        set {
            objc_setAssociatedObject(self, &AssociatedKeys.common, newValue, .OBJC_ASSOCIATION_RETAIN)
        }
    }
    
    /// 底层组件
    @objc public static var baseControll: Bundle {
        get {
            return objc_getAssociatedObject(self, &AssociatedKeys.baseControll) as? Bundle ?? Bundle.main
        }
        set {
            objc_setAssociatedObject(self, &AssociatedKeys.baseControll, newValue, .OBJC_ASSOCIATION_RETAIN)
        }
    }
}
