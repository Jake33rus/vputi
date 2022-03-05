//
//  WelcomeScreenRouter.swift
//  Tours
//
//  Created by Евгений Уланов on 03.01.2022.
//  Copyright (c) 2022 Tours. All rights reserved.
//
//

import UIKit

@objc protocol WelcomeScreenRoutingLogic {
  //func routeToSomewhere(segue: UIStoryboardSegue?)
    func routeToRegistration()
    func routeToAuthorizstion()
}

protocol WelcomeScreenDataPassing {
  var dataStore: WelcomeScreenDataStore? { get }
}

final class WelcomeScreenRouter: NSObject, WelcomeScreenRoutingLogic, WelcomeScreenDataPassing {
  weak var viewController: WelcomeScreenViewController?
  var dataStore: WelcomeScreenDataStore?
  
  // MARK: Routing
  
  //func routeToSomewhere(segue: UIStoryboardSegue?)
  //{
  //  if let segue = segue {
  //    let destinationVC = segue.destination as! SomewhereViewController
  //    var destinationDS = destinationVC.router!.dataStore!
  //    passDataToSomewhere(source: dataStore!, destination: &destinationDS)
  //  } else {
  //    let storyboard = UIStoryboard(name: "Main", bundle: nil)
  //    let destinationVC = storyboard.instantiateViewController(withIdentifier: "SomewhereViewController") as! SomewhereViewController
  //    var destinationDS = destinationVC.router!.dataStore!
  //    passDataToSomewhere(source: dataStore!, destination: &destinationDS)
  //    navigateToSomewhere(source: viewController!, destination: destinationVC)
  //  }
  //}

  // MARK: Navigation
  
  //func navigateToSomewhere(source: WelcomeScreenViewController, destination: SomewhereViewController)
  //{
  //  source.show(destination, sender: nil)
  //}
    func routeToRegistration() {
        return
    }
    
    func routeToAuthorizstion() {
        return
    }
  
  // MARK: Passing data
  
  //func passDataToSomewhere(source: WelcomeScreenDataStore, destination: inout SomewhereDataStore)
  //{
  //  destination.name = source.name
  //}
}
