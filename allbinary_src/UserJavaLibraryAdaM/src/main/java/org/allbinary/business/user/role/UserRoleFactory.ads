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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.business.user.modules.UserFactory_Package; use org.allbinary.business.user.modules.UserFactory_Package;
with org.allbinary.business.user.modules.admin.AdminUserFactory_Package; use org.allbinary.business.user.modules.admin.AdminUserFactory_Package;
with org.allbinary.business.user.modules.admin.store.StoreAdminUserFactory_Package; use org.allbinary.business.user.modules.admin.store.StoreAdminUserFactory_Package;
with org.allbinary.business.user.modules.admin.store.customer_Case.CustomerStoreAdminUserFactory_Package; use org.allbinary.business.user.modules.admin.store.customer_Case.CustomerStoreAdminUserFactory_Package;
with org.allbinary.business.user.modules.admin.store.order.OrderStoreAdminUserFactory_Package; use org.allbinary.business.user.modules.admin.store.order.OrderStoreAdminUserFactory_Package;
with org.allbinary.business.user.modules.admin.store.order.adjust.AdjustOrderStoreAdminUserFactory_Package; use org.allbinary.business.user.modules.admin.store.order.adjust.AdjustOrderStoreAdminUserFactory_Package;
with org.allbinary.business.user.modules.admin.store.order.review.ReviewOrderStoreAdminUserFactory_Package; use org.allbinary.business.user.modules.admin.store.order.review.ReviewOrderStoreAdminUserFactory_Package;
with org.allbinary.business.user.modules.admin.store.order.ship.ShipOrderStoreAdminUserFactory_Package; use org.allbinary.business.user.modules.admin.store.order.ship.ShipOrderStoreAdminUserFactory_Package;
with org.allbinary.business.user.modules.admin.store.payment.PaymentStoreAdminUserFactory_Package; use org.allbinary.business.user.modules.admin.store.payment.PaymentStoreAdminUserFactory_Package;
with org.allbinary.business.user.modules.admin.store.product.ProductStoreAdminUserFactory_Package; use org.allbinary.business.user.modules.admin.store.product.ProductStoreAdminUserFactory_Package;
with org.allbinary.business.user.modules.admin.store.web.WebStoreAdminUserFactory_Package; use org.allbinary.business.user.modules.admin.store.web.WebStoreAdminUserFactory_Package;
with org.allbinary.business.user.modules.admin.store.web.view.editor.ViewEditorWebStoreAdminUserFactory_Package; use org.allbinary.business.user.modules.admin.store.web.view.editor.ViewEditorWebStoreAdminUserFactory_Package;
with org.allbinary.business.user.modules.admin.store.web.wizard_Case.WizardWebStoreAdminUserFactory_Package; use org.allbinary.business.user.modules.admin.store.web.wizard_Case.WizardWebStoreAdminUserFactory_Package;
with org.allbinary.business.user.modules.admin.store.web.workflow.editor.WorkflowEditorWebStoreAdminUserFactory_Package; use org.allbinary.business.user.modules.admin.store.web.workflow.editor.WorkflowEditorWebStoreAdminUserFactory_Package;
with org.allbinary.business.user.modules.customer_Case.subscriber.SubscriberUserFactory_Package; use org.allbinary.business.user.modules.customer_Case.subscriber.SubscriberUserFactory_Package;
with org.allbinary.business.user.modules.customer_Case.wholesale.WholesaleUserFactory_Package; use org.allbinary.business.user.modules.customer_Case.wholesale.WholesaleUserFactory_Package;

