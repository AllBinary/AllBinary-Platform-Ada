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
limited with org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler_Package;
package org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler_Package_References is
   type UserEmailEventHandler_Access is access all org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler_Package.UserEmailEventHandler'Class;
   type UserEmailEventHandler_Access_Array is array (Natural range <>) of UserEmailEventHandler_Access;
   type UserEmailEventHandler_Access_Array_Access is access all UserEmailEventHandler_Access_Array;
   type UserEmailEventHandler_Access_Array_Access_Array is array (Natural range <>) of UserEmailEventHandler_Access_Array_Access;
   type UserEmailEventHandler_Access_Array_Access_Array_Access is access all UserEmailEventHandler_Access_Array_Access_Array;
   type UserEmailEventHandler_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : UserEmailEventHandler_Access_Array_Access;
   end record;
   function Java_Box (Value : UserEmailEventHandler_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new UserEmailEventHandler_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_UserEmailEventHandler_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return UserEmailEventHandler_Access_Array_Access is (if Value /= null and then Value.all in UserEmailEventHandler_Access_Array_Object'Class then UserEmailEventHandler_Access_Array_Object'Class (Value.all).Value else null);
   type UserEmailEventHandler_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : UserEmailEventHandler_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : UserEmailEventHandler_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new UserEmailEventHandler_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_UserEmailEventHandler_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return UserEmailEventHandler_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in UserEmailEventHandler_Access_Array_Access_Array_Object'Class then UserEmailEventHandler_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler_Package_References;

with org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler_Package_References;
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
limited with org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package;
with org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package_References;
limited with org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package;
with org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package_References;
limited with org.allbinary.logic.communication.smtp.info.EmailInfo_Package;
with org.allbinary.logic.communication.smtp.info.EmailInfo_Package_References;

package org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package UserEmailEventListenerInterface_Package renames Standard.org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package;
   package UserEmailEventNameData_Package renames Standard.org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package;
   package EmailInfo_Package renames Standard.org.allbinary.logic.communication.smtp.info.EmailInfo_Package;
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
   subtype UserEmailEventListenerInterface_Access is org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package_References.UserEmailEventListenerInterface_Access;
   use type UserEmailEventListenerInterface_Access;
   subtype UserEmailEventListenerInterface_Access_Array is org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package_References.UserEmailEventListenerInterface_Access_Array;
   use type UserEmailEventListenerInterface_Access_Array;
   subtype UserEmailEventListenerInterface_Access_Array_Access is org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package_References.UserEmailEventListenerInterface_Access_Array_Access;
   use type UserEmailEventListenerInterface_Access_Array_Access;
   subtype UserEmailEventListenerInterface_Access_Array_Access_Array is org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package_References.UserEmailEventListenerInterface_Access_Array_Access_Array;
   use type UserEmailEventListenerInterface_Access_Array_Access_Array;
   subtype UserEmailEventListenerInterface_Access_Array_Access_Array_Access is org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package_References.UserEmailEventListenerInterface_Access_Array_Access_Array_Access;
   use type UserEmailEventListenerInterface_Access_Array_Access_Array_Access;
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
   subtype EmailInfo_Access is org.allbinary.logic.communication.smtp.info.EmailInfo_Package_References.EmailInfo_Access;
   use type EmailInfo_Access;
   subtype EmailInfo_Access_Array is org.allbinary.logic.communication.smtp.info.EmailInfo_Package_References.EmailInfo_Access_Array;
   use type EmailInfo_Access_Array;
   subtype EmailInfo_Access_Array_Access is org.allbinary.logic.communication.smtp.info.EmailInfo_Package_References.EmailInfo_Access_Array_Access;
   use type EmailInfo_Access_Array_Access;
   subtype EmailInfo_Access_Array_Access_Array is org.allbinary.logic.communication.smtp.info.EmailInfo_Package_References.EmailInfo_Access_Array_Access_Array;
   use type EmailInfo_Access_Array_Access_Array;
   subtype EmailInfo_Access_Array_Access_Array_Access is org.allbinary.logic.communication.smtp.info.EmailInfo_Package_References.EmailInfo_Access_Array_Access_Array_Access;
   use type EmailInfo_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype UserEmailEventHandler_Access is org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler_Package_References.UserEmailEventHandler_Access;
   function "=" (Left, Right : UserEmailEventHandler_Access) return Boolean renames org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler_Package_References."=";
   subtype UserEmailEventHandler_Access_Array is org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler_Package_References.UserEmailEventHandler_Access_Array;
   function "=" (Left, Right : UserEmailEventHandler_Access_Array) return Boolean renames org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler_Package_References."=";
   subtype UserEmailEventHandler_Access_Array_Access is org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler_Package_References.UserEmailEventHandler_Access_Array_Access;
   function "=" (Left, Right : UserEmailEventHandler_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler_Package_References."=";
   function Java_Box (Value : UserEmailEventHandler_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler_Package_References.Java_Box;
   function Java_Unbox_UserEmailEventHandler_Access_Array (Value : access Java_Object'Class) return UserEmailEventHandler_Access_Array_Access renames org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler_Package_References.Java_Unbox_UserEmailEventHandler_Access_Array;
   subtype UserEmailEventHandler_Access_Array_Access_Array is org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler_Package_References.UserEmailEventHandler_Access_Array_Access_Array;
   function "=" (Left, Right : UserEmailEventHandler_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler_Package_References."=";
   subtype UserEmailEventHandler_Access_Array_Access_Array_Access is org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler_Package_References.UserEmailEventHandler_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UserEmailEventHandler_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler_Package_References."=";
   function Java_Box (Value : UserEmailEventHandler_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler_Package_References.Java_Box;
   function Java_Unbox_UserEmailEventHandler_Access_Array_Access_Array (Value : access Java_Object'Class) return UserEmailEventHandler_Access_Array_Access_Array_Access renames org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler_Package_References.Java_Unbox_UserEmailEventHandler_Access_Array_Access_Array;

   type UserEmailEventHandler is new Java_Object with record
      emailVector : BasicArrayList_Access;
      emailInfo : EmailInfo_Access;
      userEmailEventNameData : UserEmailEventNameData_Access;
   end record;

   procedure Initialize (This : in out UserEmailEventHandler'Class);
   function Create return UserEmailEventHandler_Access;
   procedure receiveEmailInfo (This : in out UserEmailEventHandler; userEmailEventNameData_Param : access UserEmailEventNameData_Package.UserEmailEventNameData'Class; emailInfo_Param : access EmailInfo_Package.EmailInfo'Class);
   procedure addListener (This : in out UserEmailEventHandler; vector_Param : access BasicArrayList_Package.BasicArrayList'Class);
   procedure addListener (This : in out UserEmailEventHandler; emailEventListenerInterface_Param : access UserEmailEventListenerInterface_Package.UserEmailEventListenerInterface'Class);
   procedure removeListener (This : in out UserEmailEventHandler; emailEventListenerInterface_Param : access UserEmailEventListenerInterface_Package.UserEmailEventListenerInterface'Class);
   procedure fireEmailEvent (This : in out UserEmailEventHandler);

end org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler_Package;


