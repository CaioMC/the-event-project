package prot.cortex.my.event.event.controller.ActiveEventWSController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import prot.cortex.my.event.event.service.ActiveEventService;

@RestController
@RequestMapping("/active-event-ws")
public class ActiveEventWSController {
	
	@Autowired
	private ActiveEventService activeEventService;
}
