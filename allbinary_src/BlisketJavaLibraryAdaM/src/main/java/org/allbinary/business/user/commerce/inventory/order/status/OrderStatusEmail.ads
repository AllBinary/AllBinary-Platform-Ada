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
with org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package; use org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package; use org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
with org.allbinary.business.user.UserInterface_Package; use org.allbinary.business.user.UserInterface_Package;
with org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package; use org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package;
with org.allbinary.data.tables.user.UserEntityFactory_Package; use org.allbinary.data.tables.user.UserEntityFactory_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package; use org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package;
with org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler_Package; use org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler_Package;
with org.allbinary.logic.communication.smtp.event.handler.factory.AdminUserEmailEventHandlerSingletons_Package; use org.allbinary.logic.communication.smtp.event.handler.factory.AdminUserEmailEventHandlerSingletons_Package;
with org.allbinary.logic.communication.smtp.event.handler.factory.StoreAdminUserEmailEventHandlerSingletons_Package; use org.allbinary.logic.communication.smtp.event.handler.factory.StoreAdminUserEmailEventHandlerSingletons_Package;
with org.allbinary.logic.communication.smtp.event.handler.factory.UserEmailEventHandlerSingletons_Package; use org.allbinary.logic.communication.smtp.event.handler.factory.UserEmailEventHandlerSingletons_Package;
with org.allbinary.logic.communication.smtp.info.AdminEmailInfo_Package; use org.allbinary.logic.communication.smtp.info.AdminEmailInfo_Package;
with org.allbinary.logic.communication.smtp.info.BasicEmailInfo_Package; use org.allbinary.logic.communication.smtp.info.BasicEmailInfo_Package;
with org.allbinary.logic.communication.smtp.info.EmailInfo_Package; use org.allbinary.logic.communication.smtp.info.EmailInfo_Package;
with org.allbinary.logic.communication.smtp.info.StoreEmailInfo_Package; use org.allbinary.logic.communication.smtp.info.StoreEmailInfo_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.business.user.commerce.inventory.order.status.OrderStatusEmail_Package is

   package StoreFrontFactory_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package;
   package StoreFrontInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
   package UserInterface_Package renames Standard.org.allbinary.business.user.UserInterface_Package;
   package OrderHistory_Package renames Standard.org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package;
   package UserEntityFactory_Package renames Standard.org.allbinary.data.tables.user.UserEntityFactory_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package UserEmailEventNameData_Package renames Standard.org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package;
   package UserEmailEventHandler_Package renames Standard.org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler_Package;
   package AdminUserEmailEventHandlerSingletons_Package renames Standard.org.allbinary.logic.communication.smtp.event.handler.factory.AdminUserEmailEventHandlerSingletons_Package;
   package StoreAdminUserEmailEventHandlerSingletons_Package renames Standard.org.allbinary.logic.communication.smtp.event.handler.factory.StoreAdminUserEmailEventHandlerSingletons_Package;
   package UserEmailEventHandlerSingletons_Package renames Standard.org.allbinary.logic.communication.smtp.event.handler.factory.UserEmailEventHandlerSingletons_Package;
   package AdminEmailInfo_Package renames Standard.org.allbinary.logic.communication.smtp.info.AdminEmailInfo_Package;
   package BasicEmailInfo_Package renames Standard.org.allbinary.logic.communication.smtp.info.BasicEmailInfo_Package;
   package EmailInfo_Package renames Standard.org.allbinary.logic.communication.smtp.info.EmailInfo_Package;
   package StoreEmailInfo_Package renames Standard.org.allbinary.logic.communication.smtp.info.StoreEmailInfo_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type OrderStatusEmail is tagged;
   type OrderStatusEmail_Access is access all OrderStatusEmail'Class;
   type OrderStatusEmail_Access_Array is array (Natural range <>) of OrderStatusEmail_Access;
   type OrderStatusEmail_Access_Array_Access is access all OrderStatusEmail_Access_Array;

   type OrderStatusEmail is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      abeClientInformation : AbeClientInformationInterface_Access;
      orderHistory : OrderHistory_Access;
      storeFrontInterface : StoreFrontInterface_Access;
      user : UserInterface_Access;
   end record;

   procedure Initialize (This : in out OrderStatusEmail'Class; abeClientInformation : AbeClientInformationInterface_Access; orderHistory : OrderHistory_Access);
   function Create (abeClientInformation : AbeClientInformationInterface_Access; orderHistory : OrderHistory_Access) return OrderStatusEmail_Access;
   procedure process (This : in out OrderStatusEmail);
   procedure notifyStoreAdmin (This : in out OrderStatusEmail);
   procedure notifyUser (This : in out OrderStatusEmail);

end org.allbinary.business.user.commerce.inventory.order.status.OrderStatusEmail_Package;


