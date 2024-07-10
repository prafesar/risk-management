using {riskmanagement as rm} from '../db/schema';

@path: 'service/risk'
service RiskService @(requires: 'authenticated-user') {
    entity Risks @(restrict: [
        {
            grant: 'READ',
            to   : 'RiskViewer'
        },
        {
            grant: [
                'READ',
                'WRITE',
                'UPDATE',
                'UPSERT',
                'DELETE'
            ],
            to   : 'RiskManager',
            where: 'createdBy = $user'
        }
    ]) as projection on rm.Risks;

    annotate Risks with @odata.draft.enabled;

    entity Mitigations @(restrict: [
        {
            grant: 'READ',
            to   : 'RiskViewer'
        },
        {
            grant: '*', // Allow everything using wildcard
            to   : 'RiskManager'
        }
    ]) as projection on rm.Mitigations;

    annotate Mitigations with @odata.draft.enabled;

    // BusinessPartner
    @readonly entity BusinessPartners as projection on rm.BusinessPartners;

    entity Items as projection on rm.Items;
    annotate Items with @odata.draft.enabled;

    action addItem (title:String, descr:String, quantity:Integer);
    function getItem (quantity:Integer) returns many Items;

    function getMyData() returns Array of String;
    function getNorthwind() returns Array of String;
}
