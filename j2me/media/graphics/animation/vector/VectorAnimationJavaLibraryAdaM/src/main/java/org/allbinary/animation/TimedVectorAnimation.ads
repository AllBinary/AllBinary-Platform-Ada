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
limited with org.allbinary.animation.TimedVectorAnimation_Package;
package org.allbinary.animation.TimedVectorAnimation_Package_References is
   type TimedVectorAnimation_Access is access all org.allbinary.animation.TimedVectorAnimation_Package.TimedVectorAnimation'Class;
   type TimedVectorAnimation_Access_Array is array (Natural range <>) of TimedVectorAnimation_Access;
   type TimedVectorAnimation_Access_Array_Access is access all TimedVectorAnimation_Access_Array;
   type TimedVectorAnimation_Access_Array_Access_Array is array (Natural range <>) of TimedVectorAnimation_Access_Array_Access;
   type TimedVectorAnimation_Access_Array_Access_Array_Access is access all TimedVectorAnimation_Access_Array_Access_Array;
   type TimedVectorAnimation_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TimedVectorAnimation_Access_Array_Access;
   end record;
   function Java_Box (Value : TimedVectorAnimation_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TimedVectorAnimation_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TimedVectorAnimation_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TimedVectorAnimation_Access_Array_Access is (if Value /= null and then Value.all in TimedVectorAnimation_Access_Array_Object'Class then TimedVectorAnimation_Access_Array_Object'Class (Value.all).Value else null);
   type TimedVectorAnimation_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TimedVectorAnimation_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TimedVectorAnimation_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TimedVectorAnimation_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TimedVectorAnimation_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TimedVectorAnimation_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TimedVectorAnimation_Access_Array_Access_Array_Object'Class then TimedVectorAnimation_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.animation.TimedVectorAnimation_Package_References;

with org.allbinary.animation.TimedVectorAnimation_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
limited with org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.time.TimeDelayHelper_Package_References;
with org.allbinary.animation.VectorAnimation_Package; use org.allbinary.animation.VectorAnimation_Package;
limited with org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.animation.AnimationBehavior_Package_References;

package org.allbinary.animation.TimedVectorAnimation_Package is

   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package TimeDelayHelper_Package renames Standard.org.allbinary.time.TimeDelayHelper_Package;
   package Reference_Types is
   subtype BasicColor_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access;
   use type BasicColor_Access;
   subtype BasicColor_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array;
   use type BasicColor_Access_Array;
   subtype BasicColor_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access;
   use type BasicColor_Access_Array_Access;
   subtype BasicColor_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array;
   use type BasicColor_Access_Array_Access_Array;
   subtype BasicColor_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array_Access;
   use type BasicColor_Access_Array_Access_Array_Access;
   subtype TimeDelayHelper_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access;
   use type TimeDelayHelper_Access;
   subtype TimeDelayHelper_Access_Array is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array;
   use type TimeDelayHelper_Access_Array;
   subtype TimeDelayHelper_Access_Array_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access;
   use type TimeDelayHelper_Access_Array_Access;
   subtype TimeDelayHelper_Access_Array_Access_Array is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access_Array;
   use type TimeDelayHelper_Access_Array_Access_Array;
   subtype TimeDelayHelper_Access_Array_Access_Array_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access_Array_Access;
   use type TimeDelayHelper_Access_Array_Access_Array_Access;
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


   subtype TimedVectorAnimation_Access is org.allbinary.animation.TimedVectorAnimation_Package_References.TimedVectorAnimation_Access;
   function "=" (Left, Right : TimedVectorAnimation_Access) return Boolean renames org.allbinary.animation.TimedVectorAnimation_Package_References."=";
   subtype TimedVectorAnimation_Access_Array is org.allbinary.animation.TimedVectorAnimation_Package_References.TimedVectorAnimation_Access_Array;
   function "=" (Left, Right : TimedVectorAnimation_Access_Array) return Boolean renames org.allbinary.animation.TimedVectorAnimation_Package_References."=";
   subtype TimedVectorAnimation_Access_Array_Access is org.allbinary.animation.TimedVectorAnimation_Package_References.TimedVectorAnimation_Access_Array_Access;
   function "=" (Left, Right : TimedVectorAnimation_Access_Array_Access) return Boolean renames org.allbinary.animation.TimedVectorAnimation_Package_References."=";
   function Java_Box (Value : TimedVectorAnimation_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.TimedVectorAnimation_Package_References.Java_Box;
   function Java_Unbox_TimedVectorAnimation_Access_Array (Value : access Java_Object'Class) return TimedVectorAnimation_Access_Array_Access renames org.allbinary.animation.TimedVectorAnimation_Package_References.Java_Unbox_TimedVectorAnimation_Access_Array;
   subtype TimedVectorAnimation_Access_Array_Access_Array is org.allbinary.animation.TimedVectorAnimation_Package_References.TimedVectorAnimation_Access_Array_Access_Array;
   function "=" (Left, Right : TimedVectorAnimation_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.TimedVectorAnimation_Package_References."=";
   subtype TimedVectorAnimation_Access_Array_Access_Array_Access is org.allbinary.animation.TimedVectorAnimation_Package_References.TimedVectorAnimation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TimedVectorAnimation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.TimedVectorAnimation_Package_References."=";
   function Java_Box (Value : TimedVectorAnimation_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.TimedVectorAnimation_Package_References.Java_Box;
   function Java_Unbox_TimedVectorAnimation_Access_Array_Access_Array (Value : access Java_Object'Class) return TimedVectorAnimation_Access_Array_Access_Array_Access renames org.allbinary.animation.TimedVectorAnimation_Package_References.Java_Unbox_TimedVectorAnimation_Access_Array_Access_Array;

   type TimedVectorAnimation is new VectorAnimation with record
      timeElapsedHelper : TimeDelayHelper_Access;
   end record;

   procedure Initialize (This : in out TimedVectorAnimation'Class; currentPoints : Integer_Array_Access_Array_Access_Array_Access; basicColor_Param : access BasicColor_Package.BasicColor'Class; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class);
   function Create (currentPoints : Integer_Array_Access_Array_Access_Array_Access; basicColor_Param : access BasicColor_Package.BasicColor'Class; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return TimedVectorAnimation_Access;
   procedure nextFrame (This : in out TimedVectorAnimation);

end org.allbinary.animation.TimedVectorAnimation_Package;


