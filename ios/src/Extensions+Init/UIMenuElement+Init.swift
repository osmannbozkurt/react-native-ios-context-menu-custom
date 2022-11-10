//
//  UIMenuElement+Init.swift
//  react-native-ios-context-menu-custom
//
//  Created by Dominic Go on 11/12/21.
//

import UIKit

@available(iOS 13, *)
extension UIMenuElement.Attributes {
  init?(string: String){
    switch string {
      case "hidden"     : self = .hidden;
      case "disabled"   : self = .disabled;
      case "destructive": self = .destructive;
      
      #if !targetEnvironment(macCatalyst)
      #if swift(>=5.7)
      case "keepsMenuPresented":
        guard #available(iOS 16.0, *) else { return nil };
        self = .keepsMenuPresented
      #endif
      #endif
      
      default: return nil;
    };
  };
};

@available(iOS 13, *)
extension UIMenuElement.State {
  init?(string: String){
    switch string {
      case "on"   : self = .on;
      case "off"  : self = .off;
      case "mixed": self = .mixed;
      
      default: return nil;
    };
  };
};
