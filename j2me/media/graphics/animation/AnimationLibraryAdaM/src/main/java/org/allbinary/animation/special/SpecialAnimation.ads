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
limited with org.allbinary.animation.special.SpecialAnimation_Package;
package org.allbinary.animation.special.SpecialAnimation_Package_References is
   type SpecialAnimation_Access is access all org.allbinary.animation.special.SpecialAnimation_Package.SpecialAnimation'Class;
   type SpecialAnimation_Access_Array is array (Natural range <>) of SpecialAnimation_Access;
   type SpecialAnimation_Access_Array_Access is access all SpecialAnimation_Access_Array;
   type SpecialAnimation_Access_Array_Access_Array is array (Natural range <>) of SpecialAnimation_Access_Array_Access;
   type SpecialAnimation_Access_Array_Access_Array_Access is access all SpecialAnimation_Access_Array_Access_Array;
   type SpecialAnimation_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SpecialAnimation_Access_Array_Access;
   end record;
   function Java_Box (Value : SpecialAnimation_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SpecialAnimation_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SpecialAnimation_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SpecialAnimation_Access_Array_Access is (if Value /= null and then Value.all in SpecialAnimation_Access_Array_Object'Class then SpecialAnimation_Access_Array_Object'Class (Value.all).Value else null);
   type SpecialAnimation_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SpecialAnimation_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : SpecialAnimation_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SpecialAnimation_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SpecialAnimation_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SpecialAnimation_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in SpecialAnimation_Access_Array_Access_Array_Object'Class then SpecialAnimation_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.animation.special.SpecialAnimation_Package_References;

with org.allbinary.animation.special.SpecialAnimation_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.animation.AnimationBehavior_Package_References;
with org.allbinary.animation.IndexedAnimation_Package; use org.allbinary.animation.IndexedAnimation_Package;
with org.allbinary.animation.special.SpecialAnimationInterface_Package; use org.allbinary.animation.special.SpecialAnimationInterface_Package;

package org.allbinary.animation.special.SpecialAnimation_Package is

   package AnimationBehavior_Package renames Standard.org.allbinary.animation.AnimationBehavior_Package;
   package IndexedAnimation_Package renames Standard.org.allbinary.animation.IndexedAnimation_Package;
   package Reference_Types is
   subtype AnimationBehavior_Access is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access;
   use type AnimationBehavior_Access;
   subtype AnimationBehavior_Access_Array is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access_Array;
   use type AnimationBehavior_Access_Array;
   subtype AnimationBehavior_Access_Array_Access is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access_Array_Access;
   use type AnimationBehavior_Access_Array_Access;
   subtype AnimationBehavior_Access_Array_Access_Array is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access_Array_Access_Array;
   use type AnimationBehavior_Access_Array_Access_Array;
   subtype AnimationBehavior_Access_Array_Access_Array_Access is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access_Array_Access_Array_Access;
   use type AnimationBehavior_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype SpecialAnimation_Access is org.allbinary.animation.special.SpecialAnimation_Package_References.SpecialAnimation_Access;
   function "=" (Left, Right : SpecialAnimation_Access) return Boolean renames org.allbinary.animation.special.SpecialAnimation_Package_References."=";
   subtype SpecialAnimation_Access_Array is org.allbinary.animation.special.SpecialAnimation_Package_References.SpecialAnimation_Access_Array;
   function "=" (Left, Right : SpecialAnimation_Access_Array) return Boolean renames org.allbinary.animation.special.SpecialAnimation_Package_References."=";
   subtype SpecialAnimation_Access_Array_Access is org.allbinary.animation.special.SpecialAnimation_Package_References.SpecialAnimation_Access_Array_Access;
   function "=" (Left, Right : SpecialAnimation_Access_Array_Access) return Boolean renames org.allbinary.animation.special.SpecialAnimation_Package_References."=";
   function Java_Box (Value : SpecialAnimation_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.special.SpecialAnimation_Package_References.Java_Box;
   function Java_Unbox_SpecialAnimation_Access_Array (Value : access Java_Object'Class) return SpecialAnimation_Access_Array_Access renames org.allbinary.animation.special.SpecialAnimation_Package_References.Java_Unbox_SpecialAnimation_Access_Array;
   subtype SpecialAnimation_Access_Array_Access_Array is org.allbinary.animation.special.SpecialAnimation_Package_References.SpecialAnimation_Access_Array_Access_Array;
   function "=" (Left, Right : SpecialAnimation_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.special.SpecialAnimation_Package_References."=";
   subtype SpecialAnimation_Access_Array_Access_Array_Access is org.allbinary.animation.special.SpecialAnimation_Package_References.SpecialAnimation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SpecialAnimation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.special.SpecialAnimation_Package_References."=";
   function Java_Box (Value : SpecialAnimation_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.special.SpecialAnimation_Package_References.Java_Box;
   function Java_Unbox_SpecialAnimation_Access_Array_Access_Array (Value : access Java_Object'Class) return SpecialAnimation_Access_Array_Access_Array_Access renames org.allbinary.animation.special.SpecialAnimation_Package_References.Java_Unbox_SpecialAnimation_Access_Array_Access_Array;

   type SpecialAnimation is new IndexedAnimation and SpecialAnimationInterface with null record;
   NULL_SPECIAL_ANIMATION : SpecialAnimation_Access;

   procedure Initialize (This : in out SpecialAnimation'Class; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class);
   function Create (animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return SpecialAnimation_Access;
   function getInstance return SpecialAnimation_Access;
   procedure nextFrame (This : in out SpecialAnimation);
   procedure setLastFrame (This : in out SpecialAnimation);
   function isComplete (This : in out SpecialAnimation) return Boolean;
   procedure open (This : in out SpecialAnimation);
   procedure close (This : in out SpecialAnimation);
   procedure process (This : in out SpecialAnimation);

end org.allbinary.animation.special.SpecialAnimation_Package;


