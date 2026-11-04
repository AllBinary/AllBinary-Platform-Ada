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

limited with org.allbinary.logic.communication.smtp.event.modules.log.LogUserEmailEventListenerModule_Package;
package org.allbinary.logic.communication.smtp.event.modules.log.LogUserEmailEventListenerModule_Package_References is
   type LogUserEmailEventListenerModule_Access is access all org.allbinary.logic.communication.smtp.event.modules.log.LogUserEmailEventListenerModule_Package.LogUserEmailEventListenerModule'Class;
   type LogUserEmailEventListenerModule_Access_Array is array (Natural range <>) of LogUserEmailEventListenerModule_Access;
   type LogUserEmailEventListenerModule_Access_Array_Access is access all LogUserEmailEventListenerModule_Access_Array;
   type LogUserEmailEventListenerModule_Access_Array_Access_Array is array (Natural range <>) of LogUserEmailEventListenerModule_Access_Array_Access;
   type LogUserEmailEventListenerModule_Access_Array_Access_Array_Access is access all LogUserEmailEventListenerModule_Access_Array_Access_Array;
end org.allbinary.logic.communication.smtp.event.modules.log.LogUserEmailEventListenerModule_Package_References;

with org.allbinary.logic.communication.smtp.event.modules.log.LogUserEmailEventListenerModule_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.communication.smtp.event.EmailEvent_Package;
with org.allbinary.logic.communication.smtp.event.EmailEvent_Package_References;
with org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package; use org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package;

package org.allbinary.logic.communication.smtp.event.modules.log.LogUserEmailEventListenerModule_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package EmailEvent_Package renames Standard.org.allbinary.logic.communication.smtp.event.EmailEvent_Package;
   package UserEmailEventListenerInterface_Package renames Standard.org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package;
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
   subtype EmailEvent_Access is org.allbinary.logic.communication.smtp.event.EmailEvent_Package_References.EmailEvent_Access;
   use type EmailEvent_Access;
   subtype EmailEvent_Access_Array is org.allbinary.logic.communication.smtp.event.EmailEvent_Package_References.EmailEvent_Access_Array;
   use type EmailEvent_Access_Array;
   subtype EmailEvent_Access_Array_Access is org.allbinary.logic.communication.smtp.event.EmailEvent_Package_References.EmailEvent_Access_Array_Access;
   use type EmailEvent_Access_Array_Access;
   subtype EmailEvent_Access_Array_Access_Array is org.allbinary.logic.communication.smtp.event.EmailEvent_Package_References.EmailEvent_Access_Array_Access_Array;
   use type EmailEvent_Access_Array_Access_Array;
   subtype EmailEvent_Access_Array_Access_Array_Access is org.allbinary.logic.communication.smtp.event.EmailEvent_Package_References.EmailEvent_Access_Array_Access_Array_Access;
   use type EmailEvent_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype LogUserEmailEventListenerModule_Access is org.allbinary.logic.communication.smtp.event.modules.log.LogUserEmailEventListenerModule_Package_References.LogUserEmailEventListenerModule_Access;
   function "=" (Left, Right : LogUserEmailEventListenerModule_Access) return Boolean renames org.allbinary.logic.communication.smtp.event.modules.log.LogUserEmailEventListenerModule_Package_References."=";
   subtype LogUserEmailEventListenerModule_Access_Array is org.allbinary.logic.communication.smtp.event.modules.log.LogUserEmailEventListenerModule_Package_References.LogUserEmailEventListenerModule_Access_Array;
   function "=" (Left, Right : LogUserEmailEventListenerModule_Access_Array) return Boolean renames org.allbinary.logic.communication.smtp.event.modules.log.LogUserEmailEventListenerModule_Package_References."=";
   subtype LogUserEmailEventListenerModule_Access_Array_Access is org.allbinary.logic.communication.smtp.event.modules.log.LogUserEmailEventListenerModule_Package_References.LogUserEmailEventListenerModule_Access_Array_Access;
   function "=" (Left, Right : LogUserEmailEventListenerModule_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.smtp.event.modules.log.LogUserEmailEventListenerModule_Package_References."=";
   subtype LogUserEmailEventListenerModule_Access_Array_Access_Array is org.allbinary.logic.communication.smtp.event.modules.log.LogUserEmailEventListenerModule_Package_References.LogUserEmailEventListenerModule_Access_Array_Access_Array;
   function "=" (Left, Right : LogUserEmailEventListenerModule_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.smtp.event.modules.log.LogUserEmailEventListenerModule_Package_References."=";
   subtype LogUserEmailEventListenerModule_Access_Array_Access_Array_Access is org.allbinary.logic.communication.smtp.event.modules.log.LogUserEmailEventListenerModule_Package_References.LogUserEmailEventListenerModule_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUserEmailEventListenerModule_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.smtp.event.modules.log.LogUserEmailEventListenerModule_Package_References."=";

   type LogUserEmailEventListenerModule is new Java_Object and UserEmailEventListenerInterface with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out LogUserEmailEventListenerModule'Class);
   function Create return LogUserEmailEventListenerModule_Access;
   procedure onEmailSendRequest (This : in out LogUserEmailEventListenerModule; userEmailInfoEvent_Param : access EmailEvent_Package.EmailEvent'Class);

end org.allbinary.logic.communication.smtp.event.modules.log.LogUserEmailEventListenerModule_Package;


