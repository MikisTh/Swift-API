import UIKit
import Charts

class ViewController: UIViewController {

    var lineChartView: LineChartView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Inicializa o gráfico
        lineChartView = LineChartView()
        lineChartView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height / 2)
        lineChartView.center = view.center
        view.addSubview(lineChartView)

        // Dados do gráfico
        let dataEntries = generateDataEntries()
        let lineChartDataSet = LineChartDataSet(entries: dataEntries, label: "Exemplo de Dados")
        let lineChartData = LineChartData(dataSet: lineChartDataSet)

        // Configurações adicionais (opcional)
        lineChartDataSet.colors = [NSUIColor.blue]
        lineChartDataSet.circleColors = [NSUIColor.red]

        // Atribui os dados ao gráfico
        lineChartView.data = lineChartData
    }

    func generateDataEntries() -> [ChartDataEntry] {
        var dataEntries: [ChartDataEntry] = []
        for i in 0..<10 {
            let value = Double(arc4random_uniform(100))
            let dataEntry = ChartDataEntry(x: Double(i), y: value)
            dataEntries.append(dataEntry)
        }
        return dataEntries
    }
}