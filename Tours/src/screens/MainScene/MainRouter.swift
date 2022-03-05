//
//  MainRouter.swift
//  Tours
//
//  Created by Евгений Уланов on 03.01.2022.
//  Copyright (c) 2022 Tours. All rights reserved.
//
//

import UIKit

@objc protocol MainRoutingLogic
{
    func routeToAddCity()
    func routeToRouteList()
    func routeToSettings()
    func routeToProfile()
  //func routeToSomewhere(segue: UIStoryboardSegue?)
}

protocol MainDataPassing
{
  var dataStore: MainDataStore? { get }
}

final class MainRouter: NSObject, MainRoutingLogic, MainDataPassing
{
  weak var viewController: MainViewController?
  var dataStore: MainDataStore?
  
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
    func routeToAddCity() {
        return
    }
    
    func routeToRouteList() {
        return
    }
    
    func routeToSettings() {
        return
    }
    
    func routeToProfile() {
        return
    }
  //func navigateToSomewhere(source: MainViewController, destination: SomewhereViewController)
  //{
  //  source.show(destination, sender: nil)
  //}
  
  // MARK: Passing data
  
  //func passDataToSomewhere(source: MainDataStore, destination: inout SomewhereDataStore)
  //{
  //  destination.name = source.name
  //}
}
