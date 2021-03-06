CREATE SCHEMA IF NOT EXISTS jstl DEFAULT CHARACTER SET utf8 ;
USE jstl ;

-- -----------------------------------------------------
-- Table `mydb`.`loginProva`
-- ----------------------------------------------------
CREATE TABLE loginProva (
  `cd_log` INT NOT NULL AUTO_INCREMENT,
  `usuario` VARCHAR(45) NOT NULL,
  `senha` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`cd_log`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`conteudoProva`
-- -----------------------------------------------------
CREATE TABLE conteudoProva (
  `cd_cont` INT NOT NULL AUTO_INCREMENT,
  `hashcode` VARCHAR(32) NOT NULL,
  `questoesProva` LONGTEXT NOT NULL,
  `dataHora` VARCHAR(20) NOT NULL,
  `comentarios` LONGTEXT,
  `img` BLOB,
  PRIMARY KEY (`cd_cont`))
ENGINE = InnoDB;


insert into loginprova (usuario, senha) values ("Danton", "123");
insert into loginprova (usuario, senha) values ("Hericles", "123");
insert into loginprova (usuario, senha) values ("Leonardo", "123");
insert into loginprova (usuario, senha) values ("Eduardo", "123");
