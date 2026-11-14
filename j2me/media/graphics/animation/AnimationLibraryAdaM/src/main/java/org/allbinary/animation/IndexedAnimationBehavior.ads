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
limited with org.allbinary.animation.IndexedAnimationBehavior_Package;
package org.allbinary.animation.IndexedAnimationBehavior_Package_References is
   type IndexedAnimationBehavior_Access is access all org.allbinary.animation.IndexedAnimationBehavior_Package.IndexedAnimationBehavior'Class;
   type IndexedAnimationBehavior_Access_Array is array (Natural range <>) of IndexedAnimationBehavior_Access;
   type IndexedAnimationBehavior_Access_Array_Access is access all IndexedAnimationBehavior_Access_Array;
   type IndexedAnimationBehavior_Access_Array_Access_Array is array (Natural range <>) of IndexedAnimationBehavior_Access_Array_Access;
   type IndexedAnimationBehavior_Access_Array_Access_Array_Access is access all IndexedAnimationBehavior_Access_Array_Access_Array;
   type IndexedAnimationBehavior_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : IndexedAnimationBehavior_Access_Array_Access;
   end record;
   function Java_Box (Value : IndexedAnimationBehavior_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new IndexedAnimationBehavior_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_IndexedAnimationBehavior_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return IndexedAnimationBehavior_Access_Array_Access is (if Value /= null and then Value.all in IndexedAnimationBehavior_Access_Array_Object'Class then IndexedAnimationBehavior_Access_Array_Object'Class (Value.all).Value else null);
   type IndexedAnimationBehavior_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : IndexedAnimationBehavior_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : IndexedAnimationBehavior_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new IndexedAnimationBehavior_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_IndexedAnimationBehavior_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return IndexedAnimationBehavior_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in IndexedAnimationBehavior_Access_Array_Access_Array_Object'Class then IndexedAnimationBehavior_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.animation.IndexedAnimationBehavior_Package_References;

with org.allbinary.animation.IndexedAnimationBehavior_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.animation.AnimationBehavior_Package; use org.allbinary.animation.AnimationBehavior_Package;

package org.allbinary.animation.IndexedAnimationBehavior_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype IndexedAnimationBehavior_Access is org.allbinary.animation.IndexedAnimationBehavior_Package_References.IndexedAnimationBehavior_Access;
   function "=" (Left, Right : IndexedAnimationBehavior_Access) return Boolean renames org.allbinary.animation.IndexedAnimationBehavior_Package_References."=";
   subtype IndexedAnimationBehavior_Access_Array is org.allbinary.animation.IndexedAnimationBehavior_Package_References.IndexedAnimationBehavior_Access_Array;
   function "=" (Left, Right : IndexedAnimationBehavior_Access_Array) return Boolean renames org.allbinary.animation.IndexedAnimationBehavior_Package_References."=";
   subtype IndexedAnimationBehavior_Access_Array_Access is org.allbinary.animation.IndexedAnimationBehavior_Package_References.IndexedAnimationBehavior_Access_Array_Access;
   function "=" (Left, Right : IndexedAnimationBehavior_Access_Array_Access) return Boolean renames org.allbinary.animation.IndexedAnimationBehavior_Package_References."=";
   function Java_Box (Value : IndexedAnimationBehavior_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.IndexedAnimationBehavior_Package_References.Java_Box;
   function Java_Unbox_IndexedAnimationBehavior_Access_Array (Value : access Java_Object'Class) return IndexedAnimationBehavior_Access_Array_Access renames org.allbinary.animation.IndexedAnimationBehavior_Package_References.Java_Unbox_IndexedAnimationBehavior_Access_Array;
   subtype IndexedAnimationBehavior_Access_Array_Access_Array is org.allbinary.animation.IndexedAnimationBehavior_Package_References.IndexedAnimationBehavior_Access_Array_Access_Array;
   function "=" (Left, Right : IndexedAnimationBehavior_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.IndexedAnimationBehavior_Package_References."=";
   subtype IndexedAnimationBehavior_Access_Array_Access_Array_Access is org.allbinary.animation.IndexedAnimationBehavior_Package_References.IndexedAnimationBehavior_Access_Array_Access_Array_Access;
   function "=" (Left, Right : IndexedAnimationBehavior_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.IndexedAnimationBehavior_Package_References."=";
   function Java_Box (Value : IndexedAnimationBehavior_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.IndexedAnimationBehavior_Package_References.Java_Box;
   function Java_Unbox_IndexedAnimationBehavior_Access_Array_Access_Array (Value : access Java_Object'Class) return IndexedAnimationBehavior_Access_Array_Access_Array_Access renames org.allbinary.animation.IndexedAnimationBehavior_Package_References.Java_Unbox_IndexedAnimationBehavior_Access_Array_Access_Array;

   type IndexedAnimationBehavior is new AnimationBehavior with record
      frameDelayTime : Long_Long_Integer;
      loopTotal : Integer;
      elapsedTime : Long_Long_Integer;
      loopIndex : Integer;
   end record;

   procedure Initialize (This : in out IndexedAnimationBehavior'Class; loopTotal : Integer; frameDelayTime : Long_Long_Integer);
   function Create (loopTotal : Integer; frameDelayTime : Long_Long_Integer) return IndexedAnimationBehavior_Access;
   procedure reset (This : in out IndexedAnimationBehavior);

end org.allbinary.animation.IndexedAnimationBehavior_Package;


