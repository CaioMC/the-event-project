# Sobre My-Event

 - Trata-se de um projeto de servidor para atender as necessidades do APP MyEvent.

### Arquitura e Recursos

 - MVC adaptada (Service, Model, repository, entity, Controller)
 - JWT (JSON Web Token)
 - Spring Security
 - Spring JPA/HIBERNATE
 - Sping WEB 
 
### Para começar

 - Build o projeto com este comando dentro da pasta raiz 
 
	mvn clean package install

 - Após o build, basta executar o comando abaixo para subir o projeto em um tomcat spring da
   aplicação. Lembrando que este projeto pode ser executado em um Tomcat externo.

	mvn spring-boot:run

### Banco em memória H2	

 - H2 é um sistema de gerenciamento de banco de dados relacional escrito em Java. Ele pode ser   	incorporado em aplicativos Java ou executado no modo cliente-servidor. 
 - Para acessar o banco deste projeto, link logo abaixo. 
 - Em caso de utilização de Tomcat externo, deve ser removido o "my-event" do path da URL

	http://localhost:8080/my-event/h2-console/
    
 - user: sa
 - password: password
  
	