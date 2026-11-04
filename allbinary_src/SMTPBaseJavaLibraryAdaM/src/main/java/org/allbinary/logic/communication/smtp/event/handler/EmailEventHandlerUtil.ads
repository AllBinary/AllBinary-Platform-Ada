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

limited with org.allbinary.logic.communication.smtp.event.handler.EmailEventHandlerUtil_Package;
package org.allbinary.logic.communication.smtp.event.handler.EmailEventHandlerUtil_Package_References is
   type EmailEventHandlerUtil_Access is access all org.allbinary.logic.communication.smtp.event.handler.EmailEventHandlerUtil_Package.EmailEventHandlerUtil'Class;
   type EmailEventHandlerUtil_Access_Array is array (Natural range <>) of EmailEventHandlerUtil_Access;
   type EmailEventHandlerUtil_Access_Array_Access is access all EmailEventHandlerUtil_Access_Array;
   type EmailEventHandlerUtil_Access_Array_Access_Array is array (Natural range <>) of EmailEventHandlerUtil_Access_Array_Access;
   type EmailEventHandlerUtil_Access_Array_Access_Array_Access is access all EmailEventHandlerUtil_Access_Array_Access_Array;
end org.allbinary.logic.communication.smtp.event.handler.EmailEventHandlerUtil_Package_References;

with org.allbinary.logic.communication.smtp.event.handler.EmailEventHandlerUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.business.user.UserInterface_Package;
with org.allbinary.business.user.UserInterface_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package;
with org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package_References;
limited with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;
limited with org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler_Package;
with org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler_Package_References;

package org.allbinary.logic.communication.smtp.event.handler.EmailEventHandlerUtil_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package UserInterface_Package renames Standard.org.allbinary.business.user.UserInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package UserEmailEventNameData_Package renames Standard.org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package Reference_Types is
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype EmailEventHandlerUtil_Access is org.allbinary.logic.communication.smtp.event.handler.EmailEventHandlerUtil_Package_References.EmailEventHandlerUtil_Access;
   function "=" (Left, Right : EmailEventHandlerUtil_Access) return Boolean renames org.allbinary.logic.communication.smtp.event.handler.EmailEventHandlerUtil_Package_References."=";
   subtype EmailEventHandlerUtil_Access_Array is org.allbinary.logic.communication.smtp.event.handler.EmailEventHandlerUtil_Package_References.EmailEventHandlerUtil_Access_Array;
   function "=" (Left, Right : EmailEventHandlerUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.smtp.event.handler.EmailEventHandlerUtil_Package_References."=";
   subtype EmailEventHandlerUtil_Access_Array_Access is org.allbinary.logic.communication.smtp.event.handler.EmailEventHandlerUtil_Package_References.EmailEventHandlerUtil_Access_Array_Access;
   function "=" (Left, Right : EmailEventHandlerUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.smtp.event.handler.EmailEventHandlerUtil_Package_References."=";
   subtype EmailEventHandlerUtil_Access_Array_Access_Array is org.allbinary.logic.communication.smtp.event.handler.EmailEventHandlerUtil_Package_References.EmailEventHandlerUtil_Access_Array_Access_Array;
   function "=" (Left, Right : EmailEventHandlerUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.smtp.event.handler.EmailEventHandlerUtil_Package_References."=";
   subtype EmailEventHandlerUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.smtp.event.handler.EmailEventHandlerUtil_Package_References.EmailEventHandlerUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : EmailEventHandlerUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.smtp.event.handler.EmailEventHandlerUtil_Package_References."=";

   type EmailEventHandlerUtil is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : EmailEventHandlerUtil_Access;

   procedure Initialize (This : in out EmailEventHandlerUtil'Class);
   function Create return EmailEventHandlerUtil_Access;
   function getInstance return EmailEventHandlerUtil_Access;
   function getEventHandler (This : in out EmailEventHandlerUtil; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; userEmailEventNameData_Param : access UserEmailEventNameData_Package.UserEmailEventNameData'Class; userVector_Param : access BasicArrayList_Package.BasicArrayList'Class) return UserEmailEventHandler_Access;
   procedure getEventHandler (This : in out EmailEventHandlerUtil; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; userEmailEventNameData_Param : access UserEmailEventNameData_Package.UserEmailEventNameData'Class; userVector_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function getUserEmailEventListenerVector (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; userEmailEventNameData_Param : access UserEmailEventNameData_Package.UserEmailEventNameData'Class; userInterface_Param : access UserInterface_Package.UserInterface'Class) return BasicArrayList_Access;
   procedure getUserEmailEventListenerVector (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; userEmailEventNameData_Param : access UserEmailEventNameData_Package.UserEmailEventNameData'Class; userInterface_Param : access UserInterface_Package.UserInterface'Class);

end org.allbinary.logic.communication.smtp.event.handler.EmailEventHandlerUtil_Package;


