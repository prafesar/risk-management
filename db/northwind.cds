namespace my.northwind;

using { northwind } from '../srv/external/API_NORTH_WIND.csn';

entity Products as projection on northwind.Products {
    *
}
