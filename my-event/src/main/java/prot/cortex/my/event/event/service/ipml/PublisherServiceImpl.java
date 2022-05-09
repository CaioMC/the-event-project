package prot.cortex.my.event.event.service.ipml;

import org.springframework.stereotype.Service;

import prot.cortex.my.event.event.repository.publisherRepository.PublisherRepository;
import prot.cortex.my.event.event.service.PublisherService;

@Service
public class PublisherServiceImpl implements PublisherService {

	private PublisherRepository publisherRepository;
}
