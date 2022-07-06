public with sharing class CalculatorCallout {
    public static Double addition(Double num1, Double num2) {
        CalculatorServices.calculatorImplPort calc = new CalculatorServices.calculatorImplPort();
        return calc.doAdd(num1, num2);
    }
    public static Double subtraction(Double num1, Double num2){
        calculatorServices.CalculatorImplPort calc = new calculatorServices.CalculatorImplPort();
        return calc.doSubtract(num1, num2);
    }
    public static Double multiplication(Double num1, double num2){
        calculatorServices.CalculatorImplPort calc = new calculatorServices.CalculatorImplPort();
        return calc.doMultiply(num1, num2);
    }
    public static Double divide(Double num1, double num2){
        calculatorServices.CalculatorImplPort calc = new calculatorServices.CalculatorImplPort();
        return calc.doDivide(num1, num2);
}
}