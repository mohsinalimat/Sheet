//
//  SheetOptions.swift
//  Sheeeeeeeeet
//
//  Created by Gwangbeom on 2018. 9. 28..
//  Copyright © 2018년 GwangBeom. All rights reserved.
//

import UIKit

public enum SheetPresentTransitionType {
    
    case none
    
    case scale
    
    public func animator(present: Bool) -> UIViewControllerAnimatedTransitioning? {
        switch self {
        case .none: return nil
        case .scale: return SheetModalScaleAnimator(present: present)
        }
    }
}

public struct ToolBarItem {
    
    /// Default Sheet ToolBar font
    public var font: UIFont = .systemFont(ofSize: 15)
    
    /// Default Sheet ToolBar title color
    public var titleColor: UIColor = .white
}

public struct SheetOptions {
    
    // Button
    /// Sheet ToolBar Background Color
    public var defaultToolBarBackgroundColor: UIColor = .black
    
    /// Sheet ToolBar Item
    public var defaultToolBarItem = ToolBarItem()
    
    /// Sheet ToolBar height. Defaults to 50
    public var sheetToolBarHeight: CGFloat = 50
    
    /// Sheet ToolBar hide property. Defaults to false
    public var isSheetToolBarHidden = false
    
    // Sheet
    /// Sheet top corner radius. Defaults to 0
    public var cornerRadius: CGFloat = 0
    
    /// Sheet visible contents height. If contentSize height is less than defaultVisibleContentHeight, contentSize height is applied. Defaults to 240
    public var defaultVisibleContentHeight: CGFloat = 240
    
    // etc
    /// Sheet NavigationController present transition style. Defaults to .scale
    public var presentTransitionType: SheetPresentTransitionType = .scale
    
    /// sheet dimming view background color
    public var dimmingViewBackgroundColor = UIColor.black.withAlphaComponent(0.3)
    
    /// sheet background color
    public var sheetBackgroundColor: UIColor = .white
}
