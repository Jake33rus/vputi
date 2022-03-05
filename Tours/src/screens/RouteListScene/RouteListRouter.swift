//
//  RouteListRouter.swift
//  Tours
//
//  Created by Евгений Уланов on 03.01.2022.
//  Copyright (c) 2022 Tours. All rights reserved.
//
//

import UIKit

@objc protocol RouteListRoutingLogic {
  //func routeToSomewhere(segue: UIStoryboardSegue?)
    func routeToRouteDetails()
}

protocol RouteListDataPassing {
  var dataStore: RouteListDataStore? { get }
}

final class RouteListRouter: NSObject, RouteListRoutingLogic, RouteListDataPassing {
  weak var viewController: RouteListViewController?
  var dataStore: RouteListDataStore?
  
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
    func routeToRouteDetails() {
        return
    }
  //func navigateToSomewhere(source: RouteListViewController, destination: SomewhereViewController)
  //{
  //  source.show(destination, sender: nil)
  //}
  
  // MARK: Passing data
  
  //func passDataToSomewhere(source: RouteListDataStore, destination: inout SomewhereDataStore)
  //{
  //  destination.name = source.name
  //}
}
