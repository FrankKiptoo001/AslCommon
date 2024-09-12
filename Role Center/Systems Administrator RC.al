page 50721 "Systems Administrator RC"
{
    PageType = RoleCenter;
    layout
    {
        area(rolecenter)
        {
            part(ApprovalsActivities; "Approvals Activities")
            {
                ApplicationArea = Suite;
            }

            /* part("Approvals1"; "Approvals Activities Initial")
            {
                ApplicationArea = Suite;
            }
            part("Approvals2"; "Approvals Activities One")
            {
                ApplicationArea = Suite;
            }
            part("Approvals3"; "Approvals Activities Two")
            {
                ApplicationArea = Suite;


            }
            part("Approvals4"; "Approvals Activities Three")
            {
                ApplicationArea = Suite;

            }
            part("Approvals5"; "Approvals Activities Four")
            {
                ApplicationArea = Suite;

            }
            part("Approvals6"; "Approvals Activities Five")
            {
                ApplicationArea = Suite;

            }
            part("Approvals7"; "Approvals Activities six")
            {
                ApplicationArea = Suite;
            }
            part("Approvals8"; "Approvals Activities seven")
            {
                ApplicationArea = Suite;
            }
            part("Approvals9"; "Approvals Activities Eight")
            {
                ApplicationArea = Suite;
            }
            part("Approvals10"; "Approvals Activities Nine")
            {
                ApplicationArea = Suite;
            }
            part("Approvals11"; "Approvals Activities Ten")
            {
                ApplicationArea = Suite;
            } */
        }
    }

    actions
    {
        area(embedding)
        {
            action("User Groups")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'User Groups';
                RunObject = Page "User Groups";
                ToolTip = 'Define user groups so that you can assign permission sets to multiple users easily. You can use a function to copy all permission sets from an existing user group to your new user group.';
            }
            action(Users)
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Users';
                RunObject = Page Users;
                ToolTip = 'Set up the database users and assign their permission sets to define which database objects, and thereby which UI elements, they have access to, and in which companies. You can add users to user groups to make it easier to assign the same permission sets to multiple users. In the User Setup window, administrators can define periods of time during which specified users are able to post, and also specify if the system logs when users are logged on.';
            }
            action("User Review Log")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'User Review Log';
                RunObject = Page "Activity Log";
                RunPageView = WHERE("Table No Filter" = FILTER(9062));
                ToolTip = 'Monitor users'' activities in the database by reviewing changes that are made to data in tables that you select to track. Change log entries are chronologically ordered and show changes that are made to the fields on the specified tables. ';
            }
            action("Permission Sets")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Permission Sets';
                RunObject = Page "Permission Sets";
                ToolTip = 'Define collections of permissions each representing different access rights to certain database objects, and review which permission sets are assigned to users of the database to enable them to perform their tasks in the user interface. Users are assigned permission sets according to the Office 365 subscription plan.';
            }
            action(Plans)
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Plans';
                RunObject = Page Plans;
                RunPageMode = View;
                ToolTip = 'View the details of your Office 365 subscription, including your different user profiles and their assigned licenses, such as the Team Member license. Note that users are created in Office 365 and then imported into Business Central with the Get Users from Office 365 action.';
            }
        }
        area(sections)
        {
            group("User Management")
            {
                Caption = 'User Management';
                action(Action30)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Users';

                    RunObject = Page Users;
                    ToolTip = 'View or edit users that will be configured in the database.';
                }
                action(Action31)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'User Setup';

                    RunObject = Page "User Setup";

                }
                action(Action32)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'User Settings';
                    RunObject = Page "User Settings";
                }

            }
            group("Approval Settings")
            {
                action(Action33)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Approval User setup';

                    RunObject = Page "Approval User Setup";

                }
                action(Action34)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Approval Groups';

                    RunObject = Page "Workflow User Group";

                }
            }
            group("Staff portal")
            {
                action(Action35)
                {
                    ApplicationArea = All;
                    Caption = 'Portal Access';
                    RunObject = Page "HRM-Employee List";
                }
            }

            group("Change Logs")
            {

                action("Page Change Log Entries")
                {
                    ApplicationArea = All;
                    Caption = 'Change Log Entries';
                    RunObject = Page "Change Log Entries";
                    ToolTip = 'View the log with all the changes in your system';
                }
            }

        }
    }
}

