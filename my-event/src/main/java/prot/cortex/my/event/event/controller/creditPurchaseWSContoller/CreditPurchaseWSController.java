package prot.cortex.my.event.event.controller.creditPurchaseWSContoller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import prot.cortex.my.event.event.service.CreditPurchaseService;

@RestController
@RequestMapping("/credit-purchase-ws")
public class CreditPurchaseWSController {
	
	@Autowired
	private CreditPurchaseService creditPurchaseService;
}
