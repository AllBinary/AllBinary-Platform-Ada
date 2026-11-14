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

with AllBinary_Java;
limited with org.allbinary.logic.communication.smtp.event.handler.factory.StoreAdminUserEmailEventHandlerSingletons_Package;
package org.allbinary.logic.communication.smtp.event.handler.factory.StoreAdminUserEmailEventHandlerSingletons_Package_References is
   type StoreAdminUserEmailEventHandlerSingletons_Access is access all org.allbinary.logic.communication.smtp.event.handler.factory.StoreAdminUserEmailEventHandlerSingletons_Package.StoreAdminUserEmailEventHandlerSingletons'Class;
   type StoreAdminUserEmailEventHandlerSingletons_Access_Array is array (Natural range <>) of StoreAdminUserEmailEventHandlerSingletons_Access;
   type StoreAdminUserEmailEventHandlerSingletons_Access_Array_Access is access all StoreAdminUserEmailEventHandlerSingletons_Access_Array;
   type StoreAdminUserEmailEventHandlerSingletons_Access_Array_Access_Array is array (Natural range <>) of StoreAdminUserEmailEventHandlerSingletons_Access_Array_Access;
   type StoreAdminUserEmailEventHandlerSingletons_Access_Array_Access_Array_Access is access all StoreAdminUserEmailEventHandlerSingletons_Access_Array_Access_Array;
   type StoreAdminUserEmailEventHandlerSingletons_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : StoreAdminUserEmailEventHandlerSingletons_Access_Array_Access;
   end record;
   function Java_Box (Value : StoreAdminUserEmailEventHandlerSingletons_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new StoreAdminUserEmailEventHandlerSingletons_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_StoreAdminUserEmailEventHandlerSingletons_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return StoreAdminUserEmailEventHandlerSingletons_Access_Array_Access is (if Value /= null and then Value.all in StoreAdminUserEmailEventHandlerSingletons_Access_Array_Object'Class then StoreAdminUserEmailEventHandlerSingletons_Access_Array_Object'Class (Value.all).Value else null);
   type StoreAdminUserEmailEventHandlerSingletons_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : StoreAdminUserEmailEventHandlerSingletons_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : StoreAdminUserEmailEventHandlerSingletons_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new StoreAdminUserEmailEventHandlerSingletons_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_StoreAdminUserEmailEventHandlerSingletons_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return StoreAdminUserEmailEventHandlerSingletons_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in StoreAdminUserEmailEventHandlerSingletons_Access_Array_Access_Array_Object'Class then StoreAdminUserEmailEventHandlerSingletons_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.communication.smtp.event.handler.factory.StoreAdminUserEmailEventHandlerSingletons_Package_References;

with org.allbinary.logic.communication.smtp.event.handler.factory.StoreAdminUserEmailEventHandlerSingletons_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
limited with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package;
with org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package_References;
limited with org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler_Package;
with org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler_Package_References;
limited with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;

package org.allbinary.logic.communication.smtp.event.handler.factory.StoreAdminUserEmailEventHandlerSingletons_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package StoreFrontInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package UserEmailEventNameData_Package renames Standard.org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package;
   package UserEmailEventHandler_Package renames Standard.org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler_Package;
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
   subtype UserEmailEventNameData_Access is org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package_References.UserEmailEventNameData_Access;
   use type UserEmailEventNameData_Access;
   subtype UserEmailEventNameData_Access_Array is org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package_References.UserEmailEventNameData_Access_Array;
   use type UserEmailEventNameData_Access_Array;
   subtype UserEmailEventNameData_Access_Array_Access is org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package_References.UserEmailEventNameData_Access_Array_Access;
   use type UserEmailEventNameData_Access_Array_Access;
   subtype UserEmailEventNameData_Access_Array_Access_Array is org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package_References.UserEmailEventNameData_Access_Array_Access_Array;
   use type UserEmailEventNameData_Access_Array_Access_Array;
   subtype UserEmailEventNameData_Access_Array_Access_Array_Access is org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package_References.UserEmailEventNameData_Access_Array_Access_Array_Access;
   use type UserEmailEventNameData_Access_Array_Access_Array_Access;
   subtype UserEmailEventHandler_Access is org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler_Package_References.UserEmailEventHandler_Access;
   use type UserEmailEventHandler_Access;
   subtype UserEmailEventHandler_Access_Array is org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler_Package_References.UserEmailEventHandler_Access_Array;
   use type UserEmailEventHandler_Access_Array;
   subtype UserEmailEventHandler_Access_Array_Access is org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler_Package_References.UserEmailEventHandler_Access_Array_Access;
   use type UserEmailEventHandler_Access_Array_Access;
   subtype UserEmailEventHandler_Access_Array_Access_Array is org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler_Package_References.UserEmailEventHandler_Access_Array_Access_Array;
   use type UserEmailEventHandler_Access_Array_Access_Array;
   subtype UserEmailEventHandler_Access_Array_Access_Array_Access is org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler_Package_References.UserEmailEventHandler_Access_Array_Access_Array_Access;
   use type UserEmailEventHandler_Access_Array_Access_Array_Access;
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


   subtype StoreAdminUserEmailEventHandlerSingletons_Access is org.allbinary.logic.communication.smtp.event.handler.factory.StoreAdminUserEmailEventHandlerSingletons_Package_References.StoreAdminUserEmailEventHandlerSingletons_Access;
   function "=" (Left, Right : StoreAdminUserEmailEventHandlerSingletons_Access) return Boolean renames org.allbinary.logic.communication.smtp.event.handler.factory.StoreAdminUserEmailEventHandlerSingletons_Package_References."=";
   subtype StoreAdminUserEmailEventHandlerSingletons_Access_Array is org.allbinary.logic.communication.smtp.event.handler.factory.StoreAdminUserEmailEventHandlerSingletons_Package_References.StoreAdminUserEmailEventHandlerSingletons_Access_Array;
   function "=" (Left, Right : StoreAdminUserEmailEventHandlerSingletons_Access_Array) return Boolean renames org.allbinary.logic.communication.smtp.event.handler.factory.StoreAdminUserEmailEventHandlerSingletons_Package_References."=";
   subtype StoreAdminUserEmailEventHandlerSingletons_Access_Array_Access is org.allbinary.logic.communication.smtp.event.handler.factory.StoreAdminUserEmailEventHandlerSingletons_Package_References.StoreAdminUserEmailEventHandlerSingletons_Access_Array_Access;
   function "=" (Left, Right : StoreAdminUserEmailEventHandlerSingletons_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.smtp.event.handler.factory.StoreAdminUserEmailEventHandlerSingletons_Package_References."=";
   function Java_Box (Value : StoreAdminUserEmailEventHandlerSingletons_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.smtp.event.handler.factory.StoreAdminUserEmailEventHandlerSingletons_Package_References.Java_Box;
   function Java_Unbox_StoreAdminUserEmailEventHandlerSingletons_Access_Array (Value : access Java_Object'Class) return StoreAdminUserEmailEventHandlerSingletons_Access_Array_Access renames org.allbinary.logic.communication.smtp.event.handler.factory.StoreAdminUserEmailEventHandlerSingletons_Package_References.Java_Unbox_StoreAdminUserEmailEventHandlerSingletons_Access_Array;
   subtype StoreAdminUserEmailEventHandlerSingletons_Access_Array_Access_Array is org.allbinary.logic.communication.smtp.event.handler.factory.StoreAdminUserEmailEventHandlerSingletons_Package_References.StoreAdminUserEmailEventHandlerSingletons_Access_Array_Access_Array;
   function "=" (Left, Right : StoreAdminUserEmailEventHandlerSingletons_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.smtp.event.handler.factory.StoreAdminUserEmailEventHandlerSingletons_Package_References."=";
   subtype StoreAdminUserEmailEventHandlerSingletons_Access_Array_Access_Array_Access is org.allbinary.logic.communication.smtp.event.handler.factory.StoreAdminUserEmailEventHandlerSingletons_Package_References.StoreAdminUserEmailEventHandlerSingletons_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StoreAdminUserEmailEventHandlerSingletons_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.smtp.event.handler.factory.StoreAdminUserEmailEventHandlerSingletons_Package_References."=";
   function Java_Box (Value : StoreAdminUserEmailEventHandlerSingletons_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.smtp.event.handler.factory.StoreAdminUserEmailEventHandlerSingletons_Package_References.Java_Box;
   function Java_Unbox_StoreAdminUserEmailEventHandlerSingletons_Access_Array_Access_Array (Value : access Java_Object'Class) return StoreAdminUserEmailEventHandlerSingletons_Access_Array_Access_Array_Access renames org.allbinary.logic.communication.smtp.event.handler.factory.StoreAdminUserEmailEventHandlerSingletons_Package_References.Java_Unbox_StoreAdminUserEmailEventHandlerSingletons_Access_Array_Access_Array;

   type StoreAdminUserEmailEventHandlerSingletons is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      userEmailEventHandlerHashMap : HashMap_Access;
   end record;
   instance : StoreAdminUserEmailEventHandlerSingletons_Access;

   procedure Initialize (This : in out StoreAdminUserEmailEventHandlerSingletons'Class);
   function Create return StoreAdminUserEmailEventHandlerSingletons_Access;
   function getInstance return StoreAdminUserEmailEventHandlerSingletons_Access;
   function getInstance (This : in out StoreAdminUserEmailEventHandlerSingletons; userEmailEventNameData_Param : access UserEmailEventNameData_Package.UserEmailEventNameData'Class; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class) return UserEmailEventHandler_Access;
   procedure getInstance (This : in out StoreAdminUserEmailEventHandlerSingletons; userEmailEventNameData_Param : access UserEmailEventNameData_Package.UserEmailEventNameData'Class; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class);

end org.allbinary.logic.communication.smtp.event.handler.factory.StoreAdminUserEmailEventHandlerSingletons_Package;


