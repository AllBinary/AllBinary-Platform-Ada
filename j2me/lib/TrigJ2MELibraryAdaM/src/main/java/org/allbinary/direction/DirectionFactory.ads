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
limited with org.allbinary.direction.DirectionFactory_Package;
package org.allbinary.direction.DirectionFactory_Package_References is
   type DirectionFactory_Access is access all org.allbinary.direction.DirectionFactory_Package.DirectionFactory'Class;
   type DirectionFactory_Access_Array is array (Natural range <>) of DirectionFactory_Access;
   type DirectionFactory_Access_Array_Access is access all DirectionFactory_Access_Array;
   type DirectionFactory_Access_Array_Access_Array is array (Natural range <>) of DirectionFactory_Access_Array_Access;
   type DirectionFactory_Access_Array_Access_Array_Access is access all DirectionFactory_Access_Array_Access_Array;
   type DirectionFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DirectionFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : DirectionFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DirectionFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DirectionFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DirectionFactory_Access_Array_Access is (if Value /= null and then Value.all in DirectionFactory_Access_Array_Object'Class then DirectionFactory_Access_Array_Object'Class (Value.all).Value else null);
   type DirectionFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DirectionFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : DirectionFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DirectionFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DirectionFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DirectionFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in DirectionFactory_Access_Array_Access_Array_Object'Class then DirectionFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.direction.DirectionFactory_Package_References;

with org.allbinary.direction.DirectionFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.direction.Direction_Package;
with org.allbinary.direction.Direction_Package_References;

package org.allbinary.direction.DirectionFactory_Package is

   package Reference_Types is
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


   subtype DirectionFactory_Access is org.allbinary.direction.DirectionFactory_Package_References.DirectionFactory_Access;
   function "=" (Left, Right : DirectionFactory_Access) return Boolean renames org.allbinary.direction.DirectionFactory_Package_References."=";
   subtype DirectionFactory_Access_Array is org.allbinary.direction.DirectionFactory_Package_References.DirectionFactory_Access_Array;
   function "=" (Left, Right : DirectionFactory_Access_Array) return Boolean renames org.allbinary.direction.DirectionFactory_Package_References."=";
   subtype DirectionFactory_Access_Array_Access is org.allbinary.direction.DirectionFactory_Package_References.DirectionFactory_Access_Array_Access;
   function "=" (Left, Right : DirectionFactory_Access_Array_Access) return Boolean renames org.allbinary.direction.DirectionFactory_Package_References."=";
   function Java_Box (Value : DirectionFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.direction.DirectionFactory_Package_References.Java_Box;
   function Java_Unbox_DirectionFactory_Access_Array (Value : access Java_Object'Class) return DirectionFactory_Access_Array_Access renames org.allbinary.direction.DirectionFactory_Package_References.Java_Unbox_DirectionFactory_Access_Array;
   subtype DirectionFactory_Access_Array_Access_Array is org.allbinary.direction.DirectionFactory_Package_References.DirectionFactory_Access_Array_Access_Array;
   function "=" (Left, Right : DirectionFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.direction.DirectionFactory_Package_References."=";
   subtype DirectionFactory_Access_Array_Access_Array_Access is org.allbinary.direction.DirectionFactory_Package_References.DirectionFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DirectionFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.direction.DirectionFactory_Package_References."=";
   function Java_Box (Value : DirectionFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.direction.DirectionFactory_Package_References.Java_Box;
   function Java_Unbox_DirectionFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return DirectionFactory_Access_Array_Access_Array_Access renames org.allbinary.direction.DirectionFactory_Package_References.Java_Unbox_DirectionFactory_Access_Array_Access_Array;

   type DirectionFactory is new Java_Object with record
      NAME : Unbounded_String;
      LEFT : Direction_Access;
      RIGHT : Direction_Access;
      DOWN : Direction_Access;
      UP : Direction_Access;
      UP_LEFT : Direction_Access;
      UP_RIGHT : Direction_Access;
      DOWN_LEFT : Direction_Access;
      DOWN_RIGHT : Direction_Access;
      NOT_BORDERED_WITH : Direction_Access;
      NO_DIRECTION : Direction_Access;
      TOP : Direction_Access;
      BOTTOM : Direction_Access;
      ALL_DIRECTION : Direction_Access;
   end record;
   instance : DirectionFactory_Access;

   procedure Initialize (This : in out DirectionFactory'Class);
   function Create return DirectionFactory_Access;
   function getInstance return DirectionFactory_Access;

end org.allbinary.direction.DirectionFactory_Package;


