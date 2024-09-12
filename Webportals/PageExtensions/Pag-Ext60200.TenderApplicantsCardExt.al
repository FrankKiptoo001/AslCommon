pageextension 60200 "Tender Applicants Card Ext" extends "Tender Applicants Card"
{
    layout
    {
        modify("Certificate of Incoporation")
        {
            trigger OnAssistEdit()
            begin
                //HYPERLINK(Attachment);
                //file://WIN-J27M6NVRVAT/Attachments
                HYPERLINK(ReplaceString(Rec."Certificate of Incoporation", 'C:\inetpub\wwwroot\KNQASupplier\Attachments', 'file://197.136.17.145/Attachments'));
            end;
        }
        modify("Pin Registration Certificate")
        {
            trigger OnAssistEdit()
            begin
                HYPERLINK(ReplaceString(Rec."Pin Registration Certificate", 'C:\inetpub\wwwroot\KNQASupplier\Attachments', 'file://197.136.17.145/Attachments'));
            end;
        }
        modify("VAT Registration Certificate")
        {
            trigger OnAssistEdit()
            begin
                HYPERLINK(ReplaceString(Rec."VAT Registration Certificate", 'C:\inetpub\wwwroot\KNQASupplier\Attachments', 'file://197.136.17.145/Attachments'));
            end;
        }
        modify("Tax Compliance Certificate")
        {
            trigger OnAssistEdit()
            begin
                HYPERLINK(ReplaceString(Rec."Tax Compliance Certificate", 'C:\inetpub\wwwroot\KNQASupplier\Attachments', 'file://197.136.17.145/Attachments'));
            end;
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    local procedure ReplaceString(String: Text; FindWhat: Text; ReplaceWith: Text) NewString: Text
    begin
        WHILE STRPOS(String, FindWhat) > 0 DO
            String := DELSTR(String, STRPOS(String, FindWhat)) + ReplaceWith + COPYSTR(String, STRPOS(String, FindWhat) + STRLEN(FindWhat));
        NewString := String;
    end;

    var
        myInt: Integer;
}
