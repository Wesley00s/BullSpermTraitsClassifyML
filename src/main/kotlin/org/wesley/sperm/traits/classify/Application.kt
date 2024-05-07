package org.wesley.sperm.traits.classify

import io.swagger.v3.oas.annotations.OpenAPIDefinition
import io.swagger.v3.oas.annotations.servers.Server
import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication
import org.springframework.web.bind.annotation.CrossOrigin

@OpenAPIDefinition(servers = [Server(url = "/", description = "Application")])
@CrossOrigin(origins = ["*"])
@SpringBootApplication
class SpermTraitsClassifyApplication

fun main(args: Array<String>) {
    runApplication<SpermTraitsClassifyApplication>(*args)
}
