-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
limited with org.allbinary.animation.IndexedAnimationBehaviorFactory_Package;
package org.allbinary.animation.IndexedAnimationBehaviorFactory_Package_References is
   type IndexedAnimationBehaviorFactory_Access is access all org.allbinary.animation.IndexedAnimationBehaviorFactory_Package.IndexedAnimationBehaviorFactory'Class;
   type IndexedAnimationBehaviorFactory_Access_Array is array (Natural range <>) of IndexedAnimationBehaviorFactory_Access;
   type IndexedAnimationBehaviorFactory_Access_Array_Access is access all IndexedAnimationBehaviorFactory_Access_Array;
   type IndexedAnimationBehaviorFactory_Access_Array_Access_Array is array (Natural range <>) of IndexedAnimationBehaviorFactory_Access_Array_Access;
   type IndexedAnimationBehaviorFactory_Access_Array_Access_Array_Access is access all IndexedAnimationBehaviorFactory_Access_Array_Access_Array;
   type IndexedAnimationBehaviorFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : IndexedAnimationBehaviorFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : IndexedAnimationBehaviorFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new IndexedAnimationBehaviorFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_IndexedAnimationBehaviorFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return IndexedAnimationBehaviorFactory_Access_Array_Access is (if Value /= null and then Value.all in IndexedAnimationBehaviorFactory_Access_Array_Object'Class then IndexedAnimationBehaviorFactory_Access_Array_Object'Class (Value.all).Value else null);
   type IndexedAnimationBehaviorFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : IndexedAnimationBehaviorFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : IndexedAnimationBehaviorFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new IndexedAnimationBehaviorFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_IndexedAnimationBehaviorFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return IndexedAnimationBehaviorFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in IndexedAnimationBehaviorFactory_Access_Array_Access_Array_Object'Class then IndexedAnimationBehaviorFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.animation.IndexedAnimationBehaviorFactory_Package_References;

with org.allbinary.animation.IndexedAnimationBehaviorFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.animation.AnimationBehaviorFactory_Package; use org.allbinary.animation.AnimationBehaviorFactory_Package;
limited with org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.animation.AnimationBehavior_Package_References;

package org.allbinary.animation.IndexedAnimationBehaviorFactory_Package is

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


   subtype IndexedAnimationBehaviorFactory_Access is org.allbinary.animation.IndexedAnimationBehaviorFactory_Package_References.IndexedAnimationBehaviorFactory_Access;
   function "=" (Left, Right : IndexedAnimationBehaviorFactory_Access) return Boolean renames org.allbinary.animation.IndexedAnimationBehaviorFactory_Package_References."=";
   subtype IndexedAnimationBehaviorFactory_Access_Array is org.allbinary.animation.IndexedAnimationBehaviorFactory_Package_References.IndexedAnimationBehaviorFactory_Access_Array;
   function "=" (Left, Right : IndexedAnimationBehaviorFactory_Access_Array) return Boolean renames org.allbinary.animation.IndexedAnimationBehaviorFactory_Package_References."=";
   subtype IndexedAnimationBehaviorFactory_Access_Array_Access is org.allbinary.animation.IndexedAnimationBehaviorFactory_Package_References.IndexedAnimationBehaviorFactory_Access_Array_Access;
   function "=" (Left, Right : IndexedAnimationBehaviorFactory_Access_Array_Access) return Boolean renames org.allbinary.animation.IndexedAnimationBehaviorFactory_Package_References."=";
   function Java_Box (Value : IndexedAnimationBehaviorFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.IndexedAnimationBehaviorFactory_Package_References.Java_Box;
   function Java_Unbox_IndexedAnimationBehaviorFactory_Access_Array (Value : access Java_Object'Class) return IndexedAnimationBehaviorFactory_Access_Array_Access renames org.allbinary.animation.IndexedAnimationBehaviorFactory_Package_References.Java_Unbox_IndexedAnimationBehaviorFactory_Access_Array;
   subtype IndexedAnimationBehaviorFactory_Access_Array_Access_Array is org.allbinary.animation.IndexedAnimationBehaviorFactory_Package_References.IndexedAnimationBehaviorFactory_Access_Array_Access_Array;
   function "=" (Left, Right : IndexedAnimationBehaviorFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.IndexedAnimationBehaviorFactory_Package_References."=";
   subtype IndexedAnimationBehaviorFactory_Access_Array_Access_Array_Access is org.allbinary.animation.IndexedAnimationBehaviorFactory_Package_References.IndexedAnimationBehaviorFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : IndexedAnimationBehaviorFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.IndexedAnimationBehaviorFactory_Package_References."=";
   function Java_Box (Value : IndexedAnimationBehaviorFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.IndexedAnimationBehaviorFactory_Package_References.Java_Box;
   function Java_Unbox_IndexedAnimationBehaviorFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return IndexedAnimationBehaviorFactory_Access_Array_Access_Array_Access renames org.allbinary.animation.IndexedAnimationBehaviorFactory_Package_References.Java_Unbox_IndexedAnimationBehaviorFactory_Access_Array_Access_Array;

   type IndexedAnimationBehaviorFactory is new AnimationBehaviorFactory with record
      frameDelayTime : Long_Long_Integer;
      loopTotal : Integer;
   end record;

   procedure Initialize (This : in out IndexedAnimationBehaviorFactory'Class; loopTotal : Integer; frameDelayTime : Long_Long_Integer);
   function Create (loopTotal : Integer; frameDelayTime : Long_Long_Integer) return IndexedAnimationBehaviorFactory_Access;
   function getOrCreateInstance (This : in out IndexedAnimationBehaviorFactory) return AnimationBehavior_Access;

end org.allbinary.animation.IndexedAnimationBehaviorFactory_Package;


