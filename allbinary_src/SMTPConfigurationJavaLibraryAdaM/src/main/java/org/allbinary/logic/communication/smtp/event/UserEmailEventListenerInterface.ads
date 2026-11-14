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
limited with org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package;
package org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package_References is
   type UserEmailEventListenerInterface_Access is access all org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package.UserEmailEventListenerInterface'Class;
   type UserEmailEventListenerInterface_Access_Array is array (Natural range <>) of UserEmailEventListenerInterface_Access;
   type UserEmailEventListenerInterface_Access_Array_Access is access all UserEmailEventListenerInterface_Access_Array;
   type UserEmailEventListenerInterface_Access_Array_Access_Array is array (Natural range <>) of UserEmailEventListenerInterface_Access_Array_Access;
   type UserEmailEventListenerInterface_Access_Array_Access_Array_Access is access all UserEmailEventListenerInterface_Access_Array_Access_Array;
   type UserEmailEventListenerInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : UserEmailEventListenerInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : UserEmailEventListenerInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new UserEmailEventListenerInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_UserEmailEventListenerInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return UserEmailEventListenerInterface_Access_Array_Access is (if Value /= null and then Value.all in UserEmailEventListenerInterface_Access_Array_Object'Class then UserEmailEventListenerInterface_Access_Array_Object'Class (Value.all).Value else null);
   type UserEmailEventListenerInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : UserEmailEventListenerInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : UserEmailEventListenerInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new UserEmailEventListenerInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_UserEmailEventListenerInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return UserEmailEventListenerInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in UserEmailEventListenerInterface_Access_Array_Access_Array_Object'Class then UserEmailEventListenerInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package_References;

with org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.util.EventListener_Package; use java.util.EventListener_Package;
limited with org.allbinary.logic.communication.smtp.event.EmailEvent_Package;
with org.allbinary.logic.communication.smtp.event.EmailEvent_Package_References;

package org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package is

   package Reference_Types is
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


   type UserEmailEventListenerInterface is interface;
   subtype UserEmailEventListenerInterface_Access is org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package_References.UserEmailEventListenerInterface_Access;
   function "=" (Left, Right : UserEmailEventListenerInterface_Access) return Boolean renames org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package_References."=";
   subtype UserEmailEventListenerInterface_Access_Array is org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package_References.UserEmailEventListenerInterface_Access_Array;
   function "=" (Left, Right : UserEmailEventListenerInterface_Access_Array) return Boolean renames org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package_References."=";
   subtype UserEmailEventListenerInterface_Access_Array_Access is org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package_References.UserEmailEventListenerInterface_Access_Array_Access;
   function "=" (Left, Right : UserEmailEventListenerInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package_References."=";
   function Java_Box (Value : UserEmailEventListenerInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package_References.Java_Box;
   function Java_Unbox_UserEmailEventListenerInterface_Access_Array (Value : access Java_Object'Class) return UserEmailEventListenerInterface_Access_Array_Access renames org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package_References.Java_Unbox_UserEmailEventListenerInterface_Access_Array;
   subtype UserEmailEventListenerInterface_Access_Array_Access_Array is org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package_References.UserEmailEventListenerInterface_Access_Array_Access_Array;
   function "=" (Left, Right : UserEmailEventListenerInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package_References."=";
   subtype UserEmailEventListenerInterface_Access_Array_Access_Array_Access is org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package_References.UserEmailEventListenerInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UserEmailEventListenerInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package_References."=";
   function Java_Box (Value : UserEmailEventListenerInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package_References.Java_Box;
   function Java_Unbox_UserEmailEventListenerInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return UserEmailEventListenerInterface_Access_Array_Access_Array_Access renames org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package_References.Java_Unbox_UserEmailEventListenerInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_UserEmailEventListenerInterface (Value : UserEmailEventListenerInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure onEmailSendRequest (This : in out UserEmailEventListenerInterface; userEmailInfoEvent_Param : access EmailEvent_Package.EmailEvent'Class) is abstract;

end org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package;


