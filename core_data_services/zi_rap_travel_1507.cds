@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Travel Root entity'
define root view entity zi_rap_travel_1507 
as select from zrap_atrav_1507
association [0..1] to I_Currency as _Currency on $projection.CurrencyCode = _Currency.Currency
composition [0..*] of zi_rap_booking_1507 as _Bookings 
{
    key travel_uuid as TravelUUID,
    travel_id as TravelID,
    agency_id as AgencyID,
    customer_id as CustomerID,
    begin_date as BeginDate,
    end_date as EndDate,
  @Semantics.amount.currencyCode : 'CurrencyCode'    
    booking_fee as BookingFee,
  @Semantics.amount.currencyCode : 'CurrencyCode'      
    total_price as TotalPrice,
    currency_code as CurrencyCode,
    description as Description,
    overall_status as OverallStatus,
    created_by as CreatedBy,
    created_at as CreatedAt,
    last_changed_by as LastChangedBy,
    last_changed_at as LastChangedAt,
// Associations   
    _Currency,
    _Bookings
}
