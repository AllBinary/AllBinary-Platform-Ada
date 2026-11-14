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
limited with org.allbinary.graphics.ItemColorFactory_Package;
package org.allbinary.graphics.ItemColorFactory_Package_References is
   type ItemColorFactory_Access is access all org.allbinary.graphics.ItemColorFactory_Package.ItemColorFactory'Class;
   type ItemColorFactory_Access_Array is array (Natural range <>) of ItemColorFactory_Access;
   type ItemColorFactory_Access_Array_Access is access all ItemColorFactory_Access_Array;
   type ItemColorFactory_Access_Array_Access_Array is array (Natural range <>) of ItemColorFactory_Access_Array_Access;
   type ItemColorFactory_Access_Array_Access_Array_Access is access all ItemColorFactory_Access_Array_Access_Array;
   type ItemColorFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ItemColorFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : ItemColorFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ItemColorFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ItemColorFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ItemColorFactory_Access_Array_Access is (if Value /= null and then Value.all in ItemColorFactory_Access_Array_Object'Class then ItemColorFactory_Access_Array_Object'Class (Value.all).Value else null);
   type ItemColorFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ItemColorFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ItemColorFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ItemColorFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ItemColorFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ItemColorFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ItemColorFactory_Access_Array_Access_Array_Object'Class then ItemColorFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.ItemColorFactory_Package_References;

with org.allbinary.graphics.ItemColorFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.graphics.ItemColorFactory_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype ItemColorFactory_Access is org.allbinary.graphics.ItemColorFactory_Package_References.ItemColorFactory_Access;
   function "=" (Left, Right : ItemColorFactory_Access) return Boolean renames org.allbinary.graphics.ItemColorFactory_Package_References."=";
   subtype ItemColorFactory_Access_Array is org.allbinary.graphics.ItemColorFactory_Package_References.ItemColorFactory_Access_Array;
   function "=" (Left, Right : ItemColorFactory_Access_Array) return Boolean renames org.allbinary.graphics.ItemColorFactory_Package_References."=";
   subtype ItemColorFactory_Access_Array_Access is org.allbinary.graphics.ItemColorFactory_Package_References.ItemColorFactory_Access_Array_Access;
   function "=" (Left, Right : ItemColorFactory_Access_Array_Access) return Boolean renames org.allbinary.graphics.ItemColorFactory_Package_References."=";
   function Java_Box (Value : ItemColorFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.ItemColorFactory_Package_References.Java_Box;
   function Java_Unbox_ItemColorFactory_Access_Array (Value : access Java_Object'Class) return ItemColorFactory_Access_Array_Access renames org.allbinary.graphics.ItemColorFactory_Package_References.Java_Unbox_ItemColorFactory_Access_Array;
   subtype ItemColorFactory_Access_Array_Access_Array is org.allbinary.graphics.ItemColorFactory_Package_References.ItemColorFactory_Access_Array_Access_Array;
   function "=" (Left, Right : ItemColorFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.ItemColorFactory_Package_References."=";
   subtype ItemColorFactory_Access_Array_Access_Array_Access is org.allbinary.graphics.ItemColorFactory_Package_References.ItemColorFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ItemColorFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.ItemColorFactory_Package_References."=";
   function Java_Box (Value : ItemColorFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.ItemColorFactory_Package_References.Java_Box;
   function Java_Unbox_ItemColorFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return ItemColorFactory_Access_Array_Access_Array_Access renames org.allbinary.graphics.ItemColorFactory_Package_References.Java_Unbox_ItemColorFactory_Access_Array_Access_Array;

   type ItemColorFactory is new Java_Object with record
      INVERT_PAINT : Integer;
      PAINT : Integer;
      TEXT_FIELD_NO_FOCUS : Integer;
   end record;
   instance : ItemColorFactory_Access;

   procedure Initialize (This : in out ItemColorFactory'Class);
   function Create return ItemColorFactory_Access;
   function getInstance return ItemColorFactory_Access;

end org.allbinary.graphics.ItemColorFactory_Package;


