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
limited with org.allbinary.animation.SequentialAnimationInterface_Package;
package org.allbinary.animation.SequentialAnimationInterface_Package_References is
   type SequentialAnimationInterface_Access is access all org.allbinary.animation.SequentialAnimationInterface_Package.SequentialAnimationInterface'Class;
   type SequentialAnimationInterface_Access_Array is array (Natural range <>) of SequentialAnimationInterface_Access;
   type SequentialAnimationInterface_Access_Array_Access is access all SequentialAnimationInterface_Access_Array;
   type SequentialAnimationInterface_Access_Array_Access_Array is array (Natural range <>) of SequentialAnimationInterface_Access_Array_Access;
   type SequentialAnimationInterface_Access_Array_Access_Array_Access is access all SequentialAnimationInterface_Access_Array_Access_Array;
   type SequentialAnimationInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SequentialAnimationInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : SequentialAnimationInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SequentialAnimationInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SequentialAnimationInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SequentialAnimationInterface_Access_Array_Access is (if Value /= null and then Value.all in SequentialAnimationInterface_Access_Array_Object'Class then SequentialAnimationInterface_Access_Array_Object'Class (Value.all).Value else null);
   type SequentialAnimationInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SequentialAnimationInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : SequentialAnimationInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SequentialAnimationInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SequentialAnimationInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SequentialAnimationInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in SequentialAnimationInterface_Access_Array_Access_Array_Object'Class then SequentialAnimationInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.animation.SequentialAnimationInterface_Package_References;

with org.allbinary.animation.SequentialAnimationInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.animation.AnimationInterface_Package; use org.allbinary.animation.AnimationInterface_Package;
with org.allbinary.animation.SequenceInterface_Package; use org.allbinary.animation.SequenceInterface_Package;

package org.allbinary.animation.SequentialAnimationInterface_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type SequentialAnimationInterface is interface and AnimationInterface and SequenceInterface;
   subtype SequentialAnimationInterface_Access is org.allbinary.animation.SequentialAnimationInterface_Package_References.SequentialAnimationInterface_Access;
   function "=" (Left, Right : SequentialAnimationInterface_Access) return Boolean renames org.allbinary.animation.SequentialAnimationInterface_Package_References."=";
   subtype SequentialAnimationInterface_Access_Array is org.allbinary.animation.SequentialAnimationInterface_Package_References.SequentialAnimationInterface_Access_Array;
   function "=" (Left, Right : SequentialAnimationInterface_Access_Array) return Boolean renames org.allbinary.animation.SequentialAnimationInterface_Package_References."=";
   subtype SequentialAnimationInterface_Access_Array_Access is org.allbinary.animation.SequentialAnimationInterface_Package_References.SequentialAnimationInterface_Access_Array_Access;
   function "=" (Left, Right : SequentialAnimationInterface_Access_Array_Access) return Boolean renames org.allbinary.animation.SequentialAnimationInterface_Package_References."=";
   function Java_Box (Value : SequentialAnimationInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.SequentialAnimationInterface_Package_References.Java_Box;
   function Java_Unbox_SequentialAnimationInterface_Access_Array (Value : access Java_Object'Class) return SequentialAnimationInterface_Access_Array_Access renames org.allbinary.animation.SequentialAnimationInterface_Package_References.Java_Unbox_SequentialAnimationInterface_Access_Array;
   subtype SequentialAnimationInterface_Access_Array_Access_Array is org.allbinary.animation.SequentialAnimationInterface_Package_References.SequentialAnimationInterface_Access_Array_Access_Array;
   function "=" (Left, Right : SequentialAnimationInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.SequentialAnimationInterface_Package_References."=";
   subtype SequentialAnimationInterface_Access_Array_Access_Array_Access is org.allbinary.animation.SequentialAnimationInterface_Package_References.SequentialAnimationInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SequentialAnimationInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.SequentialAnimationInterface_Package_References."=";
   function Java_Box (Value : SequentialAnimationInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.SequentialAnimationInterface_Package_References.Java_Box;
   function Java_Unbox_SequentialAnimationInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return SequentialAnimationInterface_Access_Array_Access_Array_Access renames org.allbinary.animation.SequentialAnimationInterface_Package_References.Java_Unbox_SequentialAnimationInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_SequentialAnimationInterface (Value : SequentialAnimationInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getSize (This : in out SequentialAnimationInterface) return Integer is abstract;
   procedure previousFrame (This : in out SequentialAnimationInterface) is abstract;

end org.allbinary.animation.SequentialAnimationInterface_Package;


