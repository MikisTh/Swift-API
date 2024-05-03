import Foundation
import SocketIO

class SocketChatManager {

    // MARK: - Properties
    let manager = SocketManager(socketURL: URL(string: "https://socket-io-chat.now.sh")!, config: [.log(false), .compress])
    var socket: SocketIOClient? = nil

    // MARK: - Life Cycle

    init() {
        setupSocket()
        setupSocketEvents()
        socket?.connect()
    }

    func stop() {
        socket?.removeAllHandlers()
    }

    // MARK: - Socket Setup

    func setupSocket() {
        self.socket = manager.defaultSocket
    }

    func setupSocketEvents() {
        socket?.on(clientEvent: .connect) {data, ack in
            print("Connected")
        }

        socket?.on("login") { (data, ack) in
            guard let dataInfo = data.first else { return }
            if let response: SocketLogin = try? SocketParser.convert(data: dataInfo) {
                print("Now this chat has \(response.numUsers) users.")
            }
        }

        socket?.on("user joined") { (data, ack) in
            guard let dataInfo = data.first else { return }
            if let response: SocketUserJoin = try? SocketParser.convert(data: dataInfo) {
                print("User '\(response.username)' joined...")
                print("Now this chat has \(response.numUsers) users.")
            }
        }

        socket?.on("user left") { (data, ack) in
            guard let dataInfo = data.first else { return }
            if let response: SocketUserLeft = try? SocketParser.convert(data: dataInfo) {
                print("User '\(response.username)' left...")
                print("Now this chat has \(response.numUsers) users.")
            }
        }

        socket?.on("new message") { (data, ack) in
            guard let dataInfo = data.first else { return }
            if let response: SocketMessage = try? SocketParser.convert(data: dataInfo) {
                print("Message from '\(response.username)': \(response.message)")
            }
        }

        socket?.on("typing") { (data, ack) in
            guard let dataInfo = data.first else { return }
            if let response: SocketUserTyping = try? SocketParser.convert(data: dataInfo) {
                print("User \(response.username) is typing...")
            }
        }

        socket?.on("stop typing") { (data, ack) in
            guard let dataInfo = data.first else { return }
            if let response: SocketUserTyping = try? SocketParser.convert(data: dataInfo) {
                print("User \(response.username) stopped typing...")
            }
        }
    }

    // MARK: - Socket Emits

    func register(user: String) {
        socket?.emit("add user", user)
    }

    func send(message: String) {
        socket?.emit("new message", message)
    }

}