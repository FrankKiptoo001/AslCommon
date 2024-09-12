/* page 68164 "REG-Outgoing Mail Reg. Card"
{
    PageType = Card;
    SourceTable = 61030;
    SourceTableView = WHERE ("Direction Type"=FILTER('Outgoing Mail (External)'));

    layout
    {
        area(content)
        {
            group(General)
            {
                field(No;No)
                {
                }
                field("Subject of Doc.";"Subject of Doc.")
                {
                }
                field("Mail Date";"Mail Date")
                {
                }
                field(Addressee;Addressee)
                {
                }
                field("mail Time";"mail Time")
                {
                }
                field(Receiver;Receiver)
                {
                }
                field("Addresee Type";"Addresee Type")
                {
                }
                field(Comments;Comments)
                {
                }
                field("Doc type";"Doc type")
                {
                }
                field("Cheque Amount";"Cheque Amount")
                {
                }
                field("Direction Type";"Direction Type")
                {
                    OptionCaption = 'Outgoing Mail (Internal),Outgoing Mail (External)';
                }
                field("Folio Number";"Folio Number")
                {
                }
                field(Received;Received)
                {
                }
                field(Dispatched;Dispatched)
                {
                }
                field("Dispatched by";"Dispatched by")
                {
                }
                field("stamp cost";"stamp cost")
                {
                }
                field(Email;Email)
                {
                }
                field("Doc Ref No.";"Doc Ref No.")
                {
                }
                field("File Tab";"File Tab")
                {
                }
                field("Folio No";"Folio No")
                {
                }
                field("Person Recording";"Person Recording")
                {
                }
            }
        }
    }

    actions
    {
    }
}

 */