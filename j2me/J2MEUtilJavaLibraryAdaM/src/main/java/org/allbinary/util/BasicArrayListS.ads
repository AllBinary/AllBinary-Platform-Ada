-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
limited with org.allbinary.util.BasicArrayListS_Package;
package org.allbinary.util.BasicArrayListS_Package_References is
   type BasicArrayListS_Access is access all org.allbinary.util.BasicArrayListS_Package.BasicArrayListS'Class;
   type BasicArrayListS_Access_Array is array (Natural range <>) of BasicArrayListS_Access;
   type BasicArrayListS_Access_Array_Access is access all BasicArrayListS_Access_Array;
   type BasicArrayListS_Access_Array_Access_Array is array (Natural range <>) of BasicArrayListS_Access_Array_Access;
   type BasicArrayListS_Access_Array_Access_Array_Access is access all BasicArrayListS_Access_Array_Access_Array;
   type BasicArrayListS_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicArrayListS_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicArrayListS_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicArrayListS_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicArrayListS_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicArrayListS_Access_Array_Access is (if Value /= null and then Value.all in BasicArrayListS_Access_Array_Object'Class then BasicArrayListS_Access_Array_Object'Class (Value.all).Value else null);
   type BasicArrayListS_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicArrayListS_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicArrayListS_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicArrayListS_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicArrayListS_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicArrayListS_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in BasicArrayListS_Access_Array_Access_Array_Object'Class then BasicArrayListS_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.util.BasicArrayListS_Package_References;

with org.allbinary.util.BasicArrayListS_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;

package org.allbinary.util.BasicArrayListS_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype BasicArrayListS_Access is org.allbinary.util.BasicArrayListS_Package_References.BasicArrayListS_Access;
   function "=" (Left, Right : BasicArrayListS_Access) return Boolean renames org.allbinary.util.BasicArrayListS_Package_References."=";
   subtype BasicArrayListS_Access_Array is org.allbinary.util.BasicArrayListS_Package_References.BasicArrayListS_Access_Array;
   function "=" (Left, Right : BasicArrayListS_Access_Array) return Boolean renames org.allbinary.util.BasicArrayListS_Package_References."=";
   subtype BasicArrayListS_Access_Array_Access is org.allbinary.util.BasicArrayListS_Package_References.BasicArrayListS_Access_Array_Access;
   function "=" (Left, Right : BasicArrayListS_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayListS_Package_References."=";
   function Java_Box (Value : BasicArrayListS_Access_Array_Access) return Java_Object_Access renames org.allbinary.util.BasicArrayListS_Package_References.Java_Box;
   function Java_Unbox_BasicArrayListS_Access_Array (Value : access Java_Object'Class) return BasicArrayListS_Access_Array_Access renames org.allbinary.util.BasicArrayListS_Package_References.Java_Unbox_BasicArrayListS_Access_Array;
   subtype BasicArrayListS_Access_Array_Access_Array is org.allbinary.util.BasicArrayListS_Package_References.BasicArrayListS_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayListS_Access_Array_Access_Array) return Boolean renames org.allbinary.util.BasicArrayListS_Package_References."=";
   subtype BasicArrayListS_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayListS_Package_References.BasicArrayListS_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayListS_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayListS_Package_References."=";
   function Java_Box (Value : BasicArrayListS_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.util.BasicArrayListS_Package_References.Java_Box;
   function Java_Unbox_BasicArrayListS_Access_Array_Access_Array (Value : access Java_Object'Class) return BasicArrayListS_Access_Array_Access_Array_Access renames org.allbinary.util.BasicArrayListS_Package_References.Java_Unbox_BasicArrayListS_Access_Array_Access_Array;

   type BasicArrayListS is new BasicArrayList with null record;

   procedure Initialize (This : in out BasicArrayListS'Class; size : Integer);
   function Create (size : Integer) return BasicArrayListS_Access;

end org.allbinary.util.BasicArrayListS_Package;


