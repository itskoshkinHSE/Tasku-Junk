plugins {
    //trick: for the same plugin versions in all sub-modules
    id("com.android.application").version("7.3.0").apply(false) //Changed from "7.4.1" for compatibility with Windows-version of Android Studio as of 14th Feb 2023
    id("com.android.library").version("7.3.0").apply(false) //Changed from "7.4.1" for compatibility with Windows-version of Android Studio as of 14th Feb 2023
    kotlin("android").version("1.8.0").apply(false)
    kotlin("multiplatform").version("1.8.0").apply(false)
}

tasks.register("clean", Delete::class) {
    delete(rootProject.buildDir)
}
