--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
-- 
-- By agreeing to this license you and any business entity you represent are
-- legally bound to the AllBinary Open License Version 1 legal agreement.
-- 
-- You may obtain the AllBinary Open License Version 1 legal agreement from
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository.
-- 
-- Created By: Travis Berthelot
--  
--  Generated Code Do Not Modify


package body org.allbinary.business.user.role.BasicUserRoleFactory_Package is

   procedure Initialize_Fields (This : in out BasicUserRoleFactory'Class) is
   begin
      null;
      This.INACTIVITYTIMEOUT := 360000000;
      This.CUSTOMERTIMEOUT := 360000000;
      This.CUSTOMERMAXSESSIONTIME := 360000000;
      This.MAXSESSIONTIME := 360000000;
      This.INSTALLER := BasicUserRole_Package.Create (To_Unbounded_String ("Installer"), 16, This.MAXSESSIONTIME, This.INACTIVITYTIMEOUT);
      This.ADMINISTRATOR := BasicUserRole_Package.Create (To_Unbounded_String ("Administrator"), 0, This.MAXSESSIONTIME, This.INACTIVITYTIMEOUT);
      This.CUSTOMER := BasicUserRole_Package.Create (To_Unbounded_String ("CustomerUser"), To_Unbounded_String ("Customer User"), 1, This.CUSTOMERTIMEOUT, This.CUSTOMERMAXSESSIONTIME);
      This.SUBSCRIBERCUSTOMER := BasicUserRole_Package.Create (To_Unbounded_String ("SubscriberUser"), To_Unbounded_String ("Subscriber User"), 2, This.CUSTOMERTIMEOUT, This.CUSTOMERMAXSESSIONTIME);
      This.WHOLESALECUSTOMER := BasicUserRole_Package.Create (To_Unbounded_String ("WholesaleUser"), To_Unbounded_String ("Wholesale User"), 3, This.CUSTOMERTIMEOUT, This.CUSTOMERMAXSESSIONTIME);
      This.STOREMANAGER := BasicUserRole_Package.Create (To_Unbounded_String ("StoreManager"), To_Unbounded_String ("Store Manager"), 4, This.MAXSESSIONTIME, This.INACTIVITYTIMEOUT);
      This.PRODUCTMANAGER := BasicUserRole_Package.Create (To_Unbounded_String ("ProductManager"), To_Unbounded_String ("Product Manager"), 5, This.MAXSESSIONTIME, This.INACTIVITYTIMEOUT);
      This.CUSTOMERMANAGER := BasicUserRole_Package.Create (To_Unbounded_String ("UserManager"), To_Unbounded_String ("User Manager"), 6, This.MAXSESSIONTIME, This.INACTIVITYTIMEOUT);
      This.PAYMENTMANAGER := BasicUserRole_Package.Create (To_Unbounded_String ("PaymentManager"), To_Unbounded_String ("Payment Manager"), 7, This.MAXSESSIONTIME, This.INACTIVITYTIMEOUT);
      This.ORDERMANAGER := BasicUserRole_Package.Create (To_Unbounded_String ("OrderManager"), To_Unbounded_String ("Order Manager"), 8, This.MAXSESSIONTIME, This.INACTIVITYTIMEOUT);
      This.WEBMANAGER := BasicUserRole_Package.Create (To_Unbounded_String ("WebManager"), To_Unbounded_String ("Web Manager"), 9, This.MAXSESSIONTIME, This.INACTIVITYTIMEOUT);
      This.REVIEWER := BasicUserRole_Package.Create (To_Unbounded_String ("Reviewer"), 10, This.MAXSESSIONTIME, This.INACTIVITYTIMEOUT);
      This.SHIPPING := BasicUserRole_Package.Create (To_Unbounded_String ("Shipping"), 11, This.MAXSESSIONTIME, This.INACTIVITYTIMEOUT);
      This.ADJUSTER := BasicUserRole_Package.Create (To_Unbounded_String ("Adjuster"), 12, This.MAXSESSIONTIME, This.INACTIVITYTIMEOUT);
      This.WORKFLOWEDITOR := BasicUserRole_Package.Create (To_Unbounded_String ("WorkFlowEditor"), To_Unbounded_String ("WorkFlow Editor"), 13, This.MAXSESSIONTIME, This.INACTIVITYTIMEOUT);
      This.WIZARD := BasicUserRole_Package.Create (To_Unbounded_String ("WizardUser"), To_Unbounded_String ("Wizard User"), 14, This.MAXSESSIONTIME, This.INACTIVITYTIMEOUT);
      This.VIEWEDITOR := BasicUserRole_Package.Create (To_Unbounded_String ("ViewEditor"), To_Unbounded_String ("View Editor"), 15, This.MAXSESSIONTIME, This.INACTIVITYTIMEOUT);
   end Initialize_Fields;

   procedure Initialize (This : in out BasicUserRoleFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return BasicUserRoleFactory_Access is
      This : constant BasicUserRoleFactory_Access := new BasicUserRoleFactory;
   begin
      BasicUserRoleFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return BasicUserRoleFactory_Access is
   begin
        return BasicUserRoleFactory_Package.instance;
   end getInstance;

begin
   null;
   instance := BasicUserRoleFactory_Package.Create;

end org.allbinary.business.user.role.BasicUserRoleFactory_Package;


