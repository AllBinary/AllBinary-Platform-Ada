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
limited with org.allbinary.animation.AnimationInterfaceCompositeInterface_Package;
package org.allbinary.animation.AnimationInterfaceCompositeInterface_Package_References is
   type AnimationInterfaceCompositeInterface_Access is access all org.allbinary.animation.AnimationInterfaceCompositeInterface_Package.AnimationInterfaceCompositeInterface'Class;
   type AnimationInterfaceCompositeInterface_Access_Array is array (Natural range <>) of AnimationInterfaceCompositeInterface_Access;
   type AnimationInterfaceCompositeInterface_Access_Array_Access is access all AnimationInterfaceCompositeInterface_Access_Array;
   type AnimationInterfaceCompositeInterface_Access_Array_Access_Array is array (Natural range <>) of AnimationInterfaceCompositeInterface_Access_Array_Access;
   type AnimationInterfaceCompositeInterface_Access_Array_Access_Array_Access is access all AnimationInterfaceCompositeInterface_Access_Array_Access_Array;
   type AnimationInterfaceCompositeInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AnimationInterfaceCompositeInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : AnimationInterfaceCompositeInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AnimationInterfaceCompositeInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AnimationInterfaceCompositeInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AnimationInterfaceCompositeInterface_Access_Array_Access is (if Value /= null and then Value.all in AnimationInterfaceCompositeInterface_Access_Array_Object'Class then AnimationInterfaceCompositeInterface_Access_Array_Object'Class (Value.all).Value else null);
   type AnimationInterfaceCompositeInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AnimationInterfaceCompositeInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AnimationInterfaceCompositeInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AnimationInterfaceCompositeInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AnimationInterfaceCompositeInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AnimationInterfaceCompositeInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AnimationInterfaceCompositeInterface_Access_Array_Access_Array_Object'Class then AnimationInterfaceCompositeInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.animation.AnimationInterfaceCompositeInterface_Package_References;

with org.allbinary.animation.AnimationInterfaceCompositeInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.animation.Animation_Package;
with org.allbinary.animation.Animation_Package_References;

package org.allbinary.animation.AnimationInterfaceCompositeInterface_Package is

   package Reference_Types is
   subtype Animation_Access is org.allbinary.animation.Animation_Package_References.Animation_Access;
   use type Animation_Access;
   subtype Animation_Access_Array is org.allbinary.animation.Animation_Package_References.Animation_Access_Array;
   use type Animation_Access_Array;
   subtype Animation_Access_Array_Access is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access;
   use type Animation_Access_Array_Access;
   subtype Animation_Access_Array_Access_Array is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access_Array;
   use type Animation_Access_Array_Access_Array;
   subtype Animation_Access_Array_Access_Array_Access is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access_Array_Access;
   use type Animation_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type AnimationInterfaceCompositeInterface is interface;
   subtype AnimationInterfaceCompositeInterface_Access is org.allbinary.animation.AnimationInterfaceCompositeInterface_Package_References.AnimationInterfaceCompositeInterface_Access;
   function "=" (Left, Right : AnimationInterfaceCompositeInterface_Access) return Boolean renames org.allbinary.animation.AnimationInterfaceCompositeInterface_Package_References."=";
   subtype AnimationInterfaceCompositeInterface_Access_Array is org.allbinary.animation.AnimationInterfaceCompositeInterface_Package_References.AnimationInterfaceCompositeInterface_Access_Array;
   function "=" (Left, Right : AnimationInterfaceCompositeInterface_Access_Array) return Boolean renames org.allbinary.animation.AnimationInterfaceCompositeInterface_Package_References."=";
   subtype AnimationInterfaceCompositeInterface_Access_Array_Access is org.allbinary.animation.AnimationInterfaceCompositeInterface_Package_References.AnimationInterfaceCompositeInterface_Access_Array_Access;
   function "=" (Left, Right : AnimationInterfaceCompositeInterface_Access_Array_Access) return Boolean renames org.allbinary.animation.AnimationInterfaceCompositeInterface_Package_References."=";
   function Java_Box (Value : AnimationInterfaceCompositeInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.AnimationInterfaceCompositeInterface_Package_References.Java_Box;
   function Java_Unbox_AnimationInterfaceCompositeInterface_Access_Array (Value : access Java_Object'Class) return AnimationInterfaceCompositeInterface_Access_Array_Access renames org.allbinary.animation.AnimationInterfaceCompositeInterface_Package_References.Java_Unbox_AnimationInterfaceCompositeInterface_Access_Array;
   subtype AnimationInterfaceCompositeInterface_Access_Array_Access_Array is org.allbinary.animation.AnimationInterfaceCompositeInterface_Package_References.AnimationInterfaceCompositeInterface_Access_Array_Access_Array;
   function "=" (Left, Right : AnimationInterfaceCompositeInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.AnimationInterfaceCompositeInterface_Package_References."=";
   subtype AnimationInterfaceCompositeInterface_Access_Array_Access_Array_Access is org.allbinary.animation.AnimationInterfaceCompositeInterface_Package_References.AnimationInterfaceCompositeInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AnimationInterfaceCompositeInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.AnimationInterfaceCompositeInterface_Package_References."=";
   function Java_Box (Value : AnimationInterfaceCompositeInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.AnimationInterfaceCompositeInterface_Package_References.Java_Box;
   function Java_Unbox_AnimationInterfaceCompositeInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return AnimationInterfaceCompositeInterface_Access_Array_Access_Array_Access renames org.allbinary.animation.AnimationInterfaceCompositeInterface_Package_References.Java_Unbox_AnimationInterfaceCompositeInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_AnimationInterfaceCompositeInterface (Value : AnimationInterfaceCompositeInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getAnimationInterface (This : in out AnimationInterfaceCompositeInterface) return Animation_Access is abstract;

end org.allbinary.animation.AnimationInterfaceCompositeInterface_Package;


