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
limited with org.allbinary.logic.communication.http.AcceptableResponseGenerator_Package;
package org.allbinary.logic.communication.http.AcceptableResponseGenerator_Package_References is
   type AcceptableResponseGenerator_Access is access all org.allbinary.logic.communication.http.AcceptableResponseGenerator_Package.AcceptableResponseGenerator'Class;
   type AcceptableResponseGenerator_Access_Array is array (Natural range <>) of AcceptableResponseGenerator_Access;
   type AcceptableResponseGenerator_Access_Array_Access is access all AcceptableResponseGenerator_Access_Array;
   type AcceptableResponseGenerator_Access_Array_Access_Array is array (Natural range <>) of AcceptableResponseGenerator_Access_Array_Access;
   type AcceptableResponseGenerator_Access_Array_Access_Array_Access is access all AcceptableResponseGenerator_Access_Array_Access_Array;
   type AcceptableResponseGenerator_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AcceptableResponseGenerator_Access_Array_Access;
   end record;
   function Java_Box (Value : AcceptableResponseGenerator_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AcceptableResponseGenerator_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AcceptableResponseGenerator_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AcceptableResponseGenerator_Access_Array_Access is (if Value /= null and then Value.all in AcceptableResponseGenerator_Access_Array_Object'Class then AcceptableResponseGenerator_Access_Array_Object'Class (Value.all).Value else null);
   type AcceptableResponseGenerator_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AcceptableResponseGenerator_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AcceptableResponseGenerator_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AcceptableResponseGenerator_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AcceptableResponseGenerator_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AcceptableResponseGenerator_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AcceptableResponseGenerator_Access_Array_Access_Array_Object'Class then AcceptableResponseGenerator_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.communication.http.AcceptableResponseGenerator_Package_References;

with org.allbinary.logic.communication.http.AcceptableResponseGenerator_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.servlet.http.HttpServletRequest_Package; use javax.servlet.http.HttpServletRequest_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;

package org.allbinary.logic.communication.http.AcceptableResponseGenerator_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype AcceptableResponseGenerator_Access is org.allbinary.logic.communication.http.AcceptableResponseGenerator_Package_References.AcceptableResponseGenerator_Access;
   function "=" (Left, Right : AcceptableResponseGenerator_Access) return Boolean renames org.allbinary.logic.communication.http.AcceptableResponseGenerator_Package_References."=";
   subtype AcceptableResponseGenerator_Access_Array is org.allbinary.logic.communication.http.AcceptableResponseGenerator_Package_References.AcceptableResponseGenerator_Access_Array;
   function "=" (Left, Right : AcceptableResponseGenerator_Access_Array) return Boolean renames org.allbinary.logic.communication.http.AcceptableResponseGenerator_Package_References."=";
   subtype AcceptableResponseGenerator_Access_Array_Access is org.allbinary.logic.communication.http.AcceptableResponseGenerator_Package_References.AcceptableResponseGenerator_Access_Array_Access;
   function "=" (Left, Right : AcceptableResponseGenerator_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.http.AcceptableResponseGenerator_Package_References."=";
   function Java_Box (Value : AcceptableResponseGenerator_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.http.AcceptableResponseGenerator_Package_References.Java_Box;
   function Java_Unbox_AcceptableResponseGenerator_Access_Array (Value : access Java_Object'Class) return AcceptableResponseGenerator_Access_Array_Access renames org.allbinary.logic.communication.http.AcceptableResponseGenerator_Package_References.Java_Unbox_AcceptableResponseGenerator_Access_Array;
   subtype AcceptableResponseGenerator_Access_Array_Access_Array is org.allbinary.logic.communication.http.AcceptableResponseGenerator_Package_References.AcceptableResponseGenerator_Access_Array_Access_Array;
   function "=" (Left, Right : AcceptableResponseGenerator_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.http.AcceptableResponseGenerator_Package_References."=";
   subtype AcceptableResponseGenerator_Access_Array_Access_Array_Access is org.allbinary.logic.communication.http.AcceptableResponseGenerator_Package_References.AcceptableResponseGenerator_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AcceptableResponseGenerator_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.http.AcceptableResponseGenerator_Package_References."=";
   function Java_Box (Value : AcceptableResponseGenerator_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.http.AcceptableResponseGenerator_Package_References.Java_Box;
   function Java_Unbox_AcceptableResponseGenerator_Access_Array_Access_Array (Value : access Java_Object'Class) return AcceptableResponseGenerator_Access_Array_Access_Array_Access renames org.allbinary.logic.communication.http.AcceptableResponseGenerator_Package_References.Java_Unbox_AcceptableResponseGenerator_Access_Array_Access_Array;

   type AcceptableResponseGenerator is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : AcceptableResponseGenerator_Access;

   procedure Initialize (This : in out AcceptableResponseGenerator'Class);
   function Create return AcceptableResponseGenerator_Access;
   function getInstance return AcceptableResponseGenerator_Access;
   function get (This : in out AcceptableResponseGenerator; httpServletRequest_Param : access HttpServletRequest_Package.HttpServletRequest'Class) return Unbounded_String;
   procedure get (This : in out AcceptableResponseGenerator; httpServletRequest_Param : access HttpServletRequest_Package.HttpServletRequest'Class);

end org.allbinary.logic.communication.http.AcceptableResponseGenerator_Package;


