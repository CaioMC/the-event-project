package prot.cortex.my.event.event.controller.eventWSController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import prot.cortex.my.event.event.service.EventService;

@RestController
@RequestMapping("/event-ws")
public class EventWSController {
	
	@Autowired
	private EventService eventService;
}
