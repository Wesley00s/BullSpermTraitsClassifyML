package org.wesley.sperm.traits.classify

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication
import org.springframework.web.bind.annotation.CrossOrigin
import java.io.File

@CrossOrigin(origins = ["*"])
@SpringBootApplication
class SpermTraitsClassifyApplication

fun main(args: Array<String>) {
    runApplication<SpermTraitsClassifyApplication>(*args)
    val pathFrontend = "src/main/react/sperm-bulls-classify-frontend"
    val npmInstallProcess = ProcessBuilder("npm", "install")
        .directory(File(pathFrontend))
        .inheritIO()
        .start()

    npmInstallProcess.waitFor()

    val npmStartProcess = ProcessBuilder("npm", "start")
        .directory(File(pathFrontend))
        .inheritIO()
        .start()

    npmStartProcess.waitFor()
}
