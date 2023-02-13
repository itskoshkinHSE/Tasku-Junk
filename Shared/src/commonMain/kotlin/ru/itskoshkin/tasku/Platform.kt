package ru.itskoshkin.tasku

interface Platform {
    val name: String
}

expect fun getPlatform(): Platform