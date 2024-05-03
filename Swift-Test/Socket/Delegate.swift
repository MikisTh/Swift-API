protocol SocketPositionManagerDelegate: class {
    func didConnect()
    func didReceive(position: SocketPosition)
}
