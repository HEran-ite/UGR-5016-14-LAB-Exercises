import kotlin.random.Random

fun generateRandomPassword(length: Int): String {
    val charPool: List<Char> = ('a'..'z') + ('A'..'Z') + ('0'..'9') + listOf('!', '@', '#', '$', '%', '^', '&', '*', '_', '-')

    return (1..length)
        .map { Random.nextInt(0, charPool.size) }
        .map(charPool::get)
        .joinToString("")
}

fun main() {
    var passwordLength : Int
    println("enter the length of the password :")
    passwordLength= readln().toInt()
    val password = generateRandomPassword(passwordLength)
    println("Generated password: $password")
}
