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
limited with org.allbinary.logic.math.Orientation_Package;
package org.allbinary.logic.math.Orientation_Package_References is
   type Orientation_Access is access all org.allbinary.logic.math.Orientation_Package.Orientation'Class;
   type Orientation_Access_Array is array (Natural range <>) of Orientation_Access;
   type Orientation_Access_Array_Access is access all Orientation_Access_Array;
   type Orientation_Access_Array_Access_Array is array (Natural range <>) of Orientation_Access_Array_Access;
   type Orientation_Access_Array_Access_Array_Access is access all Orientation_Access_Array_Access_Array;
   type Orientation_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : Orientation_Access_Array_Access;
   end record;
   function Java_Box (Value : Orientation_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new Orientation_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_Orientation_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return Orientation_Access_Array_Access is (if Value /= null and then Value.all in Orientation_Access_Array_Object'Class then Orientation_Access_Array_Object'Class (Value.all).Value else null);
   type Orientation_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : Orientation_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : Orientation_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new Orientation_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_Orientation_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return Orientation_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in Orientation_Access_Array_Access_Array_Object'Class then Orientation_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.math.Orientation_Package_References;

with org.allbinary.logic.math.Orientation_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.math.BasicDecimal_Package;
with org.allbinary.logic.math.BasicDecimal_Package_References;

package org.allbinary.logic.math.Orientation_Package is

   package Reference_Types is
   subtype BasicDecimal_Access is org.allbinary.logic.math.BasicDecimal_Package_References.BasicDecimal_Access;
   use type BasicDecimal_Access;
   subtype BasicDecimal_Access_Array is org.allbinary.logic.math.BasicDecimal_Package_References.BasicDecimal_Access_Array;
   use type BasicDecimal_Access_Array;
   subtype BasicDecimal_Access_Array_Access is org.allbinary.logic.math.BasicDecimal_Package_References.BasicDecimal_Access_Array_Access;
   use type BasicDecimal_Access_Array_Access;
   subtype BasicDecimal_Access_Array_Access_Array is org.allbinary.logic.math.BasicDecimal_Package_References.BasicDecimal_Access_Array_Access_Array;
   use type BasicDecimal_Access_Array_Access_Array;
   subtype BasicDecimal_Access_Array_Access_Array_Access is org.allbinary.logic.math.BasicDecimal_Package_References.BasicDecimal_Access_Array_Access_Array_Access;
   use type BasicDecimal_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype Orientation_Access is org.allbinary.logic.math.Orientation_Package_References.Orientation_Access;
   function "=" (Left, Right : Orientation_Access) return Boolean renames org.allbinary.logic.math.Orientation_Package_References."=";
   subtype Orientation_Access_Array is org.allbinary.logic.math.Orientation_Package_References.Orientation_Access_Array;
   function "=" (Left, Right : Orientation_Access_Array) return Boolean renames org.allbinary.logic.math.Orientation_Package_References."=";
   subtype Orientation_Access_Array_Access is org.allbinary.logic.math.Orientation_Package_References.Orientation_Access_Array_Access;
   function "=" (Left, Right : Orientation_Access_Array_Access) return Boolean renames org.allbinary.logic.math.Orientation_Package_References."=";
   function Java_Box (Value : Orientation_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.math.Orientation_Package_References.Java_Box;
   function Java_Unbox_Orientation_Access_Array (Value : access Java_Object'Class) return Orientation_Access_Array_Access renames org.allbinary.logic.math.Orientation_Package_References.Java_Unbox_Orientation_Access_Array;
   subtype Orientation_Access_Array_Access_Array is org.allbinary.logic.math.Orientation_Package_References.Orientation_Access_Array_Access_Array;
   function "=" (Left, Right : Orientation_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.math.Orientation_Package_References."=";
   subtype Orientation_Access_Array_Access_Array_Access is org.allbinary.logic.math.Orientation_Package_References.Orientation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Orientation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.math.Orientation_Package_References."=";
   function Java_Box (Value : Orientation_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.math.Orientation_Package_References.Java_Box;
   function Java_Unbox_Orientation_Access_Array_Access_Array (Value : access Java_Object'Class) return Orientation_Access_Array_Access_Array_Access renames org.allbinary.logic.math.Orientation_Package_References.Java_Unbox_Orientation_Access_Array_Access_Array;

   type Orientation is new Java_Object with record
      yaw : BasicDecimal_Access;
      pitch : BasicDecimal_Access;
      roll : BasicDecimal_Access;
   end record;
   NONE : Orientation_Access;
   SINGLETON : Orientation_Access;

   procedure Initialize (This : in out Orientation'Class; yaw : Integer; pitch : Integer; roll : Integer);
   function Create (yaw : Integer; pitch : Integer; roll : Integer) return Orientation_Access;
   function getInstance (yaw : Integer; pitch : Integer; roll : Integer) return Orientation_Access;
   procedure getInstance (yaw : Integer; pitch : Integer; roll : Integer);
   function toString (This : in out Orientation) return Unbounded_String;

end org.allbinary.logic.math.Orientation_Package;


