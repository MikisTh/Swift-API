func didReceive(point: SocketPosition) {
    screen.handle(location: CLLocationCoordinate2D(latitude: CLLocationDegrees(point.x), longitude: CLLocationDegrees(point.y)) )
}