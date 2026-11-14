-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2026 AllBinary 
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
limited with org.allbinary.animation.ShapeType_Package;
package org.allbinary.animation.ShapeType_Package_References is
   type ShapeType_Access is access all org.allbinary.animation.ShapeType_Package.ShapeType'Class;
   type ShapeType_Access_Array is array (Natural range <>) of ShapeType_Access;
   type ShapeType_Access_Array_Access is access all ShapeType_Access_Array;
   type ShapeType_Access_Array_Access_Array is array (Natural range <>) of ShapeType_Access_Array_Access;
   type ShapeType_Access_Array_Access_Array_Access is access all ShapeType_Access_Array_Access_Array;
   type ShapeType_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ShapeType_Access_Array_Access;
   end record;
   function Java_Box (Value : ShapeType_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ShapeType_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ShapeType_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ShapeType_Access_Array_Access is (if Value /= null and then Value.all in ShapeType_Access_Array_Object'Class then ShapeType_Access_Array_Object'Class (Value.all).Value else null);
   type ShapeType_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ShapeType_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ShapeType_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ShapeType_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ShapeType_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ShapeType_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ShapeType_Access_Array_Access_Array_Object'Class then ShapeType_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.animation.ShapeType_Package_References;

with org.allbinary.animation.ShapeType_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.animation.ShapeType_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype ShapeType_Access is org.allbinary.animation.ShapeType_Package_References.ShapeType_Access;
   function "=" (Left, Right : ShapeType_Access) return Boolean renames org.allbinary.animation.ShapeType_Package_References."=";
   subtype ShapeType_Access_Array is org.allbinary.animation.ShapeType_Package_References.ShapeType_Access_Array;
   function "=" (Left, Right : ShapeType_Access_Array) return Boolean renames org.allbinary.animation.ShapeType_Package_References."=";
   subtype ShapeType_Access_Array_Access is org.allbinary.animation.ShapeType_Package_References.ShapeType_Access_Array_Access;
   function "=" (Left, Right : ShapeType_Access_Array_Access) return Boolean renames org.allbinary.animation.ShapeType_Package_References."=";
   function Java_Box (Value : ShapeType_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.ShapeType_Package_References.Java_Box;
   function Java_Unbox_ShapeType_Access_Array (Value : access Java_Object'Class) return ShapeType_Access_Array_Access renames org.allbinary.animation.ShapeType_Package_References.Java_Unbox_ShapeType_Access_Array;
   subtype ShapeType_Access_Array_Access_Array is org.allbinary.animation.ShapeType_Package_References.ShapeType_Access_Array_Access_Array;
   function "=" (Left, Right : ShapeType_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.ShapeType_Package_References."=";
   subtype ShapeType_Access_Array_Access_Array_Access is org.allbinary.animation.ShapeType_Package_References.ShapeType_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ShapeType_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.ShapeType_Package_References."=";
   function Java_Box (Value : ShapeType_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.ShapeType_Package_References.Java_Box;
   function Java_Unbox_ShapeType_Access_Array_Access_Array (Value : access Java_Object'Class) return ShapeType_Access_Array_Access_Array_Access renames org.allbinary.animation.ShapeType_Package_References.Java_Unbox_ShapeType_Access_Array_Access_Array;

   type ShapeType is new Java_Object with record
      name : Unbounded_String;
   end record;

   procedure Initialize (This : in out ShapeType'Class; name : Unbounded_String);
   function Create (name : Unbounded_String) return ShapeType_Access;
   function getName (This : in out ShapeType) return Unbounded_String;

end org.allbinary.animation.ShapeType_Package;


