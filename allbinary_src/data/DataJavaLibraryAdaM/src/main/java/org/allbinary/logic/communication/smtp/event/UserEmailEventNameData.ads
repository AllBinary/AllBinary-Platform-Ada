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
limited with org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package;
package org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package_References is
   type UserEmailEventNameData_Access is access all org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package.UserEmailEventNameData'Class;
   type UserEmailEventNameData_Access_Array is array (Natural range <>) of UserEmailEventNameData_Access;
   type UserEmailEventNameData_Access_Array_Access is access all UserEmailEventNameData_Access_Array;
   type UserEmailEventNameData_Access_Array_Access_Array is array (Natural range <>) of UserEmailEventNameData_Access_Array_Access;
   type UserEmailEventNameData_Access_Array_Access_Array_Access is access all UserEmailEventNameData_Access_Array_Access_Array;
   type UserEmailEventNameData_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : UserEmailEventNameData_Access_Array_Access;
   end record;
   function Java_Box (Value : UserEmailEventNameData_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new UserEmailEventNameData_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_UserEmailEventNameData_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return UserEmailEventNameData_Access_Array_Access is (if Value /= null and then Value.all in UserEmailEventNameData_Access_Array_Object'Class then UserEmailEventNameData_Access_Array_Object'Class (Value.all).Value else null);
   type UserEmailEventNameData_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : UserEmailEventNameData_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : UserEmailEventNameData_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new UserEmailEventNameData_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_UserEmailEventNameData_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return UserEmailEventNameData_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in UserEmailEventNameData_Access_Array_Access_Array_Object'Class then UserEmailEventNameData_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package_References;

with org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;

package org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype UserEmailEventNameData_Access is org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package_References.UserEmailEventNameData_Access;
   function "=" (Left, Right : UserEmailEventNameData_Access) return Boolean renames org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package_References."=";
   subtype UserEmailEventNameData_Access_Array is org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package_References.UserEmailEventNameData_Access_Array;
   function "=" (Left, Right : UserEmailEventNameData_Access_Array) return Boolean renames org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package_References."=";
   subtype UserEmailEventNameData_Access_Array_Access is org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package_References.UserEmailEventNameData_Access_Array_Access;
   function "=" (Left, Right : UserEmailEventNameData_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package_References."=";
   function Java_Box (Value : UserEmailEventNameData_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package_References.Java_Box;
   function Java_Unbox_UserEmailEventNameData_Access_Array (Value : access Java_Object'Class) return UserEmailEventNameData_Access_Array_Access renames org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package_References.Java_Unbox_UserEmailEventNameData_Access_Array;
   subtype UserEmailEventNameData_Access_Array_Access_Array is org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package_References.UserEmailEventNameData_Access_Array_Access_Array;
   function "=" (Left, Right : UserEmailEventNameData_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package_References."=";
   subtype UserEmailEventNameData_Access_Array_Access_Array_Access is org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package_References.UserEmailEventNameData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UserEmailEventNameData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package_References."=";
   function Java_Box (Value : UserEmailEventNameData_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package_References.Java_Box;
   function Java_Unbox_UserEmailEventNameData_Access_Array_Access_Array (Value : access Java_Object'Class) return UserEmailEventNameData_Access_Array_Access_Array_Access renames org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package_References.Java_Unbox_UserEmailEventNameData_Access_Array_Access_Array;

   type UserEmailEventNameData is new Java_Object with record
      eventNameId : Integer;
      eventHandlerName : Unbounded_String;
   end record;
   userNameEvenNameHashMap : HashMap_Access;
   nextId : Integer;
   INSTALLER : UserEmailEventNameData_Access;
   EXCEPTION_Id : UserEmailEventNameData_Access;
   LOGGEDEXCEPTION : UserEmailEventNameData_Access;
   ERROR : UserEmailEventNameData_Access;
   OUTOFMEMORY : UserEmailEventNameData_Access;
   ADMINGENERATINGSTATICPAGES : UserEmailEventNameData_Access;
   STOREERROROCCURRED : UserEmailEventNameData_Access;
   STOREOUTOFMEMORY : UserEmailEventNameData_Access;
   STORECREATED : UserEmailEventNameData_Access;
   STOREOPENED : UserEmailEventNameData_Access;
   STORECLOSED : UserEmailEventNameData_Access;
   STOREGENERATINGSTATICPAGES : UserEmailEventNameData_Access;
   PRODUCTISOUT : UserEmailEventNameData_Access;
   PRODUCTISAVAILABLE : UserEmailEventNameData_Access;
   PRODUCTISOLD : UserEmailEventNameData_Access;
   PRODUCTISONSALE : UserEmailEventNameData_Access;
   PRODUCTSALEISOVER : UserEmailEventNameData_Access;
   ORDERPREPROCESSING : UserEmailEventNameData_Access;
   ORDERPROCESSING : UserEmailEventNameData_Access;
   ORDERCANCELLED : UserEmailEventNameData_Access;
   ORDERPARTIALLYSHIPPED : UserEmailEventNameData_Access;
   ORDERSHIPPED : UserEmailEventNameData_Access;
   QUOTEREQUEST : UserEmailEventNameData_Access;
   NEWPASSWORD : UserEmailEventNameData_Access;

   procedure Initialize (This : in out UserEmailEventNameData'Class; eventHandlerName : Unbounded_String);
   function Create (eventHandlerName : Unbounded_String) return UserEmailEventNameData_Access;
   procedure initNextId (This : in out UserEmailEventNameData);
   function isEvent (This : in out UserEmailEventNameData; userEmailEventNameString : Unbounded_String) return Boolean;
   procedure isEvent (This : in out UserEmailEventNameData; userEmailEventNameString : Unbounded_String);
   function getInstance (userEmailEventNameString : Unbounded_String) return UserEmailEventNameData_Access;
   procedure getInstance (userEmailEventNameString : Unbounded_String);
   function toString (This : in out UserEmailEventNameData) return Unbounded_String;

end org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package;


