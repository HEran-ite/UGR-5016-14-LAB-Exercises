fun main(grade:Int) {
    println("enter price:")
    var price :Double
    price=readln().toDouble()
    println("enter discount [0,1]:")
    var discount :Double
    discount =readln().toDouble()
    var finalPrice:Double
    finalPrice = price - (discount*price)
    
    if (discount in 0.0..0.5){
        println("original price : ${price} , discount:${price*discount} , final price : $finalPrice}")
    
    }else{
        println(" discount is too high")
    }
}