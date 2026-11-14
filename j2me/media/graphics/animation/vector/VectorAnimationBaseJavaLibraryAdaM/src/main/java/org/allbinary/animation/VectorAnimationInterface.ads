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
limited with org.allbinary.animation.VectorAnimationInterface_Package;
package org.allbinary.animation.VectorAnimationInterface_Package_References is
   type VectorAnimationInterface_Access is access all org.allbinary.animation.VectorAnimationInterface_Package.VectorAnimationInterface'Class;
   type VectorAnimationInterface_Access_Array is array (Natural range <>) of VectorAnimationInterface_Access;
   type VectorAnimationInterface_Access_Array_Access is access all VectorAnimationInterface_Access_Array;
   type VectorAnimationInterface_Access_Array_Access_Array is array (Natural range <>) of VectorAnimationInterface_Access_Array_Access;
   type VectorAnimationInterface_Access_Array_Access_Array_Access is access all VectorAnimationInterface_Access_Array_Access_Array;
   type VectorAnimationInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : VectorAnimationInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : VectorAnimationInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new VectorAnimationInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_VectorAnimationInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return VectorAnimationInterface_Access_Array_Access is (if Value /= null and then Value.all in VectorAnimationInterface_Access_Array_Object'Class then VectorAnimationInterface_Access_Array_Object'Class (Value.all).Value else null);
   type VectorAnimationInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : VectorAnimationInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : VectorAnimationInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new VectorAnimationInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_VectorAnimationInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return VectorAnimationInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in VectorAnimationInterface_Access_Array_Access_Array_Object'Class then VectorAnimationInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.animation.VectorAnimationInterface_Package_References;

with org.allbinary.animation.VectorAnimationInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.graphics.color.ColorCompositeInterface_Package; use org.allbinary.graphics.color.ColorCompositeInterface_Package;
with org.allbinary.animation.IndexedAnimationInterface_Package; use org.allbinary.animation.IndexedAnimationInterface_Package;

package org.allbinary.animation.VectorAnimationInterface_Package is

   package ColorCompositeInterface_Package renames Standard.org.allbinary.graphics.color.ColorCompositeInterface_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type VectorAnimationInterface is interface and IndexedAnimationInterface and ColorCompositeInterface;
   subtype VectorAnimationInterface_Access is org.allbinary.animation.VectorAnimationInterface_Package_References.VectorAnimationInterface_Access;
   function "=" (Left, Right : VectorAnimationInterface_Access) return Boolean renames org.allbinary.animation.VectorAnimationInterface_Package_References."=";
   subtype VectorAnimationInterface_Access_Array is org.allbinary.animation.VectorAnimationInterface_Package_References.VectorAnimationInterface_Access_Array;
   function "=" (Left, Right : VectorAnimationInterface_Access_Array) return Boolean renames org.allbinary.animation.VectorAnimationInterface_Package_References."=";
   subtype VectorAnimationInterface_Access_Array_Access is org.allbinary.animation.VectorAnimationInterface_Package_References.VectorAnimationInterface_Access_Array_Access;
   function "=" (Left, Right : VectorAnimationInterface_Access_Array_Access) return Boolean renames org.allbinary.animation.VectorAnimationInterface_Package_References."=";
   function Java_Box (Value : VectorAnimationInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.VectorAnimationInterface_Package_References.Java_Box;
   function Java_Unbox_VectorAnimationInterface_Access_Array (Value : access Java_Object'Class) return VectorAnimationInterface_Access_Array_Access renames org.allbinary.animation.VectorAnimationInterface_Package_References.Java_Unbox_VectorAnimationInterface_Access_Array;
   subtype VectorAnimationInterface_Access_Array_Access_Array is org.allbinary.animation.VectorAnimationInterface_Package_References.VectorAnimationInterface_Access_Array_Access_Array;
   function "=" (Left, Right : VectorAnimationInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.VectorAnimationInterface_Package_References."=";
   subtype VectorAnimationInterface_Access_Array_Access_Array_Access is org.allbinary.animation.VectorAnimationInterface_Package_References.VectorAnimationInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : VectorAnimationInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.VectorAnimationInterface_Package_References."=";
   function Java_Box (Value : VectorAnimationInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.VectorAnimationInterface_Package_References.Java_Box;
   function Java_Unbox_VectorAnimationInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return VectorAnimationInterface_Access_Array_Access_Array_Access renames org.allbinary.animation.VectorAnimationInterface_Package_References.Java_Unbox_VectorAnimationInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_VectorAnimationInterface (Value : VectorAnimationInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getPoints (This : in out VectorAnimationInterface; frame : Integer) return Integer_Array_Access_Array_Access is abstract;
   procedure getPoints (This : in out VectorAnimationInterface; frame : Integer) is abstract;

end org.allbinary.animation.VectorAnimationInterface_Package;


