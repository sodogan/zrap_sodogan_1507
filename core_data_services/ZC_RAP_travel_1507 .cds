@EndUserText.label: 'Travel BO'
@AccessControl.authorizationCheck: #NOT_REQUIRED
define root view entity  ZC_RAP_travel_1507 
provider contract transactional_query
as projection on zi_rap_travel_1507
{
    key TravelUUID,
    TravelID,
    AgencyID,
    CustomerID,
    BeginDate,
    EndDate,
    BookingFee,
    TotalPrice,
    CurrencyCode,
    Description,
    OverallStatus,
    CreatedBy,
    CreatedAt,
    LastChangedBy,
    LastChangedAt,
    /* Associations */
    _Bookings: redirected to composition child ZC_RAP_booking_1507,
    _Currency
}
