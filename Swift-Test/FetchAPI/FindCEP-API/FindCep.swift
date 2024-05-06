import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

var semaphore = DispatchSemaphore (value: 0)

var request = URLRequest(url: URL(string: "https://example.api.findcep.com/v1/cep/01234000.json")!,timeoutInterval: Double.infinity)
request.addValue("example.com", forHTTPHeaderField: "Referer")

request.httpMethod = "GET"

let task = URLSession.shared.dataTask(with: request) { data, response, error in 
    guard let data = data else {
    print(String(describing: error))
    semaphore.signal()
    return
}
    print(String(data: data, encoding: .utf8)!)
    semaphore.signal()
}

task.resume()
semaphore.wait()