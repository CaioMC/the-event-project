package prot.cortex.my.event.event.controller.publisherWSController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import prot.cortex.my.event.event.service.PublisherService;

@RestController
@RequestMapping("/publisher-ws")
public class PublisherWSController {
	
	@Autowired
	private PublisherService publisherService;
}
