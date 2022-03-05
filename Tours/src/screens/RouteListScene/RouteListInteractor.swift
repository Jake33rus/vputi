//
//  RouteListInteractor.swift
//  Tours
//
//  Created by Евгений Уланов on 03.01.2022.
//  Copyright (c) 2022 Tours. All rights reserved.
//
//

import UIKit

protocol RouteListBusinessLogic {
  func doSomething(request: RouteList.Something.Request)
}

protocol RouteListDataStore {
  //var name: String { get set }
}

final class RouteListInteractor: RouteListBusinessLogic, RouteListDataStore {
  var presenter: RouteListPresentationLogic?
  var worker: RouteListWorker?
  //var name: String = ""
  
  // MARK: Do something
  
  func doSomething(request: RouteList.Something.Request) {
    worker = RouteListWorker()
    worker?.doSomeWork()
    
    let response = RouteList.Something.Response()
    presenter?.presentSomething(response: response)
  }
}
