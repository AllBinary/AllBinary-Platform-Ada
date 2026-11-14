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
limited with org.allbinary.animation.IndexedAnimation_Package;
package org.allbinary.animation.IndexedAnimation_Package_References is
   type IndexedAnimation_Access is access all org.allbinary.animation.IndexedAnimation_Package.IndexedAnimation'Class;
   type IndexedAnimation_Access_Array is array (Natural range <>) of IndexedAnimation_Access;
   type IndexedAnimation_Access_Array_Access is access all IndexedAnimation_Access_Array;
   type IndexedAnimation_Access_Array_Access_Array is array (Natural range <>) of IndexedAnimation_Access_Array_Access;
   type IndexedAnimation_Access_Array_Access_Array_Access is access all IndexedAnimation_Access_Array_Access_Array;
   type IndexedAnimation_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : IndexedAnimation_Access_Array_Access;
   end record;
   function Java_Box (Value : IndexedAnimation_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new IndexedAnimation_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_IndexedAnimation_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return IndexedAnimation_Access_Array_Access is (if Value /= null and then Value.all in IndexedAnimation_Access_Array_Object'Class then IndexedAnimation_Access_Array_Object'Class (Value.all).Value else null);
   type IndexedAnimation_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : IndexedAnimation_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : IndexedAnimation_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new IndexedAnimation_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_IndexedAnimation_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return IndexedAnimation_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in IndexedAnimation_Access_Array_Access_Array_Object'Class then IndexedAnimation_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.animation.IndexedAnimation_Package_References;

with org.allbinary.animation.IndexedAnimation_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
with org.allbinary.animation.IndexedAnimationInterface_Package; use org.allbinary.animation.IndexedAnimationInterface_Package;
limited with org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.animation.AnimationBehavior_Package_References;

package org.allbinary.animation.IndexedAnimation_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Reference_Types is
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
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


   subtype IndexedAnimation_Access is org.allbinary.animation.IndexedAnimation_Package_References.IndexedAnimation_Access;
   function "=" (Left, Right : IndexedAnimation_Access) return Boolean renames org.allbinary.animation.IndexedAnimation_Package_References."=";
   subtype IndexedAnimation_Access_Array is org.allbinary.animation.IndexedAnimation_Package_References.IndexedAnimation_Access_Array;
   function "=" (Left, Right : IndexedAnimation_Access_Array) return Boolean renames org.allbinary.animation.IndexedAnimation_Package_References."=";
   subtype IndexedAnimation_Access_Array_Access is org.allbinary.animation.IndexedAnimation_Package_References.IndexedAnimation_Access_Array_Access;
   function "=" (Left, Right : IndexedAnimation_Access_Array_Access) return Boolean renames org.allbinary.animation.IndexedAnimation_Package_References."=";
   function Java_Box (Value : IndexedAnimation_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.IndexedAnimation_Package_References.Java_Box;
   function Java_Unbox_IndexedAnimation_Access_Array (Value : access Java_Object'Class) return IndexedAnimation_Access_Array_Access renames org.allbinary.animation.IndexedAnimation_Package_References.Java_Unbox_IndexedAnimation_Access_Array;
   subtype IndexedAnimation_Access_Array_Access_Array is org.allbinary.animation.IndexedAnimation_Package_References.IndexedAnimation_Access_Array_Access_Array;
   function "=" (Left, Right : IndexedAnimation_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.IndexedAnimation_Package_References."=";
   subtype IndexedAnimation_Access_Array_Access_Array_Access is org.allbinary.animation.IndexedAnimation_Package_References.IndexedAnimation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : IndexedAnimation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.IndexedAnimation_Package_References."=";
   function Java_Box (Value : IndexedAnimation_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.IndexedAnimation_Package_References.Java_Box;
   function Java_Unbox_IndexedAnimation_Access_Array_Access_Array (Value : access Java_Object'Class) return IndexedAnimation_Access_Array_Access_Array_Access renames org.allbinary.animation.IndexedAnimation_Package_References.Java_Unbox_IndexedAnimation_Access_Array_Access_Array;

   type IndexedAnimation is new Animation_Package.Animation and IndexedAnimationInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      animationBehaviorP : AnimationBehavior_Access;
   end record;

   procedure Initialize (This : in out IndexedAnimation'Class; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class);
   function Create (animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return IndexedAnimation_Access;
   function getAnimationBehavior (This : in out IndexedAnimation) return AnimationBehavior_Access;
   procedure reset (This : in out IndexedAnimation);
   procedure setFrame (This : in out IndexedAnimation; index : Integer);
   function getFrame (This : in out IndexedAnimation) return Integer;
   function getAnimationSize (This : in out IndexedAnimation) return Integer;
   function getSize (This : in out IndexedAnimation) return Integer;
   procedure previousFrame (This : in out IndexedAnimation);
   function isLastFrame (This : in out IndexedAnimation) return Boolean;
   procedure setSequence (This : in out IndexedAnimation; sequence : Integer_Array_Access);
   function getSequence (This : in out IndexedAnimation) return Integer_Array_Access;
   procedure setState (This : in out IndexedAnimation; indexedAnimation_Var_Param : access IndexedAnimation_Package.IndexedAnimation'Class);
   function getWidth (This : in out IndexedAnimation) return Integer;
   function getHeight (This : in out IndexedAnimation) return Integer;

end org.allbinary.animation.IndexedAnimation_Package;


