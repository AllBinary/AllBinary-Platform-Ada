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
limited with org.allbinary.logic.communication.http.AcceptableResponseUtil_Package;
package org.allbinary.logic.communication.http.AcceptableResponseUtil_Package_References is
   type AcceptableResponseUtil_Access is access all org.allbinary.logic.communication.http.AcceptableResponseUtil_Package.AcceptableResponseUtil'Class;
   type AcceptableResponseUtil_Access_Array is array (Natural range <>) of AcceptableResponseUtil_Access;
   type AcceptableResponseUtil_Access_Array_Access is access all AcceptableResponseUtil_Access_Array;
   type AcceptableResponseUtil_Access_Array_Access_Array is array (Natural range <>) of AcceptableResponseUtil_Access_Array_Access;
   type AcceptableResponseUtil_Access_Array_Access_Array_Access is access all AcceptableResponseUtil_Access_Array_Access_Array;
   type AcceptableResponseUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AcceptableResponseUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : AcceptableResponseUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AcceptableResponseUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AcceptableResponseUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AcceptableResponseUtil_Access_Array_Access is (if Value /= null and then Value.all in AcceptableResponseUtil_Access_Array_Object'Class then AcceptableResponseUtil_Access_Array_Object'Class (Value.all).Value else null);
   type AcceptableResponseUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AcceptableResponseUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AcceptableResponseUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AcceptableResponseUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AcceptableResponseUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AcceptableResponseUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AcceptableResponseUtil_Access_Array_Access_Array_Object'Class then AcceptableResponseUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.communication.http.AcceptableResponseUtil_Package_References;

with org.allbinary.logic.communication.http.AcceptableResponseUtil_Package_References;
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

package org.allbinary.logic.communication.http.AcceptableResponseUtil_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype AcceptableResponseUtil_Access is org.allbinary.logic.communication.http.AcceptableResponseUtil_Package_References.AcceptableResponseUtil_Access;
   function "=" (Left, Right : AcceptableResponseUtil_Access) return Boolean renames org.allbinary.logic.communication.http.AcceptableResponseUtil_Package_References."=";
   subtype AcceptableResponseUtil_Access_Array is org.allbinary.logic.communication.http.AcceptableResponseUtil_Package_References.AcceptableResponseUtil_Access_Array;
   function "=" (Left, Right : AcceptableResponseUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.http.AcceptableResponseUtil_Package_References."=";
   subtype AcceptableResponseUtil_Access_Array_Access is org.allbinary.logic.communication.http.AcceptableResponseUtil_Package_References.AcceptableResponseUtil_Access_Array_Access;
   function "=" (Left, Right : AcceptableResponseUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.http.AcceptableResponseUtil_Package_References."=";
   function Java_Box (Value : AcceptableResponseUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.http.AcceptableResponseUtil_Package_References.Java_Box;
   function Java_Unbox_AcceptableResponseUtil_Access_Array (Value : access Java_Object'Class) return AcceptableResponseUtil_Access_Array_Access renames org.allbinary.logic.communication.http.AcceptableResponseUtil_Package_References.Java_Unbox_AcceptableResponseUtil_Access_Array;
   subtype AcceptableResponseUtil_Access_Array_Access_Array is org.allbinary.logic.communication.http.AcceptableResponseUtil_Package_References.AcceptableResponseUtil_Access_Array_Access_Array;
   function "=" (Left, Right : AcceptableResponseUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.http.AcceptableResponseUtil_Package_References."=";
   subtype AcceptableResponseUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.http.AcceptableResponseUtil_Package_References.AcceptableResponseUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AcceptableResponseUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.http.AcceptableResponseUtil_Package_References."=";
   function Java_Box (Value : AcceptableResponseUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.http.AcceptableResponseUtil_Package_References.Java_Box;
   function Java_Unbox_AcceptableResponseUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return AcceptableResponseUtil_Access_Array_Access_Array_Access renames org.allbinary.logic.communication.http.AcceptableResponseUtil_Package_References.Java_Unbox_AcceptableResponseUtil_Access_Array_Access_Array;

   type AcceptableResponseUtil is new Java_Object with record
      candidateVector : BasicArrayList_Access;
      tagNameVector : BasicArrayList_Access;
   end record;
   instance : AcceptableResponseUtil_Access;

   procedure Initialize (This : in out AcceptableResponseUtil'Class);
   function Create return AcceptableResponseUtil_Access;
   function getInstance return AcceptableResponseUtil_Access;
   function get (This : in out AcceptableResponseUtil; index : Integer) return Unbounded_String;
   procedure get (This : in out AcceptableResponseUtil; index : Integer);
   function getTagName (This : in out AcceptableResponseUtil; index : Integer) return Unbounded_String;
   procedure getTagName (This : in out AcceptableResponseUtil; index : Integer);
   function size (This : in out AcceptableResponseUtil) return Integer;

end org.allbinary.logic.communication.http.AcceptableResponseUtil_Package;


