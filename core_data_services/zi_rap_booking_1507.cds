@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Booking'
define view entity zi_rap_booking_1507
  as select from zrap_abook_1507
  association        to parent zi_rap_travel_1507 as _Travel   on $projection.TravelUUID = _Travel.TravelUUID
  association [0..1] to I_Currency                as _Currency on $projection.CurrencyCode = _Currency.Currency
{
  key booking_uuid          as BookingUUID,
      travel_uuid           as TravelUUID,
      booking_id            as BookingID,
      booking_date          as BookingDate,
      customer_id           as CustomerID,
      carrier_id            as CarrierID,
      connection_id         as ConnectionID,
      flight_date           as FlightDate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      flight_price          as FlightPrice,
      currency_code         as CurrencyCode,
      created_by            as CreatedBy,
      last_changed_by       as LastChangedBy,
      last_changed_at       as LastChangedAt,
      // Associations
      _Travel,
      _Currency
}
