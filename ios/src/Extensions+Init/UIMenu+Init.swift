//
//  UIMenu+Init.swift
//  react-native-ios-context-menu-custom
//
//  Created by Dominic Go on 11/12/21.
//

import UIKit

@available(iOS 13, *)
extension UIMenu.Options {
  init?(string: String){
    switch string {
      case "destructive"  : self = .destructive;
      case "displayInline": self = .displayInline;
      
      default: return nil;
    };
  };
};

#if !targetEnvironment(macCatalyst)
#if swift(>=5.7)
@available(iOS 16, *)
extension UIMenu.ElementSize {
  init?(string: String){
    switch string {
      case "small" : self = .small;
      case "medium": self = .medium;
      case "large" : self = .large;
      
      default: return nil;
    };
  };
};
#endif
#endif
