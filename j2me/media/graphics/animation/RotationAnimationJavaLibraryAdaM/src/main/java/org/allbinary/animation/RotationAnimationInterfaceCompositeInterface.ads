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

limited with org.allbinary.animation.RotationAnimationInterfaceCompositeInterface_Package;
package org.allbinary.animation.RotationAnimationInterfaceCompositeInterface_Package_References is
   type RotationAnimationInterfaceCompositeInterface_Access is access all org.allbinary.animation.RotationAnimationInterfaceCompositeInterface_Package.RotationAnimationInterfaceCompositeInterface'Class;
   type RotationAnimationInterfaceCompositeInterface_Access_Array is array (Natural range <>) of RotationAnimationInterfaceCompositeInterface_Access;
   type RotationAnimationInterfaceCompositeInterface_Access_Array_Access is access all RotationAnimationInterfaceCompositeInterface_Access_Array;
   type RotationAnimationInterfaceCompositeInterface_Access_Array_Access_Array is array (Natural range <>) of RotationAnimationInterfaceCompositeInterface_Access_Array_Access;
   type RotationAnimationInterfaceCompositeInterface_Access_Array_Access_Array_Access is access all RotationAnimationInterfaceCompositeInterface_Access_Array_Access_Array;
end org.allbinary.animation.RotationAnimationInterfaceCompositeInterface_Package_References;

with org.allbinary.animation.RotationAnimationInterfaceCompositeInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.animation.IndexedAnimationInterfaceCompositeInterface_Package; use org.allbinary.animation.IndexedAnimationInterfaceCompositeInterface_Package;
limited with org.allbinary.animation.RotationAnimation_Package;
with org.allbinary.animation.RotationAnimation_Package_References;

package org.allbinary.animation.RotationAnimationInterfaceCompositeInterface_Package is

   package Reference_Types is
   subtype RotationAnimation_Access is org.allbinary.animation.RotationAnimation_Package_References.RotationAnimation_Access;
   use type RotationAnimation_Access;
   subtype RotationAnimation_Access_Array is org.allbinary.animation.RotationAnimation_Package_References.RotationAnimation_Access_Array;
   use type RotationAnimation_Access_Array;
   subtype RotationAnimation_Access_Array_Access is org.allbinary.animation.RotationAnimation_Package_References.RotationAnimation_Access_Array_Access;
   use type RotationAnimation_Access_Array_Access;
   subtype RotationAnimation_Access_Array_Access_Array is org.allbinary.animation.RotationAnimation_Package_References.RotationAnimation_Access_Array_Access_Array;
   use type RotationAnimation_Access_Array_Access_Array;
   subtype RotationAnimation_Access_Array_Access_Array_Access is org.allbinary.animation.RotationAnimation_Package_References.RotationAnimation_Access_Array_Access_Array_Access;
   use type RotationAnimation_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type RotationAnimationInterfaceCompositeInterface is interface and IndexedAnimationInterfaceCompositeInterface;
   subtype RotationAnimationInterfaceCompositeInterface_Access is org.allbinary.animation.RotationAnimationInterfaceCompositeInterface_Package_References.RotationAnimationInterfaceCompositeInterface_Access;
   function "=" (Left, Right : RotationAnimationInterfaceCompositeInterface_Access) return Boolean renames org.allbinary.animation.RotationAnimationInterfaceCompositeInterface_Package_References."=";
   subtype RotationAnimationInterfaceCompositeInterface_Access_Array is org.allbinary.animation.RotationAnimationInterfaceCompositeInterface_Package_References.RotationAnimationInterfaceCompositeInterface_Access_Array;
   function "=" (Left, Right : RotationAnimationInterfaceCompositeInterface_Access_Array) return Boolean renames org.allbinary.animation.RotationAnimationInterfaceCompositeInterface_Package_References."=";
   subtype RotationAnimationInterfaceCompositeInterface_Access_Array_Access is org.allbinary.animation.RotationAnimationInterfaceCompositeInterface_Package_References.RotationAnimationInterfaceCompositeInterface_Access_Array_Access;
   function "=" (Left, Right : RotationAnimationInterfaceCompositeInterface_Access_Array_Access) return Boolean renames org.allbinary.animation.RotationAnimationInterfaceCompositeInterface_Package_References."=";
   subtype RotationAnimationInterfaceCompositeInterface_Access_Array_Access_Array is org.allbinary.animation.RotationAnimationInterfaceCompositeInterface_Package_References.RotationAnimationInterfaceCompositeInterface_Access_Array_Access_Array;
   function "=" (Left, Right : RotationAnimationInterfaceCompositeInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.RotationAnimationInterfaceCompositeInterface_Package_References."=";
   subtype RotationAnimationInterfaceCompositeInterface_Access_Array_Access_Array_Access is org.allbinary.animation.RotationAnimationInterfaceCompositeInterface_Package_References.RotationAnimationInterfaceCompositeInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RotationAnimationInterfaceCompositeInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.RotationAnimationInterfaceCompositeInterface_Package_References."=";
   function Java_Object_Access_From_RotationAnimationInterfaceCompositeInterface (Value : RotationAnimationInterfaceCompositeInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getRotationAnimationInterface (This : in out RotationAnimationInterfaceCompositeInterface) return RotationAnimation_Access is abstract;
   procedure setFrame (This : in out RotationAnimationInterfaceCompositeInterface; index : Integer) is abstract;

end org.allbinary.animation.RotationAnimationInterfaceCompositeInterface_Package;


