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
limited with org.allbinary.util.BasicArrayListD_Package;
package org.allbinary.util.BasicArrayListD_Package_References is
   type BasicArrayListD_Access is access all org.allbinary.util.BasicArrayListD_Package.BasicArrayListD'Class;
   type BasicArrayListD_Access_Array is array (Natural range <>) of BasicArrayListD_Access;
   type BasicArrayListD_Access_Array_Access is access all BasicArrayListD_Access_Array;
   type BasicArrayListD_Access_Array_Access_Array is array (Natural range <>) of BasicArrayListD_Access_Array_Access;
   type BasicArrayListD_Access_Array_Access_Array_Access is access all BasicArrayListD_Access_Array_Access_Array;
   type BasicArrayListD_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicArrayListD_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicArrayListD_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicArrayListD_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicArrayListD_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicArrayListD_Access_Array_Access is (if Value /= null and then Value.all in BasicArrayListD_Access_Array_Object'Class then BasicArrayListD_Access_Array_Object'Class (Value.all).Value else null);
   type BasicArrayListD_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicArrayListD_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicArrayListD_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicArrayListD_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicArrayListD_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicArrayListD_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in BasicArrayListD_Access_Array_Access_Array_Object'Class then BasicArrayListD_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.util.BasicArrayListD_Package_References;

with org.allbinary.util.BasicArrayListD_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.util.BasicArrayListS_Package; use org.allbinary.util.BasicArrayListS_Package;

package org.allbinary.util.BasicArrayListD_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype BasicArrayListD_Access is org.allbinary.util.BasicArrayListD_Package_References.BasicArrayListD_Access;
   function "=" (Left, Right : BasicArrayListD_Access) return Boolean renames org.allbinary.util.BasicArrayListD_Package_References."=";
   subtype BasicArrayListD_Access_Array is org.allbinary.util.BasicArrayListD_Package_References.BasicArrayListD_Access_Array;
   function "=" (Left, Right : BasicArrayListD_Access_Array) return Boolean renames org.allbinary.util.BasicArrayListD_Package_References."=";
   subtype BasicArrayListD_Access_Array_Access is org.allbinary.util.BasicArrayListD_Package_References.BasicArrayListD_Access_Array_Access;
   function "=" (Left, Right : BasicArrayListD_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayListD_Package_References."=";
   function Java_Box (Value : BasicArrayListD_Access_Array_Access) return Java_Object_Access renames org.allbinary.util.BasicArrayListD_Package_References.Java_Box;
   function Java_Unbox_BasicArrayListD_Access_Array (Value : access Java_Object'Class) return BasicArrayListD_Access_Array_Access renames org.allbinary.util.BasicArrayListD_Package_References.Java_Unbox_BasicArrayListD_Access_Array;
   subtype BasicArrayListD_Access_Array_Access_Array is org.allbinary.util.BasicArrayListD_Package_References.BasicArrayListD_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayListD_Access_Array_Access_Array) return Boolean renames org.allbinary.util.BasicArrayListD_Package_References."=";
   subtype BasicArrayListD_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayListD_Package_References.BasicArrayListD_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayListD_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayListD_Package_References."=";
   function Java_Box (Value : BasicArrayListD_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.util.BasicArrayListD_Package_References.Java_Box;
   function Java_Unbox_BasicArrayListD_Access_Array_Access_Array (Value : access Java_Object'Class) return BasicArrayListD_Access_Array_Access_Array_Access renames org.allbinary.util.BasicArrayListD_Package_References.Java_Unbox_BasicArrayListD_Access_Array_Access_Array;

   type BasicArrayListD is new BasicArrayListS with null record;

   procedure Initialize (This : in out BasicArrayListD'Class);
   function Create return BasicArrayListD_Access;

end org.allbinary.util.BasicArrayListD_Package;


