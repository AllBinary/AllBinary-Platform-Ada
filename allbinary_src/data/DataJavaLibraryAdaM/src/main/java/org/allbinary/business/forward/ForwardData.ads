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
limited with org.allbinary.business.forward.ForwardData_Package;
package org.allbinary.business.forward.ForwardData_Package_References is
   type ForwardData_Access is access all org.allbinary.business.forward.ForwardData_Package.ForwardData'Class;
   type ForwardData_Access_Array is array (Natural range <>) of ForwardData_Access;
   type ForwardData_Access_Array_Access is access all ForwardData_Access_Array;
   type ForwardData_Access_Array_Access_Array is array (Natural range <>) of ForwardData_Access_Array_Access;
   type ForwardData_Access_Array_Access_Array_Access is access all ForwardData_Access_Array_Access_Array;
   type ForwardData_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ForwardData_Access_Array_Access;
   end record;
   function Java_Box (Value : ForwardData_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ForwardData_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ForwardData_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ForwardData_Access_Array_Access is (if Value /= null and then Value.all in ForwardData_Access_Array_Object'Class then ForwardData_Access_Array_Object'Class (Value.all).Value else null);
   type ForwardData_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ForwardData_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ForwardData_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ForwardData_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ForwardData_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ForwardData_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ForwardData_Access_Array_Access_Array_Object'Class then ForwardData_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.forward.ForwardData_Package_References;

with org.allbinary.business.forward.ForwardData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.business.forward.ForwardData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype ForwardData_Access is org.allbinary.business.forward.ForwardData_Package_References.ForwardData_Access;
   function "=" (Left, Right : ForwardData_Access) return Boolean renames org.allbinary.business.forward.ForwardData_Package_References."=";
   subtype ForwardData_Access_Array is org.allbinary.business.forward.ForwardData_Package_References.ForwardData_Access_Array;
   function "=" (Left, Right : ForwardData_Access_Array) return Boolean renames org.allbinary.business.forward.ForwardData_Package_References."=";
   subtype ForwardData_Access_Array_Access is org.allbinary.business.forward.ForwardData_Package_References.ForwardData_Access_Array_Access;
   function "=" (Left, Right : ForwardData_Access_Array_Access) return Boolean renames org.allbinary.business.forward.ForwardData_Package_References."=";
   function Java_Box (Value : ForwardData_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.forward.ForwardData_Package_References.Java_Box;
   function Java_Unbox_ForwardData_Access_Array (Value : access Java_Object'Class) return ForwardData_Access_Array_Access renames org.allbinary.business.forward.ForwardData_Package_References.Java_Unbox_ForwardData_Access_Array;
   subtype ForwardData_Access_Array_Access_Array is org.allbinary.business.forward.ForwardData_Package_References.ForwardData_Access_Array_Access_Array;
   function "=" (Left, Right : ForwardData_Access_Array_Access_Array) return Boolean renames org.allbinary.business.forward.ForwardData_Package_References."=";
   subtype ForwardData_Access_Array_Access_Array_Access is org.allbinary.business.forward.ForwardData_Package_References.ForwardData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ForwardData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.forward.ForwardData_Package_References."=";
   function Java_Box (Value : ForwardData_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.forward.ForwardData_Package_References.Java_Box;
   function Java_Unbox_ForwardData_Access_Array_Access_Array (Value : access Java_Object'Class) return ForwardData_Access_Array_Access_Array_Access renames org.allbinary.business.forward.ForwardData_Package_References.Java_Unbox_ForwardData_Access_Array_Access_Array;

   type ForwardData is new Java_Object with record
      PAGE : Unbounded_String;
      NAME : Unbounded_String;
      VALUE : Unbounded_String;
   end record;
   instance : ForwardData_Access;

   procedure Initialize (This : in out ForwardData'Class);
   function Create return ForwardData_Access;
   function getInstance return ForwardData_Access;

end org.allbinary.business.forward.ForwardData_Package;


