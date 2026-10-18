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


with org.allbinary.business.user.modules.UserFactory_Package; use org.allbinary.business.user.modules.UserFactory_Package;
with org.allbinary.business.user.modules.admin.AdminUserFactory_Package; use org.allbinary.business.user.modules.admin.AdminUserFactory_Package;
with org.allbinary.business.user.modules.admin.store.StoreAdminUserFactory_Package; use org.allbinary.business.user.modules.admin.store.StoreAdminUserFactory_Package;
with org.allbinary.business.user.modules.admin.store.customer.CustomerStoreAdminUserFactory_Package; use org.allbinary.business.user.modules.admin.store.customer.CustomerStoreAdminUserFactory_Package;
with org.allbinary.business.user.modules.admin.store.order.OrderStoreAdminUserFactory_Package; use org.allbinary.business.user.modules.admin.store.order.OrderStoreAdminUserFactory_Package;
with org.allbinary.business.user.modules.admin.store.order.adjust.AdjustOrderStoreAdminUserFactory_Package; use org.allbinary.business.user.modules.admin.store.order.adjust.AdjustOrderStoreAdminUserFactory_Package;
with org.allbinary.business.user.modules.admin.store.order.review.ReviewOrderStoreAdminUserFactory_Package; use org.allbinary.business.user.modules.admin.store.order.review.ReviewOrderStoreAdminUserFactory_Package;
with org.allbinary.business.user.modules.admin.store.order.ship.ShipOrderStoreAdminUserFactory_Package; use org.allbinary.business.user.modules.admin.store.order.ship.ShipOrderStoreAdminUserFactory_Package;
with org.allbinary.business.user.modules.admin.store.payment.PaymentStoreAdminUserFactory_Package; use org.allbinary.business.user.modules.admin.store.payment.PaymentStoreAdminUserFactory_Package;
with org.allbinary.business.user.modules.admin.store.product.ProductStoreAdminUserFactory_Package; use org.allbinary.business.user.modules.admin.store.product.ProductStoreAdminUserFactory_Package;
with org.allbinary.business.user.modules.admin.store.web.WebStoreAdminUserFactory_Package; use org.allbinary.business.user.modules.admin.store.web.WebStoreAdminUserFactory_Package;
with org.allbinary.business.user.modules.admin.store.web.view.editor.ViewEditorWebStoreAdminUserFactory_Package; use org.allbinary.business.user.modules.admin.store.web.view.editor.ViewEditorWebStoreAdminUserFactory_Package;
with org.allbinary.business.user.modules.admin.store.web.wizard.WizardWebStoreAdminUserFactory_Package; use org.allbinary.business.user.modules.admin.store.web.wizard.WizardWebStoreAdminUserFactory_Package;
with org.allbinary.business.user.modules.admin.store.web.workflow.editor.WorkflowEditorWebStoreAdminUserFactory_Package; use org.allbinary.business.user.modules.admin.store.web.workflow.editor.WorkflowEditorWebStoreAdminUserFactory_Package;
with org.allbinary.business.user.modules.customer.subscriber.SubscriberUserFactory_Package; use org.allbinary.business.user.modules.customer.subscriber.SubscriberUserFactory_Package;
with org.allbinary.business.user.modules.customer.wholesale.WholesaleUserFactory_Package; use org.allbinary.business.user.modules.customer.wholesale.WholesaleUserFactory_Package;
with org.allbinary.business.user.role.UserRoleB_Package; use org.allbinary.business.user.role.UserRoleB_Package;

