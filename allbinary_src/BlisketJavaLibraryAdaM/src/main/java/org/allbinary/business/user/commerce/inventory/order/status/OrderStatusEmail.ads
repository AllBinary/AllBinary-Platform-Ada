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

limited with org.allbinary.business.user.commerce.inventory.order.status.OrderStatusEmail_Package;
package org.allbinary.business.user.commerce.inventory.order.status.OrderStatusEmail_Package_References is
   type OrderStatusEmail_Access is access all org.allbinary.business.user.commerce.inventory.order.status.OrderStatusEmail_Package.OrderStatusEmail'Class;
   type OrderStatusEmail_Access_Array is array (Natural range <>) of OrderStatusEmail_Access;
   type OrderStatusEmail_Access_Array_Access is access all OrderStatusEmail_Access_Array;
   type OrderStatusEmail_Access_Array_Access_Array is array (Natural range <>) of OrderStatusEmail_Access_Array_Access;
   type OrderStatusEmail_Access_Array_Access_Array_Access is access all OrderStatusEmail_Access_Array_Access_Array;
end org.allbinary.business.user.commerce.inventory.order.status.OrderStatusEmail_Package_References;

with org.allbinary.business.user.commerce.inventory.order.status.OrderStatusEmail_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References;
limited with org.allbinary.business.user.UserInterface_Package;
with org.allbinary.business.user.UserInterface_Package_References;
limited with org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package;
with org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;

package org.allbinary.business.user.commerce.inventory.order.status.OrderStatusEmail_Package is

   package StoreFrontInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
   package UserInterface_Package renames Standard.org.allbinary.business.user.UserInterface_Package;
   package OrderHistory_Package renames Standard.org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Reference_Types is
   subtype StoreFrontInterface_Access is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access;
   use type StoreFrontInterface_Access;
   subtype StoreFrontInterface_Access_Array is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access_Array;
   use type StoreFrontInterface_Access_Array;
   subtype StoreFrontInterface_Access_Array_Access is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access_Array_Access;
   use type StoreFrontInterface_Access_Array_Access;
   subtype StoreFrontInterface_Access_Array_Access_Array is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access_Array_Access_Array;
   use type StoreFrontInterface_Access_Array_Access_Array;
   subtype StoreFrontInterface_Access_Array_Access_Array_Access is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access_Array_Access_Array_Access;
   use type StoreFrontInterface_Access_Array_Access_Array_Access;
   subtype UserInterface_Access is org.allbinary.business.user.UserInterface_Package_References.UserInterface_Access;
   use type UserInterface_Access;
   subtype UserInterface_Access_Array is org.allbinary.business.user.UserInterface_Package_References.UserInterface_Access_Array;
   use type UserInterface_Access_Array;
   subtype UserInterface_Access_Array_Access is org.allbinary.business.user.UserInterface_Package_References.UserInterface_Access_Array_Access;
   use type UserInterface_Access_Array_Access;
   subtype UserInterface_Access_Array_Access_Array is org.allbinary.business.user.UserInterface_Package_References.UserInterface_Access_Array_Access_Array;
   use type UserInterface_Access_Array_Access_Array;
   subtype UserInterface_Access_Array_Access_Array_Access is org.allbinary.business.user.UserInterface_Package_References.UserInterface_Access_Array_Access_Array_Access;
   use type UserInterface_Access_Array_Access_Array_Access;
   subtype OrderHistory_Access is org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package_References.OrderHistory_Access;
   use type OrderHistory_Access;
   subtype OrderHistory_Access_Array is org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package_References.OrderHistory_Access_Array;
   use type OrderHistory_Access_Array;
   subtype OrderHistory_Access_Array_Access is org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package_References.OrderHistory_Access_Array_Access;
   use type OrderHistory_Access_Array_Access;
   subtype OrderHistory_Access_Array_Access_Array is org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package_References.OrderHistory_Access_Array_Access_Array;
   use type OrderHistory_Access_Array_Access_Array;
   subtype OrderHistory_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package_References.OrderHistory_Access_Array_Access_Array_Access;
   use type OrderHistory_Access_Array_Access_Array_Access;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype AbeClientInformationInterface_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access;
   use type AbeClientInformationInterface_Access;
   subtype AbeClientInformationInterface_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array;
   use type AbeClientInformationInterface_Access_Array;
   subtype AbeClientInformationInterface_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access;
   use type AbeClientInformationInterface_Access_Array_Access;
   subtype AbeClientInformationInterface_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array;
   use type AbeClientInformationInterface_Access_Array_Access_Array;
   subtype AbeClientInformationInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array_Access;
   use type AbeClientInformationInterface_Access_Array_Access_Array_Access;
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype OrderStatusEmail_Access is org.allbinary.business.user.commerce.inventory.order.status.OrderStatusEmail_Package_References.OrderStatusEmail_Access;
   function "=" (Left, Right : OrderStatusEmail_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.order.status.OrderStatusEmail_Package_References."=";
   subtype OrderStatusEmail_Access_Array is org.allbinary.business.user.commerce.inventory.order.status.OrderStatusEmail_Package_References.OrderStatusEmail_Access_Array;
   function "=" (Left, Right : OrderStatusEmail_Access_Array) return Boolean renames org.allbinary.business.user.commerce.inventory.order.status.OrderStatusEmail_Package_References."=";
   subtype OrderStatusEmail_Access_Array_Access is org.allbinary.business.user.commerce.inventory.order.status.OrderStatusEmail_Package_References.OrderStatusEmail_Access_Array_Access;
   function "=" (Left, Right : OrderStatusEmail_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.order.status.OrderStatusEmail_Package_References."=";
   subtype OrderStatusEmail_Access_Array_Access_Array is org.allbinary.business.user.commerce.inventory.order.status.OrderStatusEmail_Package_References.OrderStatusEmail_Access_Array_Access_Array;
   function "=" (Left, Right : OrderStatusEmail_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.commerce.inventory.order.status.OrderStatusEmail_Package_References."=";
   subtype OrderStatusEmail_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.inventory.order.status.OrderStatusEmail_Package_References.OrderStatusEmail_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OrderStatusEmail_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.order.status.OrderStatusEmail_Package_References."=";

   type OrderStatusEmail is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      abeClientInformation : AbeClientInformationInterface_Access;
      orderHistory : OrderHistory_Access;
      storeFrontInterface : StoreFrontInterface_Access;
      user : UserInterface_Access;
   end record;

   procedure Initialize (This : in out OrderStatusEmail'Class; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; orderHistory_Param : access OrderHistory_Package.OrderHistory'Class);
   function Create (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; orderHistory_Param : access OrderHistory_Package.OrderHistory'Class) return OrderStatusEmail_Access;
   procedure process (This : in out OrderStatusEmail);
   procedure notifyStoreAdmin (This : in out OrderStatusEmail);
   procedure notifyUser (This : in out OrderStatusEmail);

end org.allbinary.business.user.commerce.inventory.order.status.OrderStatusEmail_Package;


