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
limited with org.allbinary.input.motion.button.TouchButtonsPaintableFactory_Package;
package org.allbinary.input.motion.button.TouchButtonsPaintableFactory_Package_References is
   type TouchButtonsPaintableFactory_Access is access all org.allbinary.input.motion.button.TouchButtonsPaintableFactory_Package.TouchButtonsPaintableFactory'Class;
   type TouchButtonsPaintableFactory_Access_Array is array (Natural range <>) of TouchButtonsPaintableFactory_Access;
   type TouchButtonsPaintableFactory_Access_Array_Access is access all TouchButtonsPaintableFactory_Access_Array;
   type TouchButtonsPaintableFactory_Access_Array_Access_Array is array (Natural range <>) of TouchButtonsPaintableFactory_Access_Array_Access;
   type TouchButtonsPaintableFactory_Access_Array_Access_Array_Access is access all TouchButtonsPaintableFactory_Access_Array_Access_Array;
   type TouchButtonsPaintableFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TouchButtonsPaintableFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : TouchButtonsPaintableFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TouchButtonsPaintableFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TouchButtonsPaintableFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TouchButtonsPaintableFactory_Access_Array_Access is (if Value /= null and then Value.all in TouchButtonsPaintableFactory_Access_Array_Object'Class then TouchButtonsPaintableFactory_Access_Array_Object'Class (Value.all).Value else null);
   type TouchButtonsPaintableFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TouchButtonsPaintableFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TouchButtonsPaintableFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TouchButtonsPaintableFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TouchButtonsPaintableFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TouchButtonsPaintableFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TouchButtonsPaintableFactory_Access_Array_Access_Array_Object'Class then TouchButtonsPaintableFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.motion.button.TouchButtonsPaintableFactory_Package_References;

with org.allbinary.input.motion.button.TouchButtonsPaintableFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
limited with org.allbinary.graphics.paint.Paintable_Package;
with org.allbinary.graphics.paint.Paintable_Package_References;

package org.allbinary.input.motion.button.TouchButtonsPaintableFactory_Package is

   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package Paintable_Package renames Standard.org.allbinary.graphics.paint.Paintable_Package;
   package Reference_Types is
   subtype BasicColor_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access;
   use type BasicColor_Access;
   subtype BasicColor_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array;
   use type BasicColor_Access_Array;
   subtype BasicColor_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access;
   use type BasicColor_Access_Array_Access;
   subtype BasicColor_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array;
   use type BasicColor_Access_Array_Access_Array;
   subtype BasicColor_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array_Access;
   use type BasicColor_Access_Array_Access_Array_Access;
   subtype Paintable_Access is org.allbinary.graphics.paint.Paintable_Package_References.Paintable_Access;
   use type Paintable_Access;
   subtype Paintable_Access_Array is org.allbinary.graphics.paint.Paintable_Package_References.Paintable_Access_Array;
   use type Paintable_Access_Array;
   subtype Paintable_Access_Array_Access is org.allbinary.graphics.paint.Paintable_Package_References.Paintable_Access_Array_Access;
   use type Paintable_Access_Array_Access;
   subtype Paintable_Access_Array_Access_Array is org.allbinary.graphics.paint.Paintable_Package_References.Paintable_Access_Array_Access_Array;
   use type Paintable_Access_Array_Access_Array;
   subtype Paintable_Access_Array_Access_Array_Access is org.allbinary.graphics.paint.Paintable_Package_References.Paintable_Access_Array_Access_Array_Access;
   use type Paintable_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype TouchButtonsPaintableFactory_Access is org.allbinary.input.motion.button.TouchButtonsPaintableFactory_Package_References.TouchButtonsPaintableFactory_Access;
   function "=" (Left, Right : TouchButtonsPaintableFactory_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonsPaintableFactory_Package_References."=";
   subtype TouchButtonsPaintableFactory_Access_Array is org.allbinary.input.motion.button.TouchButtonsPaintableFactory_Package_References.TouchButtonsPaintableFactory_Access_Array;
   function "=" (Left, Right : TouchButtonsPaintableFactory_Access_Array) return Boolean renames org.allbinary.input.motion.button.TouchButtonsPaintableFactory_Package_References."=";
   subtype TouchButtonsPaintableFactory_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonsPaintableFactory_Package_References.TouchButtonsPaintableFactory_Access_Array_Access;
   function "=" (Left, Right : TouchButtonsPaintableFactory_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonsPaintableFactory_Package_References."=";
   function Java_Box (Value : TouchButtonsPaintableFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.motion.button.TouchButtonsPaintableFactory_Package_References.Java_Box;
   function Java_Unbox_TouchButtonsPaintableFactory_Access_Array (Value : access Java_Object'Class) return TouchButtonsPaintableFactory_Access_Array_Access renames org.allbinary.input.motion.button.TouchButtonsPaintableFactory_Package_References.Java_Unbox_TouchButtonsPaintableFactory_Access_Array;
   subtype TouchButtonsPaintableFactory_Access_Array_Access_Array is org.allbinary.input.motion.button.TouchButtonsPaintableFactory_Package_References.TouchButtonsPaintableFactory_Access_Array_Access_Array;
   function "=" (Left, Right : TouchButtonsPaintableFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.button.TouchButtonsPaintableFactory_Package_References."=";
   subtype TouchButtonsPaintableFactory_Access_Array_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonsPaintableFactory_Package_References.TouchButtonsPaintableFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TouchButtonsPaintableFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonsPaintableFactory_Package_References."=";
   function Java_Box (Value : TouchButtonsPaintableFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.motion.button.TouchButtonsPaintableFactory_Package_References.Java_Box;
   function Java_Unbox_TouchButtonsPaintableFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return TouchButtonsPaintableFactory_Access_Array_Access_Array_Access renames org.allbinary.input.motion.button.TouchButtonsPaintableFactory_Package_References.Java_Unbox_TouchButtonsPaintableFactory_Access_Array_Access_Array;

   type TouchButtonsPaintableFactory is new Java_Object with null record;

   procedure Initialize (This : in out TouchButtonsPaintableFactory'Class);
   function Create return TouchButtonsPaintableFactory_Access;
   function getInstance (basicColor_Param : access BasicColor_Package.BasicColor'Class) return Paintable_Access;
   procedure getInstance (basicColor_Param : access BasicColor_Package.BasicColor'Class);

end org.allbinary.input.motion.button.TouchButtonsPaintableFactory_Package;


