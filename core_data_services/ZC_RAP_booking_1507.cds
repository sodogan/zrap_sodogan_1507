@EndUserText.label: 'Booking'
@AccessControl.authorizationCheck: #NOT_REQUIRED
define view entity ZC_RAP_booking_1507 
as projection on zi_rap_booking_1507 
{
    key BookingUUID,
    TravelUUID,
    BookingID,
    BookingDate,
    CustomerID,
    CarrierID,
    ConnectionID,
    FlightDate,
    FlightPrice,
    CurrencyCode,
    CreatedBy,
    LastChangedBy,
    LastChangedAt,
    /* Associations */
    _Currency,
    _Travel: redirected to parent ZC_RAP_travel_1507 
}
