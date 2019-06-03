package com.tsr.s2movieinfoservice;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;

@SpringBootApplication
@EnableEurekaClient
public class S2MovieInfoServiceApplication {

	public static void main(String[] args) {
		SpringApplication.run(S2MovieInfoServiceApplication.class, args);
	}

}
