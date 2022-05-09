package prot.cortex.my.event.event.service.ipml;

import org.springframework.stereotype.Service;

import prot.cortex.my.event.event.repository.creditPurchaseRepository.CreditPurchaseRepository;
import prot.cortex.my.event.event.service.CreditPurchaseService;

@Service
public class CreditPurchaseServiceImpl implements CreditPurchaseService {
	
	private CreditPurchaseRepository creditPurchaseRepository;
}
