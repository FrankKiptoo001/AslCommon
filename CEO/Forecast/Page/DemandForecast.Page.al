page 50740 "CEO-Demand Forecast"
{
    ApplicationArea = Planning;
    Caption = 'CEO-Calendar Overview';
    DataCaptionExpression = ProductionForecastName;
    DeleteAllowed = false;
    InsertAllowed = false;
    PageType = ListPlus;
    UsageCategory = ReportsAndAnalysis;

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field(ProductionForecastName; ProductionForecastName)
                {
                    ApplicationArea = Planning;
                    Caption = 'Name';
                    TableRelation = "CEO-Production Forecast Name".Name;
                    ToolTip = 'Specifies the name of the relevant production forecast for which you are creating an entry.';

                    trigger OnValidate()
                    begin
                        SetMatrix;
                    end;
                }
                field(LocationFilter; LocationFilter)
                {
                    ApplicationArea = Planning;
                    Caption = 'Location Filter';
                    ToolTip = 'Specifies a location code if you want to create a plan entry for a specific location.';

                    trigger OnLookup(var Text: Text): Boolean
                    var
                        Loc: Record 14;
                        LocList: Page 15;
                    begin
                        LocList.LOOKUPMODE(TRUE);
                        Loc.SETRANGE("Use As In-Transit", FALSE);
                        LocList.SETTABLEVIEW(Loc);
                        IF NOT (LocList.RUNMODAL = ACTION::LookupOK) THEN
                            EXIT(FALSE);

                        Text := LocList.GetSelectionFilter;

                        EXIT(TRUE);
                    end;

                    trigger OnValidate()
                    var
                        Location: Record 14;
                    begin
                        Location.SETFILTER(Code, LocationFilter);
                        LocationFilter := Location.GETFILTER(Code);
                        SetMatrix;
                    end;
                }
                field(PeriodType; PeriodType)
                {
                    ApplicationArea = Planning;
                    Caption = 'View by';
                    OptionCaption = 'Day,Week,Month,Quarter,Year,Accounting Period';
                    ToolTip = 'Specifies by which period amounts are displayed.';

                    trigger OnValidate()
                    begin
                        SetColumns(SetWanted::First);
                    end;
                }
                /* field(QtyType; QtyType)
                {
                    ApplicationArea = Planning;
                    Caption = 'View as';
                    OptionCaption = 'Net Change,Balance at Date';
                    ToolTip = 'Specifies how amounts are displayed. Net Change: The net change in the balance for the selected period. Balance at Date: The balance as of the last day in the selected period.';

                    trigger OnValidate()
                    begin
                        QtyTypeOnAfterValidate;
                    end;
                }
                field(ForecastType; ForecastType)
                {
                    ApplicationArea = Planning;
                    Caption = 'Calendar Identity Type';
                    OptionCaption = 'Sales Item,Component,Both';
                    ToolTip = 'Specifies one of the following two types when you create a production forecast entry: sales item or component item.';

                    trigger OnValidate()
                    begin
                        ForecastTypeOnAfterValidate;
                    end;
                } */
                field(DateFilter; DateFilter)
                {
                    ApplicationArea = Planning;
                    Caption = 'Date Filter';
                    ToolTip = 'Specifies the dates that will be used to filter';

                    trigger OnValidate()
                    var
                        TextManagement: Codeunit 41;
                    begin
                        TextManagement.MakeDateFilter(DateFilter);
                        SetColumns(SetWanted::First);
                    end;
                }
            }
            part(Matrix; "CEO-Forecast Matrix")
            {
                ApplicationArea = Planning;
            }
        }
    }

    actions
    {
        area(processing)
        {
            /* group("F&unctions")
            {
                Caption = 'F&unctions';
                Image = "Action";
                action("Copy Production Forecast")
                {
                    ApplicationArea = Planning;
                    Caption = 'Copy Production Forecast';
                    Ellipsis = true;
                    Image = CopyForecast;
                    RunObject = Report 99003803;
                    ToolTip = 'Copy an existing production forecast to quickly create a similar forecast.';
                }
            } */
            action("Previous Set")
            {
                ApplicationArea = Planning;
                Caption = 'Previous Set';
                Image = PreviousSet;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                ToolTip = 'Go to the previous set of data.';

                trigger OnAction()
                begin
                    SetColumns(SetWanted::Previous);
                end;
            }
            action("Previous Column")
            {
                ApplicationArea = Planning;
                Caption = 'Previous Column';
                Image = PreviousRecord;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                ToolTip = 'Go to the previous column.';

                trigger OnAction()
                begin
                    SetColumns(SetWanted::PreviousColumn);
                end;
            }
            action("Next Column")
            {
                ApplicationArea = Planning;
                Caption = 'Next Column';
                Image = NextRecord;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                ToolTip = 'Go to the next column.';

                trigger OnAction()
                begin
                    SetColumns(SetWanted::NextColumn);
                end;
            }
            action("Next Set")
            {
                ApplicationArea = Planning;
                Caption = 'Next Set';
                Image = NextSet;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                ToolTip = 'Go to the next set of data.';

                trigger OnAction()
                begin
                    SetColumns(SetWanted::Next);
                end;
            }
        }
    }

    trigger OnOpenPage()
    begin
        IF (NewProductionForecastName <> '') AND (NewProductionForecastName <> ProductionForecastName) THEN
            ProductionForecastName := NewProductionForecastName;
        SetColumns(SetWanted::First);
    end;

    var
        MatrixRecords: array[32] of Record 2000000007;
        PeriodType: Option Day,Week,Month,Quarter,Year,"Accounting Period";
        QtyType: Option "Net Change","Balance at Date";
        ForecastType: Option "Sales Item",Component,Both;
        ProductionForecastName: Text[30];
        NewProductionForecastName: Text[30];
        LocationFilter: Text;
        DateFilter: Text[1024];
        MatrixColumnCaptions: array[32] of Text[1024];
        ColumnSet: Text[1024];
        SetWanted: Option First,Previous,Same,Next,PreviousColumn,NextColumn;
        PKFirstRecInCurrSet: Text[100];
        CurrSetLength: Integer;


    procedure SetColumns(SetWanted: Option Initial,Previous,Same,Next,PreviousSet,NextSet)
    var
        MatrixMgt: Codeunit 9200;
    begin
        // MatrixMgt.GeneratePeriodMatrixData(SetWanted, ARRAYLEN(MatrixRecords), FALSE, PeriodType, DateFilter, PKFirstRecInCurrSet,
        //   MatrixColumnCaptions, ColumnSet, CurrSetLength, MatrixRecords);
        //SetMatrix;
    end;

    procedure SetProductionForecastName(NextProductionForecastName: Text[30])
    begin
        NewProductionForecastName := NextProductionForecastName;
    end;


    procedure SetMatrix()
    begin
        CurrPage.Matrix.PAGE.Load(
          MatrixColumnCaptions, MatrixRecords, ProductionForecastName, DateFilter, LocationFilter, ForecastType,
          QtyType, CurrSetLength);
        CurrPage.UPDATE(FALSE);
    end;

    local procedure ForecastTypeOnAfterValidate()
    begin
        SetMatrix;
    end;

    local procedure QtyTypeOnAfterValidate()
    begin
        SetMatrix;
    end;
}

