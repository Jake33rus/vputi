//
//  AuthRouter.swift
//  Tours
//
//  Created by Евгений Уланов on 03.01.2022.
//  Copyright (c) 2022 Tours. All rights reserved.
//
//

import UIKit

@objc protocol AuthRoutingLogic
{
    func routeToMainScreen()
  //func routeToSomewhere(segue: UIStoryboardSegue?)
}

protocol AuthDataPassing
{
  var dataStore: AuthDataStore? { get }
}

final class AuthRouter: NSObject, AuthRoutingLogic, AuthDataPassing
{
  weak var viewController: AuthViewController?
  var dataStore: AuthDataStore?
  
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
    func routeToMainScreen() {
        return
    }
  //func navigateToSomewhere(source: AuthViewController, destination: SomewhereViewController)
  //{
  //  source.show(destination, sender: nil)
  //}
  
  // MARK: Passing data
  
  //func passDataToSomewhere(source: AuthDataStore, destination: inout SomewhereDataStore)
  //{
  //  destination.name = source.name
  //}
}
