package com.autentia;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


/**
 * Microservicio que devuelve la dirección IP desde la que se lanza la petición
 */
@RestController
public class MicroServiceController {


    private final AddressService service;

    @Autowired
    public MicroServiceController(AddressService service) {
        this.service = service;
    }

    @RequestMapping(value = "/micro-service")
    public String hello() throws Exception {

        String serverAddress = service.getServerAddress();
        return new StringBuilder().append("Hello from IP address:  -  ¿Funciona?").append(serverAddress).append("\n").toString();
    }


}
