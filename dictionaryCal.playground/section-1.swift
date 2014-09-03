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
        let possibleTipsInferred = [0.15, 0.18, 0.20]
        let possibleTipsExplicit:[Double] = [0.15, 0.18 ,0.20]
        
        var retval = Dictionary<Int, Double>()
        for possibleTip in possibleTipsInferred{
            let intPct = Int(possibleTip*100)
            
            retval[intPct] = calcTipWithTipPct(possibleTip)
        }
        return retval
    }
}