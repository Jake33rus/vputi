//
//  RouteClient.swift
//  Tours
//
//  Created by Евгений Уланов on 06.03.2022.
//

import Foundation
import GRPC
import SwiftProtobuf
import NIO

class RouteClient {
    var routeServiceClient: Adventure_Net_Controller_RouteServiceClient?
    let port: Int = 5001
    init() {
        let eventLoopGroup = MultiThreadedEventLoopGroup(numberOfThreads: 1)
        do {
            // open a channel to the gPRC server
            let channel = try GRPCChannelPool.with(
                target: .host("localhost", port: self.port),
                transportSecurity: .plaintext,
                eventLoopGroup: eventLoopGroup
            )
            // create a Client
            self.routeServiceClient = Adventure_Net_Controller_RouteServiceClient(channel: channel)
            print("grpc connection initialized")
        } catch {
            print("Couldn’t connect to gRPC server")
        }
    }

    func getRoutes(
        model: RouteRequestModel,
        onSuccess successHandler: @escaping (Adventure_Net_Controller_GetRoutesResponse) -> Void,
        onFailure failureHandler: @escaping (Any) -> Void
    ) {
        guard let client = routeServiceClient else { return }
        var request = Adventure_Net_Controller_GetRoutesRequest()
        var from = Google_Protobuf_Timestamp()
        from.seconds = Int64(model.from)
        request.from = from
        var to = Google_Protobuf_Timestamp()
        to.seconds = Int64(model.to)
        request.to = to
        if let userLatitude = model.userLatitude,
           let userLongitude = model.userLongitude {
            var toLocation = Adventure_Net_Controller_PointLocation()
            toLocation.latitude = userLatitude
            toLocation.longitude = userLongitude
            request.toLocation = toLocation
        }
        if let fromLatitude = model.fromLatitude,
           let fromLongitude = model.fromLongitude {
            var fromLocation = Adventure_Net_Controller_PointLocation()
            fromLocation.latitude = fromLatitude
            fromLocation.longitude = fromLongitude
            request.fromLocation = fromLocation
        }
        if let preferTransport = model.preferTransport {
            request.preferTransport = preferTransport
        }
        if let eatCount = model.eatCount {
            request.eatCount = eatCount
        }
        if let pointCount = model.pointCount {
            request.pointCount = pointCount
        }
        if let useHotel = model.useHotel {
            request.useHotel = useHotel
        }
        request.money = model.money
        request.cityID = model.cityID

        do {
            _ =  client.getRoutes(request, handler: { response in
                DispatchQueue.main.async {
                    successHandler(response)
                    print(response)
                }
            })
        }
    }
}
