package com.kubegrid.demo;

import java.net.InetAddress;
import java.net.UnknownHostException;

import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMapping;

@RestController
public class HelloController {

    @RequestMapping("/")
    public String index() {
        String ipAddress;
        try {
            ipAddress = InetAddress.getLocalHost().toString();
        } catch (UnknownHostException e) {
            ipAddress = "unknown";
        }
        return "Greetings from Spring Boot (v2)!<br>" + "IP address: " + ipAddress + "\n";
    }

}