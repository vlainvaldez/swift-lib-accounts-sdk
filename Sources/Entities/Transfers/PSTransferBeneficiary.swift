import ObjectMapper

public class PSTransferBeneficiary: Mappable {
    public var name: String?
    public var type: String!
    public var beneficiaryPayseraAccount: PSTransferBeneficiaryPayseraAccount?
    public var beneficiaryBankAccount: PSTransferBeneficiaryBankAccount?
    public var beneficiaryTaxAccount: PSTransferBeneficiaryTaxAccount?
    public var beneficiaryWebmoneyAccount: PSTransferBeneficiaryWebmoneyAccount?
    public var beneficiaryIdentifiers: PSTransferBeneficiaryIdentifiers?

    public init() {}
    
    required public init?(map: Map) {
    }

    public func mapping(map: Map) {
        name                        <- map["name"]
        type                        <- map["type"]
        beneficiaryPayseraAccount   <- map["paysera_account"]
        beneficiaryBankAccount      <- map["bank_account"]
        beneficiaryTaxAccount       <- map["tax_account"]
        beneficiaryWebmoneyAccount  <- map["webmoney_account"]
        beneficiaryIdentifiers      <- map["identifiers"]
    }

    public func isBankAccount() -> Bool {
        return beneficiaryBankAccount != nil
    }

    public func isWebmoneyAccount() -> Bool {
        return beneficiaryWebmoneyAccount != nil
    }

    public func isTaxAccount() -> Bool {
        return beneficiaryTaxAccount != nil
    }

    public func isPayseraAccount() -> Bool {
        return beneficiaryPayseraAccount != nil
    }
}

public class PSTransferBeneficiaryTaxAccount: Mappable {
    public var identifier: String?

    public init() {}
    
    required public init?(map: Map) {
    }

    public func mapping(map: Map) {
        identifier <- map["identifier"]
    }
}

public class PSTransferBeneficiaryBankAccount: Mappable {
    public var iban: String?
    public var bic: String?
    public var bankTitle: String?
    public var sortCode: String?
    public var accountNumber: String?
    public var countryCode: String?

    public init() {}
    
    required public init?(map: Map) {
    }

    public func mapping(map: Map) {
        iban            <- map["iban"]
        bic             <- map["bic"]
        bankTitle       <- map["bank_title"]
        sortCode        <- map["sort_code"]
        accountNumber   <- map["account_number"]
        countryCode     <- map["country_code"]
    }
}

public class PSTransferBeneficiaryPayseraAccount: Mappable {
    public var phone: String?
    public var email: String?
    public var accountNumber: String?
    public var userId: Int!
    
    public init() {}
    
    required public init?(map: Map) {
    }
    
    public func mapping(map: Map) {
        userId          <- map["user_id"]
        phone           <- map["phone"]
        email           <- map["email"]
        accountNumber   <- map["account_number"]
    }
}

public class PSTransferBeneficiaryWebmoneyAccount: Mappable {
    public var purse: String?

    public init() {}
    
    required public init?(map: Map) {
    }

    public func mapping(map: Map) {
        purse <- map["purse"]
    }
}

public class PSTransferBeneficiaryIdentifiers: Mappable {
    public var general: String?

    public init() {}
    
    required public init?(map: Map) {
    }

    public func mapping(map: Map) {
        general <- map["general"]
    }
}
