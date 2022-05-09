package prot.cortex.my.event.event.controller.userEventWSController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import prot.cortex.my.event.event.service.UserEventService;

@RestController
@RequestMapping("/user-event-ws")
public class UserEventWSController {
	
	@Autowired
	private UserEventService userEvetnService;
}
