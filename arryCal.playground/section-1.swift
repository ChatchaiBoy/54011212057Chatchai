// Playground - noun: a place where people can play
class TipCalculator {

    //2
    let total: Double
    let taxPct: Double
    let subtotal: Double
    //3
    init(total:Double, taxPct:Double){
        self.total = total
        self.taxPct = taxPct
        subtotal = total / (taxPct + 1)
    }
    //4
    func calcTipWithTipPct(tipPct:Double) ->Double {
        return subtotal * tipPct
    }
    //1
    func returnPossibleTips() -> [Int: Double]{
        
        let possibleTipsInterferred = [0.15, 0.18, 0.20]
        let possibleTipsExplicit:[Double] = [0.15, 0.18, 0.20]
        var numberOfItems = possibleTipsInterferred.count
    
        var retval = [Int: Double]()
        for possibleTips in possibleTipsInterferred{
            let intPct = Int(possibleTips*100)
        
            retval[intPct] = calcTipWithTipPct(possibleTips)
        }
        return retval
        
    }
}
//6
let tipCalc = TipCalculator(total: 35.25, taxPct: 0.06)
tipCalc.returnPossibleTips()
