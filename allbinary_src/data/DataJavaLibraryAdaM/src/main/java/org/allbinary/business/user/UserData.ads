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
limited with org.allbinary.business.user.UserData_Package;
package org.allbinary.business.user.UserData_Package_References is
   type UserData_Access is access all org.allbinary.business.user.UserData_Package.UserData'Class;
   type UserData_Access_Array is array (Natural range <>) of UserData_Access;
   type UserData_Access_Array_Access is access all UserData_Access_Array;
   type UserData_Access_Array_Access_Array is array (Natural range <>) of UserData_Access_Array_Access;
   type UserData_Access_Array_Access_Array_Access is access all UserData_Access_Array_Access_Array;
   type UserData_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : UserData_Access_Array_Access;
   end record;
   function Java_Box (Value : UserData_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new UserData_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_UserData_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return UserData_Access_Array_Access is (if Value /= null and then Value.all in UserData_Access_Array_Object'Class then UserData_Access_Array_Object'Class (Value.all).Value else null);
   type UserData_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : UserData_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : UserData_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new UserData_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_UserData_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return UserData_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in UserData_Access_Array_Access_Array_Object'Class then UserData_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.user.UserData_Package_References;

with org.allbinary.business.user.UserData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.business.user.UserData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype UserData_Access is org.allbinary.business.user.UserData_Package_References.UserData_Access;
   function "=" (Left, Right : UserData_Access) return Boolean renames org.allbinary.business.user.UserData_Package_References."=";
   subtype UserData_Access_Array is org.allbinary.business.user.UserData_Package_References.UserData_Access_Array;
   function "=" (Left, Right : UserData_Access_Array) return Boolean renames org.allbinary.business.user.UserData_Package_References."=";
   subtype UserData_Access_Array_Access is org.allbinary.business.user.UserData_Package_References.UserData_Access_Array_Access;
   function "=" (Left, Right : UserData_Access_Array_Access) return Boolean renames org.allbinary.business.user.UserData_Package_References."=";
   function Java_Box (Value : UserData_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.UserData_Package_References.Java_Box;
   function Java_Unbox_UserData_Access_Array (Value : access Java_Object'Class) return UserData_Access_Array_Access renames org.allbinary.business.user.UserData_Package_References.Java_Unbox_UserData_Access_Array;
   subtype UserData_Access_Array_Access_Array is org.allbinary.business.user.UserData_Package_References.UserData_Access_Array_Access_Array;
   function "=" (Left, Right : UserData_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.UserData_Package_References."=";
   subtype UserData_Access_Array_Access_Array_Access is org.allbinary.business.user.UserData_Package_References.UserData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UserData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.UserData_Package_References."=";
   function Java_Box (Value : UserData_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.UserData_Package_References.Java_Box;
   function Java_Unbox_UserData_Access_Array_Access_Array (Value : access Java_Object'Class) return UserData_Access_Array_Access_Array_Access renames org.allbinary.business.user.UserData_Package_References.Java_Unbox_UserData_Access_Array_Access_Array;

   type UserData is new Java_Object with null record;
   MAXLEN : Integer;
   NAME : Unbounded_String;
   USERNAME : Unbounded_String;
   PASSWORD : Unbounded_String;
   PREFIXNAME : Unbounded_String;
   FIRSTNAME : Unbounded_String;
   LASTNAME : Unbounded_String;
   MIDDLENAME : Unbounded_String;
   SUFFIXNAME : Unbounded_String;
   COMPANY : Unbounded_String;
   POSITIONATCOMPANY : Unbounded_String;
   MAINEMAIL : Unbounded_String;
   SECONDARYEMAIL : Unbounded_String;
   HOMEPHONE : Unbounded_String;
   CELLPHONE : Unbounded_String;
   WORKPHONE : Unbounded_String;
   OTHERCONTACT : Unbounded_String;
   ELECTRONICDEVICE : Unbounded_String;
   FAX : Unbounded_String;
   SECRET : Unbounded_String;
   PERMISSIONS : Unbounded_String;
   CONFIGURATION : Unbounded_String;

   procedure Initialize (This : in out UserData'Class);
   function Create return UserData_Access;

end org.allbinary.business.user.UserData_Package;


