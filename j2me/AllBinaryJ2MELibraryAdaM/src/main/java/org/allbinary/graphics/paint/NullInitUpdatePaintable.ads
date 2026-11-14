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
limited with org.allbinary.graphics.paint.NullInitUpdatePaintable_Package;
package org.allbinary.graphics.paint.NullInitUpdatePaintable_Package_References is
   type NullInitUpdatePaintable_Access is access all org.allbinary.graphics.paint.NullInitUpdatePaintable_Package.NullInitUpdatePaintable'Class;
   type NullInitUpdatePaintable_Access_Array is array (Natural range <>) of NullInitUpdatePaintable_Access;
   type NullInitUpdatePaintable_Access_Array_Access is access all NullInitUpdatePaintable_Access_Array;
   type NullInitUpdatePaintable_Access_Array_Access_Array is array (Natural range <>) of NullInitUpdatePaintable_Access_Array_Access;
   type NullInitUpdatePaintable_Access_Array_Access_Array_Access is access all NullInitUpdatePaintable_Access_Array_Access_Array;
   type NullInitUpdatePaintable_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NullInitUpdatePaintable_Access_Array_Access;
   end record;
   function Java_Box (Value : NullInitUpdatePaintable_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NullInitUpdatePaintable_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NullInitUpdatePaintable_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NullInitUpdatePaintable_Access_Array_Access is (if Value /= null and then Value.all in NullInitUpdatePaintable_Access_Array_Object'Class then NullInitUpdatePaintable_Access_Array_Object'Class (Value.all).Value else null);
   type NullInitUpdatePaintable_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NullInitUpdatePaintable_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : NullInitUpdatePaintable_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NullInitUpdatePaintable_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NullInitUpdatePaintable_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NullInitUpdatePaintable_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in NullInitUpdatePaintable_Access_Array_Access_Array_Object'Class then NullInitUpdatePaintable_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.paint.NullInitUpdatePaintable_Package_References;

with org.allbinary.graphics.paint.NullInitUpdatePaintable_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.graphics.paint.InitUpdatePaintable_Package; use org.allbinary.graphics.paint.InitUpdatePaintable_Package;

package org.allbinary.graphics.paint.NullInitUpdatePaintable_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype NullInitUpdatePaintable_Access is org.allbinary.graphics.paint.NullInitUpdatePaintable_Package_References.NullInitUpdatePaintable_Access;
   function "=" (Left, Right : NullInitUpdatePaintable_Access) return Boolean renames org.allbinary.graphics.paint.NullInitUpdatePaintable_Package_References."=";
   subtype NullInitUpdatePaintable_Access_Array is org.allbinary.graphics.paint.NullInitUpdatePaintable_Package_References.NullInitUpdatePaintable_Access_Array;
   function "=" (Left, Right : NullInitUpdatePaintable_Access_Array) return Boolean renames org.allbinary.graphics.paint.NullInitUpdatePaintable_Package_References."=";
   subtype NullInitUpdatePaintable_Access_Array_Access is org.allbinary.graphics.paint.NullInitUpdatePaintable_Package_References.NullInitUpdatePaintable_Access_Array_Access;
   function "=" (Left, Right : NullInitUpdatePaintable_Access_Array_Access) return Boolean renames org.allbinary.graphics.paint.NullInitUpdatePaintable_Package_References."=";
   function Java_Box (Value : NullInitUpdatePaintable_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.paint.NullInitUpdatePaintable_Package_References.Java_Box;
   function Java_Unbox_NullInitUpdatePaintable_Access_Array (Value : access Java_Object'Class) return NullInitUpdatePaintable_Access_Array_Access renames org.allbinary.graphics.paint.NullInitUpdatePaintable_Package_References.Java_Unbox_NullInitUpdatePaintable_Access_Array;
   subtype NullInitUpdatePaintable_Access_Array_Access_Array is org.allbinary.graphics.paint.NullInitUpdatePaintable_Package_References.NullInitUpdatePaintable_Access_Array_Access_Array;
   function "=" (Left, Right : NullInitUpdatePaintable_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.paint.NullInitUpdatePaintable_Package_References."=";
   subtype NullInitUpdatePaintable_Access_Array_Access_Array_Access is org.allbinary.graphics.paint.NullInitUpdatePaintable_Package_References.NullInitUpdatePaintable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NullInitUpdatePaintable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.paint.NullInitUpdatePaintable_Package_References."=";
   function Java_Box (Value : NullInitUpdatePaintable_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.paint.NullInitUpdatePaintable_Package_References.Java_Box;
   function Java_Unbox_NullInitUpdatePaintable_Access_Array_Access_Array (Value : access Java_Object'Class) return NullInitUpdatePaintable_Access_Array_Access_Array_Access renames org.allbinary.graphics.paint.NullInitUpdatePaintable_Package_References.Java_Unbox_NullInitUpdatePaintable_Access_Array_Access_Array;

   type NullInitUpdatePaintable is new InitUpdatePaintable with null record;
   SINGLETON : NullInitUpdatePaintable_Access;

   procedure Initialize (This : in out NullInitUpdatePaintable'Class);
   function Create return NullInitUpdatePaintable_Access;
   function getInstance return InitUpdatePaintable_Access;

end org.allbinary.graphics.paint.NullInitUpdatePaintable_Package;


