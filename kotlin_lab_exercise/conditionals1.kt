fun main(grade:Int) {
    println("enter grade:")
    var grade :Int
    grade=readln().toInt()
    
    if ( grade in 90..100){
        println("A")
    }else if (grade in 80..89){
        println("B")
    }else if (grade in 70..79){
        println("C")
    }else if (grade in 60..69){
        println("D")
    }else if (grade in 0..60){
        println("F")
    }else{
        println("invalid input")
    }
}