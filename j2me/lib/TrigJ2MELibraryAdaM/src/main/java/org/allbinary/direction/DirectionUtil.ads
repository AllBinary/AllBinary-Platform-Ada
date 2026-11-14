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
limited with org.allbinary.direction.DirectionUtil_Package;
package org.allbinary.direction.DirectionUtil_Package_References is
   type DirectionUtil_Access is access all org.allbinary.direction.DirectionUtil_Package.DirectionUtil'Class;
   type DirectionUtil_Access_Array is array (Natural range <>) of DirectionUtil_Access;
   type DirectionUtil_Access_Array_Access is access all DirectionUtil_Access_Array;
   type DirectionUtil_Access_Array_Access_Array is array (Natural range <>) of DirectionUtil_Access_Array_Access;
   type DirectionUtil_Access_Array_Access_Array_Access is access all DirectionUtil_Access_Array_Access_Array;
   type DirectionUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DirectionUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : DirectionUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DirectionUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DirectionUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DirectionUtil_Access_Array_Access is (if Value /= null and then Value.all in DirectionUtil_Access_Array_Object'Class then DirectionUtil_Access_Array_Object'Class (Value.all).Value else null);
   type DirectionUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DirectionUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : DirectionUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DirectionUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DirectionUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DirectionUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in DirectionUtil_Access_Array_Access_Array_Object'Class then DirectionUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.direction.DirectionUtil_Package_References;

with org.allbinary.direction.DirectionUtil_Package_References;
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

package org.allbinary.direction.DirectionUtil_Package is

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


   subtype DirectionUtil_Access is org.allbinary.direction.DirectionUtil_Package_References.DirectionUtil_Access;
   function "=" (Left, Right : DirectionUtil_Access) return Boolean renames org.allbinary.direction.DirectionUtil_Package_References."=";
   subtype DirectionUtil_Access_Array is org.allbinary.direction.DirectionUtil_Package_References.DirectionUtil_Access_Array;
   function "=" (Left, Right : DirectionUtil_Access_Array) return Boolean renames org.allbinary.direction.DirectionUtil_Package_References."=";
   subtype DirectionUtil_Access_Array_Access is org.allbinary.direction.DirectionUtil_Package_References.DirectionUtil_Access_Array_Access;
   function "=" (Left, Right : DirectionUtil_Access_Array_Access) return Boolean renames org.allbinary.direction.DirectionUtil_Package_References."=";
   function Java_Box (Value : DirectionUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.direction.DirectionUtil_Package_References.Java_Box;
   function Java_Unbox_DirectionUtil_Access_Array (Value : access Java_Object'Class) return DirectionUtil_Access_Array_Access renames org.allbinary.direction.DirectionUtil_Package_References.Java_Unbox_DirectionUtil_Access_Array;
   subtype DirectionUtil_Access_Array_Access_Array is org.allbinary.direction.DirectionUtil_Package_References.DirectionUtil_Access_Array_Access_Array;
   function "=" (Left, Right : DirectionUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.direction.DirectionUtil_Package_References."=";
   subtype DirectionUtil_Access_Array_Access_Array_Access is org.allbinary.direction.DirectionUtil_Package_References.DirectionUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DirectionUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.direction.DirectionUtil_Package_References."=";
   function Java_Box (Value : DirectionUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.direction.DirectionUtil_Package_References.Java_Box;
   function Java_Unbox_DirectionUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return DirectionUtil_Access_Array_Access_Array_Access renames org.allbinary.direction.DirectionUtil_Package_References.Java_Unbox_DirectionUtil_Access_Array_Access_Array;

   type DirectionUtil is new Java_Object with record
      directionArray : Angle_Access_Array_Access;
      directionArray2 : Angle_Access_Array_Access;
   end record;
   instance : DirectionUtil_Access;

   procedure Initialize (This : in out DirectionUtil'Class);
   function Create return DirectionUtil_Access;
   function getInstance return DirectionUtil_Access;
   function getAngle (This : in out DirectionUtil; direction_Param : access Direction_Package.Direction'Class) return Angle_Access;
   procedure getAngle (This : in out DirectionUtil; direction_Param : access Direction_Package.Direction'Class);
   function getFrameAngle (This : in out DirectionUtil; direction_Param : access Direction_Package.Direction'Class) return Angle_Access;
   procedure getFrameAngle (This : in out DirectionUtil; direction_Param : access Direction_Package.Direction'Class);

end org.allbinary.direction.DirectionUtil_Package;


