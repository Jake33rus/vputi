//
//  RouteDetailsInteractor.swift
//  Tours
//
//  Created by Евгений Уланов on 03.01.2022.
//  Copyright (c) 2022 Tours. All rights reserved.
//
//

import UIKit

protocol RouteDetailsBusinessLogic {
  func doSomething(request: RouteDetails.Something.Request)
}

protocol RouteDetailsDataStore {
  //var name: String { get set }
}

final class RouteDetailsInteractor: RouteDetailsBusinessLogic, RouteDetailsDataStore {
  var presenter: RouteDetailsPresentationLogic?
  var worker: RouteDetailsWorker?
  //var name: String = ""
  
  // MARK: Do something
  
  func doSomething(request: RouteDetails.Something.Request) {
    worker = RouteDetailsWorker()
    worker?.doSomeWork()
    
    let response = RouteDetails.Something.Response()
    presenter?.presentSomething(response: response)
  }
}
