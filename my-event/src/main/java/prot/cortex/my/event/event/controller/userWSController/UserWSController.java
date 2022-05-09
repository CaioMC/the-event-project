package prot.cortex.my.event.event.controller.userWSController;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import prot.cortex.my.event.event.infrastructure.ResponseWS;
import prot.cortex.my.event.event.model.UserModel;
import prot.cortex.my.event.event.service.UserService;

@RestController
@RequestMapping("/user-ws")
public class UserWSController {
	
	@Autowired
	private UserService userService;
	
	@PostMapping("/create-user")
	public ResponseWS<Void> createUser(
		@RequestParam(required = false, value = "name") String name,
		@RequestParam(required = false, value = "email") String email,
		@RequestParam(required = false, value = "Id") String id,
		@RequestParam(required = false, value = "pass") String pass,
		@RequestParam(required = false, value = "lastName") String lastName,
		@RequestParam(required = false, value = "cpf") String cpf,
		@RequestParam(required = false, value = "confirmPass") String apiVersion
	) {
		ResponseWS<Void> response = new ResponseWS<Void>();

		//Test
		UserModel userModel = new UserModel();
		userModel.setName(name);
		userModel.setLastName(lastName);
		userModel.setEMAIL(email);
		userModel.setBirthDate(new Date());
		userModel.setPassword(pass);
		
		userService.createNewUser(userModel);
		
		return response;
	}
}
 