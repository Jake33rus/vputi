//
//  AppDelegate.swift
//  Tours
//
//  Created by Евгений Уланов on 09.10.2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow()
        window?.rootViewController = SelectInterestsAssembly.build()
        window?.makeKeyAndVisible()
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
//        let client = RouteClient()
//        client.getRoutes(
//            model: RouteRequestModel(
//                from: 2,
//                to: 2,
//                userLatitude: nil,
//                userLongitude: nil,
//                fromLatitude: nil,
//                fromLongitude: nil,
//                preferTransport: nil,
//                pointCount: nil,
//                eatCount: nil,
//                money: 22222.2,
//                useHotel: false,
//                cityID: 111
//            ),
//            onSuccess: { response in
//                print(response)
//            },
//            onFailure: { error in
//                print(error)
//            }
//        )
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

