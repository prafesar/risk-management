using { my.northwind as northwind} from '../db/northwind.cds';

service NorthwindService {
    @readonly
    entity Products as projection on northwind.Products{
         key ProductID, ProductName
    }

    function getNorthwind() returns Array of String;

}