package org.allbinary.business.user.role.UserRoleFactory_Package is

   package UserFactory_Package renames Standard.org.allbinary.business.user.modules.UserFactory_Package;
   package AdminUserFactory_Package renames Standard.org.allbinary.business.user.modules.admin.AdminUserFactory_Package;
   package StoreAdminUserFactory_Package renames Standard.org.allbinary.business.user.modules.admin.store.StoreAdminUserFactory_Package;
   package CustomerStoreAdminUserFactory_Package renames Standard.org.allbinary.business.user.modules.admin.store.customer_Case.CustomerStoreAdminUserFactory_Package;
   package OrderStoreAdminUserFactory_Package renames Standard.org.allbinary.business.user.modules.admin.store.order.OrderStoreAdminUserFactory_Package;
   package AdjustOrderStoreAdminUserFactory_Package renames Standard.org.allbinary.business.user.modules.admin.store.order.adjust.AdjustOrderStoreAdminUserFactory_Package;
   package ReviewOrderStoreAdminUserFactory_Package renames Standard.org.allbinary.business.user.modules.admin.store.order.review.ReviewOrderStoreAdminUserFactory_Package;
   package ShipOrderStoreAdminUserFactory_Package renames Standard.org.allbinary.business.user.modules.admin.store.order.ship.ShipOrderStoreAdminUserFactory_Package;
   package PaymentStoreAdminUserFactory_Package renames Standard.org.allbinary.business.user.modules.admin.store.payment.PaymentStoreAdminUserFactory_Package;
   package ProductStoreAdminUserFactory_Package renames Standard.org.allbinary.business.user.modules.admin.store.product.ProductStoreAdminUserFactory_Package;
   package WebStoreAdminUserFactory_Package renames Standard.org.allbinary.business.user.modules.admin.store.web.WebStoreAdminUserFactory_Package;
   package ViewEditorWebStoreAdminUserFactory_Package renames Standard.org.allbinary.business.user.modules.admin.store.web.view.editor.ViewEditorWebStoreAdminUserFactory_Package;
   package WizardWebStoreAdminUserFactory_Package renames Standard.org.allbinary.business.user.modules.admin.store.web.wizard_Case.WizardWebStoreAdminUserFactory_Package;
   package WorkflowEditorWebStoreAdminUserFactory_Package renames Standard.org.allbinary.business.user.modules.admin.store.web.workflow.editor.WorkflowEditorWebStoreAdminUserFactory_Package;
   package SubscriberUserFactory_Package renames Standard.org.allbinary.business.user.modules.customer_Case.subscriber.SubscriberUserFactory_Package;
   package WholesaleUserFactory_Package renames Standard.org.allbinary.business.user.modules.customer_Case.wholesale.WholesaleUserFactory_Package;

   type UserRoleFactory is tagged;
   type UserRoleFactory_Access is access all UserRoleFactory'Class;
   type UserRoleFactory_Access_Array is array (Natural range <>) of UserRoleFactory_Access;
   type UserRoleFactory_Access_Array_Access is access all UserRoleFactory_Access_Array;

   type UserRoleFactory is new Java_Object with record
      basicUserRoleFactory : BasicUserRoleFactory_Access;
      INSTALLER : UserRole_Access;
      ADMINISTRATOR : UserRole_Access;
      CUSTOMER : UserRole_Access;
      SUBSCRIBERCUSTOMER : UserRole_Access;
      WHOLESALECUSTOMER : UserRole_Access;
      STOREMANAGER : UserRole_Access;
      PRODUCTMANAGER : UserRole_Access;
      CUSTOMERMANAGER : UserRole_Access;
      PAYMENTMANAGER : UserRole_Access;
      ORDERMANAGER : UserRole_Access;
      WEBMANAGER : UserRole_Access;
      REVIEWER : UserRole_Access;
      SHIPPING : UserRole_Access;
      ADJUSTER : UserRole_Access;
      WORKFLOWEDITOR : UserRole_Access;
      WIZARD : UserRole_Access;
      VIEWEDITOR : UserRole_Access;
   end record;
   instance : UserRoleFactory_Access;

   procedure Initialize (This : in out UserRoleFactory'Class);
   function Create return UserRoleFactory_Access;
   function getInstance return UserRoleFactory_Access;
   procedure getInstance;

end org.allbinary.business.user.role.UserRoleFactory_Package;


