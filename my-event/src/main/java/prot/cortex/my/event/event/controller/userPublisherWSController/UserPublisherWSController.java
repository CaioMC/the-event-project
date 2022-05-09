package prot.cortex.my.event.event.controller.userPublisherWSController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import prot.cortex.my.event.event.service.UserPublisherService;

@RestController
@RequestMapping("/user-publisher-ws")
public class UserPublisherWSController {
	
	@Autowired
	private UserPublisherService userPublisherService;
	
}
