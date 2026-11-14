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
limited with org.allbinary.direction.DirectionalInterface_Package;
package org.allbinary.direction.DirectionalInterface_Package_References is
   type DirectionalInterface_Access is access all org.allbinary.direction.DirectionalInterface_Package.DirectionalInterface'Class;
   type DirectionalInterface_Access_Array is array (Natural range <>) of DirectionalInterface_Access;
   type DirectionalInterface_Access_Array_Access is access all DirectionalInterface_Access_Array;
   type DirectionalInterface_Access_Array_Access_Array is array (Natural range <>) of DirectionalInterface_Access_Array_Access;
   type DirectionalInterface_Access_Array_Access_Array_Access is access all DirectionalInterface_Access_Array_Access_Array;
   type DirectionalInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DirectionalInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : DirectionalInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DirectionalInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DirectionalInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DirectionalInterface_Access_Array_Access is (if Value /= null and then Value.all in DirectionalInterface_Access_Array_Object'Class then DirectionalInterface_Access_Array_Object'Class (Value.all).Value else null);
   type DirectionalInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DirectionalInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : DirectionalInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DirectionalInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DirectionalInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DirectionalInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in DirectionalInterface_Access_Array_Access_Array_Object'Class then DirectionalInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.direction.DirectionalInterface_Package_References;

with org.allbinary.direction.DirectionalInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.math.Angle_Package;
with org.allbinary.math.Angle_Package_References;
limited with org.allbinary.direction.Direction_Package;
with org.allbinary.direction.Direction_Package_References;

package org.allbinary.direction.DirectionalInterface_Package is

   package Angle_Package renames Standard.org.allbinary.math.Angle_Package;
   package Reference_Types is
   subtype Angle_Access is org.allbinary.math.Angle_Package_References.Angle_Access;
   use type Angle_Access;
   subtype Angle_Access_Array is org.allbinary.math.Angle_Package_References.Angle_Access_Array;
   use type Angle_Access_Array;
   subtype Angle_Access_Array_Access is org.allbinary.math.Angle_Package_References.Angle_Access_Array_Access;
   use type Angle_Access_Array_Access;
   subtype Angle_Access_Array_Access_Array is org.allbinary.math.Angle_Package_References.Angle_Access_Array_Access_Array;
   use type Angle_Access_Array_Access_Array;
   subtype Angle_Access_Array_Access_Array_Access is org.allbinary.math.Angle_Package_References.Angle_Access_Array_Access_Array_Access;
   use type Angle_Access_Array_Access_Array_Access;
   subtype Direction_Access is org.allbinary.direction.Direction_Package_References.Direction_Access;
   use type Direction_Access;
   subtype Direction_Access_Array is org.allbinary.direction.Direction_Package_References.Direction_Access_Array;
   use type Direction_Access_Array;
   subtype Direction_Access_Array_Access is org.allbinary.direction.Direction_Package_References.Direction_Access_Array_Access;
   use type Direction_Access_Array_Access;
   subtype Direction_Access_Array_Access_Array is org.allbinary.direction.Direction_Package_References.Direction_Access_Array_Access_Array;
   use type Direction_Access_Array_Access_Array;
   subtype Direction_Access_Array_Access_Array_Access is org.allbinary.direction.Direction_Package_References.Direction_Access_Array_Access_Array_Access;
   use type Direction_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type DirectionalInterface is interface;
   subtype DirectionalInterface_Access is org.allbinary.direction.DirectionalInterface_Package_References.DirectionalInterface_Access;
   function "=" (Left, Right : DirectionalInterface_Access) return Boolean renames org.allbinary.direction.DirectionalInterface_Package_References."=";
   subtype DirectionalInterface_Access_Array is org.allbinary.direction.DirectionalInterface_Package_References.DirectionalInterface_Access_Array;
   function "=" (Left, Right : DirectionalInterface_Access_Array) return Boolean renames org.allbinary.direction.DirectionalInterface_Package_References."=";
   subtype DirectionalInterface_Access_Array_Access is org.allbinary.direction.DirectionalInterface_Package_References.DirectionalInterface_Access_Array_Access;
   function "=" (Left, Right : DirectionalInterface_Access_Array_Access) return Boolean renames org.allbinary.direction.DirectionalInterface_Package_References."=";
   function Java_Box (Value : DirectionalInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.direction.DirectionalInterface_Package_References.Java_Box;
   function Java_Unbox_DirectionalInterface_Access_Array (Value : access Java_Object'Class) return DirectionalInterface_Access_Array_Access renames org.allbinary.direction.DirectionalInterface_Package_References.Java_Unbox_DirectionalInterface_Access_Array;
   subtype DirectionalInterface_Access_Array_Access_Array is org.allbinary.direction.DirectionalInterface_Package_References.DirectionalInterface_Access_Array_Access_Array;
   function "=" (Left, Right : DirectionalInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.direction.DirectionalInterface_Package_References."=";
   subtype DirectionalInterface_Access_Array_Access_Array_Access is org.allbinary.direction.DirectionalInterface_Package_References.DirectionalInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DirectionalInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.direction.DirectionalInterface_Package_References."=";
   function Java_Box (Value : DirectionalInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.direction.DirectionalInterface_Package_References.Java_Box;
   function Java_Unbox_DirectionalInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return DirectionalInterface_Access_Array_Access_Array_Access renames org.allbinary.direction.DirectionalInterface_Package_References.Java_Unbox_DirectionalInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_DirectionalInterface (Value : DirectionalInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure setFrameByDirection (This : in out DirectionalInterface; direction_Param : access Direction_Package.Direction'Class) is abstract;
   procedure setFrameToAngle (This : in out DirectionalInterface; angle_Param : access Angle_Package.Angle'Class) is abstract;
   procedure adjustFrameToAngle (This : in out DirectionalInterface; newAngle_Param : access Angle_Package.Angle'Class) is abstract;
   procedure adjustFrame (This : in out DirectionalInterface; angle : Short_Integer) is abstract;

end org.allbinary.direction.DirectionalInterface_Package;


