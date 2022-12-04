CREATE TABLE `data_platform_house_bank_house_bank_data`
(
  `BusinessPartner`                 int(12) NOT NULL,
  `HouseBank`                       varchar(5) NOT NULL,
  `HouseBankAccount`                varchar(5) NOT NULL,
  `FinInstCountry`                  varchar(3) NOT NULL, 
  `FinInstCode`                     varchar(10) NOT NULL,
  `FinInstBranchCode`               varchar(10) NOT NULL,
  `FinInstFullCode`                 varchar(15) NOT NULL,
  `FinInstSWIFTCode`                varchar(11) DEFAULT NULL,
  `InternalFinInstCustomerID`       int(12) NOT NULL,
  `InternalFinInstAccountID`        int(12) NOT NULL,
  `FinInstControlKey`               varchar(2) NOT NULL,
  `FinInstAccount`                  varchar(18) NOT NULL,
  `FinInstAccountName`              varchar(40) NOT NULL,
  `FinInstName`                     varchar(100) NOT NULL,
  `FinInstBranchName`               varchar(100) NOT NULL,

    PRIMARY KEY (`BusinessPartner`, `HouseBank`, `HouseBankAccount`),

    CONSTRAINT `DataPlatformHouseBankHouseBankDataBusinessPartner_fk` FOREIGN KEY (`BusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DataPlatformHouseBankHouseBankDataFinInstAccount_fk` FOREIGN KEY (`FinInstCountry`, `FinInstCode`, `FinInstBranchCode`, `FinInstFullCode`, `InternalFinInstCustomerID`, `InternalFinInstAccountID`) REFERENCES `data_platform_fin_inst_acccount_item_data` (`FinInstCountry`, `FinInstCode`, `FinInstBranchCode`, `FinInstFullCode`, `InternalFinInstCustomerID`, `InternalFinInstAccountID`)

) ENGINE = InnoDB
DEFAULT CHARSET = utf8mb4;