package body org.allbinary.business.user.role.UserRoleFactory_Package is

   package UserFactory_Package renames Standard.org.allbinary.business.user.modules.UserFactory_Package;
   package AdminUserFactory_Package renames Standard.org.allbinary.business.user.modules.admin.AdminUserFactory_Package;
   package StoreAdminUserFactory_Package renames Standard.org.allbinary.business.user.modules.admin.store.StoreAdminUserFactory_Package;
   package CustomerStoreAdminUserFactory_Package renames Standard.org.allbinary.business.user.modules.admin.store.customer.CustomerStoreAdminUserFactory_Package;
   package OrderStoreAdminUserFactory_Package renames Standard.org.allbinary.business.user.modules.admin.store.order.OrderStoreAdminUserFactory_Package;
   package AdjustOrderStoreAdminUserFactory_Package renames Standard.org.allbinary.business.user.modules.admin.store.order.adjust.AdjustOrderStoreAdminUserFactory_Package;
   package ReviewOrderStoreAdminUserFactory_Package renames Standard.org.allbinary.business.user.modules.admin.store.order.review.ReviewOrderStoreAdminUserFactory_Package;
   package ShipOrderStoreAdminUserFactory_Package renames Standard.org.allbinary.business.user.modules.admin.store.order.ship.ShipOrderStoreAdminUserFactory_Package;
   package PaymentStoreAdminUserFactory_Package renames Standard.org.allbinary.business.user.modules.admin.store.payment.PaymentStoreAdminUserFactory_Package;
   package ProductStoreAdminUserFactory_Package renames Standard.org.allbinary.business.user.modules.admin.store.product.ProductStoreAdminUserFactory_Package;
   package WebStoreAdminUserFactory_Package renames Standard.org.allbinary.business.user.modules.admin.store.web.WebStoreAdminUserFactory_Package;
   package ViewEditorWebStoreAdminUserFactory_Package renames Standard.org.allbinary.business.user.modules.admin.store.web.view.editor.ViewEditorWebStoreAdminUserFactory_Package;
   package WizardWebStoreAdminUserFactory_Package renames Standard.org.allbinary.business.user.modules.admin.store.web.wizard.WizardWebStoreAdminUserFactory_Package;
   package WorkflowEditorWebStoreAdminUserFactory_Package renames Standard.org.allbinary.business.user.modules.admin.store.web.workflow.editor.WorkflowEditorWebStoreAdminUserFactory_Package;
   package SubscriberUserFactory_Package renames Standard.org.allbinary.business.user.modules.customer.subscriber.SubscriberUserFactory_Package;
   package WholesaleUserFactory_Package renames Standard.org.allbinary.business.user.modules.customer.wholesale.WholesaleUserFactory_Package;
   procedure Initialize_Fields (This : in out UserRoleFactory'Class) is
   begin
      null;
      This.basicUserRoleFactory := BasicUserRoleFactory_Package.getInstance;
      This.INSTALLER := UserRole_Access (UserRoleB_Package.Create (This.basicUserRoleFactory.INSTALLER, null));
      This.ADMINISTRATOR := UserRole_Access (UserRoleB_Package.Create (This.basicUserRoleFactory.ADMINISTRATOR, AdminUserFactory_Package.Create));
      This.CUSTOMER := UserRole_Access (UserRoleB_Package.Create (This.basicUserRoleFactory.CUSTOMER, UserFactory_Package.Create));
      This.SUBSCRIBERCUSTOMER := UserRole_Access (UserRoleB_Package.Create (This.basicUserRoleFactory.SUBSCRIBERCUSTOMER, SubscriberUserFactory_Package.Create));
      This.WHOLESALECUSTOMER := UserRole_Access (UserRoleB_Package.Create (This.basicUserRoleFactory.WHOLESALECUSTOMER, WholesaleUserFactory_Package.Create));
      This.STOREMANAGER := UserRole_Access (UserRoleB_Package.Create (This.basicUserRoleFactory.STOREMANAGER, StoreAdminUserFactory_Package.Create));
      This.PRODUCTMANAGER := UserRole_Access (UserRoleB_Package.Create (This.basicUserRoleFactory.PRODUCTMANAGER, ProductStoreAdminUserFactory_Package.Create));
      This.CUSTOMERMANAGER := UserRole_Access (UserRoleB_Package.Create (This.basicUserRoleFactory.CUSTOMERMANAGER, CustomerStoreAdminUserFactory_Package.Create));
      This.PAYMENTMANAGER := UserRole_Access (UserRoleB_Package.Create (This.basicUserRoleFactory.PAYMENTMANAGER, PaymentStoreAdminUserFactory_Package.Create));
      This.ORDERMANAGER := UserRole_Access (UserRoleB_Package.Create (This.basicUserRoleFactory.ORDERMANAGER, OrderStoreAdminUserFactory_Package.Create));
      This.WEBMANAGER := UserRole_Access (UserRoleB_Package.Create (This.basicUserRoleFactory.WEBMANAGER, WebStoreAdminUserFactory_Package.Create));
      This.REVIEWER := UserRole_Access (UserRoleB_Package.Create (This.basicUserRoleFactory.REVIEWER, ReviewOrderStoreAdminUserFactory_Package.Create));
      This.SHIPPING := UserRole_Access (UserRoleB_Package.Create (This.basicUserRoleFactory.SHIPPING, ShipOrderStoreAdminUserFactory_Package.Create));
      This.ADJUSTER := UserRole_Access (UserRoleB_Package.Create (This.basicUserRoleFactory.ADJUSTER, AdjustOrderStoreAdminUserFactory_Package.Create));
      This.WORKFLOWEDITOR := UserRole_Access (UserRoleB_Package.Create (This.basicUserRoleFactory.WORKFLOWEDITOR, WorkflowEditorWebStoreAdminUserFactory_Package.Create));
      This.WIZARD := UserRole_Access (UserRoleB_Package.Create (This.basicUserRoleFactory.WIZARD, WizardWebStoreAdminUserFactory_Package.Create));
      This.VIEWEDITOR := UserRole_Access (UserRoleB_Package.Create (This.basicUserRoleFactory.VIEWEDITOR, ViewEditorWebStoreAdminUserFactory_Package.Create));
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


