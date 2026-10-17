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


package body org.allbinary.business.user.role.UserRoleFactory_Package is

   procedure Initialize_Fields (This : in out UserRoleFactory'Class) is
   begin
      null;
      This.basicUserRoleFactory := BasicUserRoleFactory_Package.getInstance;
      This.INSTALLER := UserRoleB_Package.Create (This.basicUserRoleFactory.INSTALLER, null);
      This.ADMINISTRATOR := UserRoleB_Package.Create (This.basicUserRoleFactory.ADMINISTRATOR, AdminUserFactory_Package.Create);
      This.CUSTOMER := UserRoleB_Package.Create (This.basicUserRoleFactory.CUSTOMER, UserFactory_Package.Create);
      This.SUBSCRIBERCUSTOMER := UserRoleB_Package.Create (This.basicUserRoleFactory.SUBSCRIBERCUSTOMER, SubscriberUserFactory_Package.Create);
      This.WHOLESALECUSTOMER := UserRoleB_Package.Create (This.basicUserRoleFactory.WHOLESALECUSTOMER, WholesaleUserFactory_Package.Create);
      This.STOREMANAGER := UserRoleB_Package.Create (This.basicUserRoleFactory.STOREMANAGER, StoreAdminUserFactory_Package.Create);
      This.PRODUCTMANAGER := UserRoleB_Package.Create (This.basicUserRoleFactory.PRODUCTMANAGER, ProductStoreAdminUserFactory_Package.Create);
      This.CUSTOMERMANAGER := UserRoleB_Package.Create (This.basicUserRoleFactory.CUSTOMERMANAGER, CustomerStoreAdminUserFactory_Package.Create);
      This.PAYMENTMANAGER := UserRoleB_Package.Create (This.basicUserRoleFactory.PAYMENTMANAGER, PaymentStoreAdminUserFactory_Package.Create);
      This.ORDERMANAGER := UserRoleB_Package.Create (This.basicUserRoleFactory.ORDERMANAGER, OrderStoreAdminUserFactory_Package.Create);
      This.WEBMANAGER := UserRoleB_Package.Create (This.basicUserRoleFactory.WEBMANAGER, WebStoreAdminUserFactory_Package.Create);
      This.REVIEWER := UserRoleB_Package.Create (This.basicUserRoleFactory.REVIEWER, ReviewOrderStoreAdminUserFactory_Package.Create);
      This.SHIPPING := UserRoleB_Package.Create (This.basicUserRoleFactory.SHIPPING, ShipOrderStoreAdminUserFactory_Package.Create);
      This.ADJUSTER := UserRoleB_Package.Create (This.basicUserRoleFactory.ADJUSTER, AdjustOrderStoreAdminUserFactory_Package.Create);
      This.WORKFLOWEDITOR := UserRoleB_Package.Create (This.basicUserRoleFactory.WORKFLOWEDITOR, WorkflowEditorWebStoreAdminUserFactory_Package.Create);
      This.WIZARD := UserRoleB_Package.Create (This.basicUserRoleFactory.WIZARD, WizardWebStoreAdminUserFactory_Package.Create);
      This.VIEWEDITOR := UserRoleB_Package.Create (This.basicUserRoleFactory.VIEWEDITOR, ViewEditorWebStoreAdminUserFactory_Package.Create);
   end Initialize_Fields;

   procedure Initialize (This : in out UserRoleFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return UserRoleFactory_Access is
      This : constant UserRoleFactory_Access := new UserRoleFactory;
   begin
      UserRoleFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return UserRoleFactory_Access is
   begin
        return UserRoleFactory_Package.instance;
   end getInstance;

begin
   null;
   instance := UserRoleFactory_Package.Create;

end org.allbinary.business.user.role.UserRoleFactory_Package;


