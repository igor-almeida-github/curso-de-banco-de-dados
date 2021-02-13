-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema n_farmacia_mysql_64
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema n_farmacia_mysql_64
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `n_farmacia_mysql_64` DEFAULT CHARACTER SET utf8 ;
USE `n_farmacia_mysql_64` ;

-- -----------------------------------------------------
-- Table `n_farmacia_mysql_64`.`tipos_produtos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `n_farmacia_mysql_64`.`tipos_produtos` ;

CREATE TABLE IF NOT EXISTS `n_farmacia_mysql_64`.`tipos_produtos` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `tipo` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `n_farmacia_mysql_64`.`fabricantes`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `n_farmacia_mysql_64`.`fabricantes` ;

CREATE TABLE IF NOT EXISTS `n_farmacia_mysql_64`.`fabricantes` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `fabricante` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `n_farmacia_mysql_64`.`produtos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `n_farmacia_mysql_64`.`produtos` ;

CREATE TABLE IF NOT EXISTS `n_farmacia_mysql_64`.`produtos` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `produto` VARCHAR(45) NOT NULL,
  `designacao` VARCHAR(200) NOT NULL,
  `composicao` VARCHAR(200) NOT NULL,
  `preco_de_venda` DECIMAL(8,2) NOT NULL,
  `id_tipo_produto` INT NOT NULL,
  `id_fabricante` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_produtos_1_idx` (`id_tipo_produto` ASC) VISIBLE,
  INDEX `fk_produtos_2_idx` (`id_fabricante` ASC) VISIBLE,
  CONSTRAINT `fk_produtos_1`
    FOREIGN KEY (`id_tipo_produto`)
    REFERENCES `n_farmacia_mysql_64`.`tipos_produtos` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_produtos_2`
    FOREIGN KEY (`id_fabricante`)
    REFERENCES `n_farmacia_mysql_64`.`fabricantes` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `n_farmacia_mysql_64`.`clientes`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `n_farmacia_mysql_64`.`clientes` ;

CREATE TABLE IF NOT EXISTS `n_farmacia_mysql_64`.`clientes` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(100) NOT NULL,
  `endereco` VARCHAR(200) NOT NULL,
  `telefone` VARCHAR(20) NOT NULL,
  `cep` VARCHAR(15) NOT NULL,
  `localidade` VARCHAR(45) NOT NULL,
  `cpf` VARCHAR(15) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `n_farmacia_mysql_64`.`compras`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `n_farmacia_mysql_64`.`compras` ;

CREATE TABLE IF NOT EXISTS `n_farmacia_mysql_64`.`compras` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `id_cliente` INT NOT NULL,
  `data` DATE NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_compras_1_idx` (`id_cliente` ASC) VISIBLE,
  CONSTRAINT `fk_compras_1`
    FOREIGN KEY (`id_cliente`)
    REFERENCES `n_farmacia_mysql_64`.`clientes` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `n_farmacia_mysql_64`.`produtos_compra`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `n_farmacia_mysql_64`.`produtos_compra` ;

CREATE TABLE IF NOT EXISTS `n_farmacia_mysql_64`.`produtos_compra` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `id_compra` INT NOT NULL,
  `id_produto` INT NOT NULL,
  `quantidade` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_produtos_compra_1_idx` (`id_compra` ASC) VISIBLE,
  INDEX `fk_produtos_compra_1_idx1` (`id_produto` ASC) VISIBLE,
  CONSTRAINT `fk_produtos_compra_1`
    FOREIGN KEY (`id_produto`)
    REFERENCES `n_farmacia_mysql_64`.`produtos` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_produtos_compra_2`
    FOREIGN KEY (`id_compra`)
    REFERENCES `n_farmacia_mysql_64`.`compras` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `n_farmacia_mysql_64`.`medicos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `n_farmacia_mysql_64`.`medicos` ;

CREATE TABLE IF NOT EXISTS `n_farmacia_mysql_64`.`medicos` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(100) NOT NULL,
  `crm` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `n_farmacia_mysql_64`.`receitas_medicas`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `n_farmacia_mysql_64`.`receitas_medicas` ;

CREATE TABLE IF NOT EXISTS `n_farmacia_mysql_64`.`receitas_medicas` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `id_produto_compra` INT NOT NULL,
  `id_medico` INT NOT NULL,
  `receita` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_receitas_medicas_idx` (`id_produto_compra` ASC) VISIBLE,
  INDEX `fk_receitas_medicas_2_idx` (`id_medico` ASC) VISIBLE,
  CONSTRAINT `fk_receitas_medicas_1`
    FOREIGN KEY (`id_produto_compra`)
    REFERENCES `n_farmacia_mysql_64`.`produtos_compra` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_receitas_medicas_2`
    FOREIGN KEY (`id_medico`)
    REFERENCES `n_farmacia_mysql_64`.`medicos` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
