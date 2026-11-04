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

limited with org.allbinary.logic.communication.smtp.event.handler.factory.AdminUserEmailEventHandlerSingletons_Package;
package org.allbinary.logic.communication.smtp.event.handler.factory.AdminUserEmailEventHandlerSingletons_Package_References is
   type AdminUserEmailEventHandlerSingletons_Access is access all org.allbinary.logic.communication.smtp.event.handler.factory.AdminUserEmailEventHandlerSingletons_Package.AdminUserEmailEventHandlerSingletons'Class;
   type AdminUserEmailEventHandlerSingletons_Access_Array is array (Natural range <>) of AdminUserEmailEventHandlerSingletons_Access;
   type AdminUserEmailEventHandlerSingletons_Access_Array_Access is access all AdminUserEmailEventHandlerSingletons_Access_Array;
   type AdminUserEmailEventHandlerSingletons_Access_Array_Access_Array is array (Natural range <>) of AdminUserEmailEventHandlerSingletons_Access_Array_Access;
   type AdminUserEmailEventHandlerSingletons_Access_Array_Access_Array_Access is access all AdminUserEmailEventHandlerSingletons_Access_Array_Access_Array;
end org.allbinary.logic.communication.smtp.event.handler.factory.AdminUserEmailEventHandlerSingletons_Package_References;

with org.allbinary.logic.communication.smtp.event.handler.factory.AdminUserEmailEventHandlerSingletons_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
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

package org.allbinary.logic.communication.smtp.event.handler.factory.AdminUserEmailEventHandlerSingletons_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package UserEmailEventNameData_Package renames Standard.org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package;
   package UserEmailEventHandler_Package renames Standard.org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Reference_Types is
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


   subtype AdminUserEmailEventHandlerSingletons_Access is org.allbinary.logic.communication.smtp.event.handler.factory.AdminUserEmailEventHandlerSingletons_Package_References.AdminUserEmailEventHandlerSingletons_Access;
   function "=" (Left, Right : AdminUserEmailEventHandlerSingletons_Access) return Boolean renames org.allbinary.logic.communication.smtp.event.handler.factory.AdminUserEmailEventHandlerSingletons_Package_References."=";
   subtype AdminUserEmailEventHandlerSingletons_Access_Array is org.allbinary.logic.communication.smtp.event.handler.factory.AdminUserEmailEventHandlerSingletons_Package_References.AdminUserEmailEventHandlerSingletons_Access_Array;
   function "=" (Left, Right : AdminUserEmailEventHandlerSingletons_Access_Array) return Boolean renames org.allbinary.logic.communication.smtp.event.handler.factory.AdminUserEmailEventHandlerSingletons_Package_References."=";
   subtype AdminUserEmailEventHandlerSingletons_Access_Array_Access is org.allbinary.logic.communication.smtp.event.handler.factory.AdminUserEmailEventHandlerSingletons_Package_References.AdminUserEmailEventHandlerSingletons_Access_Array_Access;
   function "=" (Left, Right : AdminUserEmailEventHandlerSingletons_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.smtp.event.handler.factory.AdminUserEmailEventHandlerSingletons_Package_References."=";
   subtype AdminUserEmailEventHandlerSingletons_Access_Array_Access_Array is org.allbinary.logic.communication.smtp.event.handler.factory.AdminUserEmailEventHandlerSingletons_Package_References.AdminUserEmailEventHandlerSingletons_Access_Array_Access_Array;
   function "=" (Left, Right : AdminUserEmailEventHandlerSingletons_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.smtp.event.handler.factory.AdminUserEmailEventHandlerSingletons_Package_References."=";
   subtype AdminUserEmailEventHandlerSingletons_Access_Array_Access_Array_Access is org.allbinary.logic.communication.smtp.event.handler.factory.AdminUserEmailEventHandlerSingletons_Package_References.AdminUserEmailEventHandlerSingletons_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AdminUserEmailEventHandlerSingletons_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.smtp.event.handler.factory.AdminUserEmailEventHandlerSingletons_Package_References."=";

   type AdminUserEmailEventHandlerSingletons is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      userEmailEventHandlerHashMap : HashMap_Access;
   end record;
   instance : AdminUserEmailEventHandlerSingletons_Access;

   procedure Initialize (This : in out AdminUserEmailEventHandlerSingletons'Class);
   function Create return AdminUserEmailEventHandlerSingletons_Access;
   function getInstance return AdminUserEmailEventHandlerSingletons_Access;
   function getInstance (This : in out AdminUserEmailEventHandlerSingletons; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; userEmailEventNameData_Param : access UserEmailEventNameData_Package.UserEmailEventNameData'Class) return UserEmailEventHandler_Access;
   procedure getInstance (This : in out AdminUserEmailEventHandlerSingletons; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; userEmailEventNameData_Param : access UserEmailEventNameData_Package.UserEmailEventNameData'Class);

end org.allbinary.logic.communication.smtp.event.handler.factory.AdminUserEmailEventHandlerSingletons_Package;


