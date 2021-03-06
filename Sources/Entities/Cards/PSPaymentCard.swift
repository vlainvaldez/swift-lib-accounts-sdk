import ObjectMapper
import PayseraCommonSDK

public class PSPaymentCard: Mappable {
    public var id: Int
    public var cardOwnerId: Int
    public var accountOwnerId: Int?
    public var nameOnCard: String?
    public var maskedNumber: String?
    public var accountNumber: String?
    public var chargeInfo: PSChargeInfo?
    public var shippingAddress: PSPaymentCardShippingAddress?
    public var status: String?
    public var expirationDate: Date?
    public var orderDate: Date?
    public var shippingDate: Date?
    public var main: Bool?
    public var deliveryType: String?
    public var deliveryPrice: PSMoney?
    public var account: PSAccount?
    public var visualType: String?
    
    required public init?(map: Map) {
        do {
            id = try map.value("id")
            cardOwnerId = try map.value("card_owner_id")
        } catch {
            print(error)
            return nil
        }
    }
    
    public func mapping(map: Map) {
        id              <- map["id"]
        cardOwnerId     <- map["card_owner_id"]
        accountOwnerId  <- map["account_owner_id"]
        nameOnCard      <- map["name_on_card"]
        maskedNumber    <- map["masked_number"]
        accountNumber   <- map["account_number"]
        chargeInfo      <- map["charge_info"]
        shippingAddress <- map["shipping_address"]
        status          <- map["status"]
        expirationDate  <- (map["expiration_date"], CustomDateFormatTransform(formatString: "yyyy-MM-dd"))
        orderDate       <- (map["order_date"], CustomDateFormatTransform(formatString: "yyyy-MM-dd"))
        shippingDate    <- (map["shipping_date"], CustomDateFormatTransform(formatString: "yyyy-MM-dd"))
        main            <- map["main"]
        deliveryType    <- map["delivery_type"]
        deliveryPrice   <- map["delivery_price_amount"]
        account         <- map["account"]
        visualType      <- map["visual_type"]
    }
}
