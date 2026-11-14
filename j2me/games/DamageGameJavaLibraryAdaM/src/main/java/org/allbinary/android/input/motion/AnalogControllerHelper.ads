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
limited with org.allbinary.android.input.motion.AnalogControllerHelper_Package;
package org.allbinary.android.input.motion.AnalogControllerHelper_Package_References is
   type AnalogControllerHelper_Access is access all org.allbinary.android.input.motion.AnalogControllerHelper_Package.AnalogControllerHelper'Class;
   type AnalogControllerHelper_Access_Array is array (Natural range <>) of AnalogControllerHelper_Access;
   type AnalogControllerHelper_Access_Array_Access is access all AnalogControllerHelper_Access_Array;
   type AnalogControllerHelper_Access_Array_Access_Array is array (Natural range <>) of AnalogControllerHelper_Access_Array_Access;
   type AnalogControllerHelper_Access_Array_Access_Array_Access is access all AnalogControllerHelper_Access_Array_Access_Array;
   type AnalogControllerHelper_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AnalogControllerHelper_Access_Array_Access;
   end record;
   function Java_Box (Value : AnalogControllerHelper_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AnalogControllerHelper_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AnalogControllerHelper_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AnalogControllerHelper_Access_Array_Access is (if Value /= null and then Value.all in AnalogControllerHelper_Access_Array_Object'Class then AnalogControllerHelper_Access_Array_Object'Class (Value.all).Value else null);
   type AnalogControllerHelper_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AnalogControllerHelper_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AnalogControllerHelper_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AnalogControllerHelper_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AnalogControllerHelper_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AnalogControllerHelper_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AnalogControllerHelper_Access_Array_Access_Array_Object'Class then AnalogControllerHelper_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.android.input.motion.AnalogControllerHelper_Package_References;

with org.allbinary.android.input.motion.AnalogControllerHelper_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
with org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References;
limited with org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.time.TimeDelayHelper_Package_References;

package org.allbinary.android.input.motion.AnalogControllerHelper_Package is

   package CollidableDestroyableDamageableLayer_Package renames Standard.org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
   package TimeDelayHelper_Package renames Standard.org.allbinary.time.TimeDelayHelper_Package;
   package Reference_Types is
   subtype CollidableDestroyableDamageableLayer_Access is org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.CollidableDestroyableDamageableLayer_Access;
   use type CollidableDestroyableDamageableLayer_Access;
   subtype CollidableDestroyableDamageableLayer_Access_Array is org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.CollidableDestroyableDamageableLayer_Access_Array;
   use type CollidableDestroyableDamageableLayer_Access_Array;
   subtype CollidableDestroyableDamageableLayer_Access_Array_Access is org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.CollidableDestroyableDamageableLayer_Access_Array_Access;
   use type CollidableDestroyableDamageableLayer_Access_Array_Access;
   subtype CollidableDestroyableDamageableLayer_Access_Array_Access_Array is org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.CollidableDestroyableDamageableLayer_Access_Array_Access_Array;
   use type CollidableDestroyableDamageableLayer_Access_Array_Access_Array;
   subtype CollidableDestroyableDamageableLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.CollidableDestroyableDamageableLayer_Access_Array_Access_Array_Access;
   use type CollidableDestroyableDamageableLayer_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype AnalogControllerHelper_Access is org.allbinary.android.input.motion.AnalogControllerHelper_Package_References.AnalogControllerHelper_Access;
   function "=" (Left, Right : AnalogControllerHelper_Access) return Boolean renames org.allbinary.android.input.motion.AnalogControllerHelper_Package_References."=";
   subtype AnalogControllerHelper_Access_Array is org.allbinary.android.input.motion.AnalogControllerHelper_Package_References.AnalogControllerHelper_Access_Array;
   function "=" (Left, Right : AnalogControllerHelper_Access_Array) return Boolean renames org.allbinary.android.input.motion.AnalogControllerHelper_Package_References."=";
   subtype AnalogControllerHelper_Access_Array_Access is org.allbinary.android.input.motion.AnalogControllerHelper_Package_References.AnalogControllerHelper_Access_Array_Access;
   function "=" (Left, Right : AnalogControllerHelper_Access_Array_Access) return Boolean renames org.allbinary.android.input.motion.AnalogControllerHelper_Package_References."=";
   function Java_Box (Value : AnalogControllerHelper_Access_Array_Access) return Java_Object_Access renames org.allbinary.android.input.motion.AnalogControllerHelper_Package_References.Java_Box;
   function Java_Unbox_AnalogControllerHelper_Access_Array (Value : access Java_Object'Class) return AnalogControllerHelper_Access_Array_Access renames org.allbinary.android.input.motion.AnalogControllerHelper_Package_References.Java_Unbox_AnalogControllerHelper_Access_Array;
   subtype AnalogControllerHelper_Access_Array_Access_Array is org.allbinary.android.input.motion.AnalogControllerHelper_Package_References.AnalogControllerHelper_Access_Array_Access_Array;
   function "=" (Left, Right : AnalogControllerHelper_Access_Array_Access_Array) return Boolean renames org.allbinary.android.input.motion.AnalogControllerHelper_Package_References."=";
   subtype AnalogControllerHelper_Access_Array_Access_Array_Access is org.allbinary.android.input.motion.AnalogControllerHelper_Package_References.AnalogControllerHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AnalogControllerHelper_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.android.input.motion.AnalogControllerHelper_Package_References."=";
   function Java_Box (Value : AnalogControllerHelper_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.android.input.motion.AnalogControllerHelper_Package_References.Java_Box;
   function Java_Unbox_AnalogControllerHelper_Access_Array_Access_Array (Value : access Java_Object'Class) return AnalogControllerHelper_Access_Array_Access_Array_Access renames org.allbinary.android.input.motion.AnalogControllerHelper_Package_References.Java_Unbox_AnalogControllerHelper_Access_Array_Access_Array;

   type AnalogControllerHelper is new Java_Object with record
      reduceTimeFactor : Integer;
      SCALE_VALUE : Integer;
      rightTimeElapsedHelper : TimeDelayHelper_Access;
      leftTimeElapsedHelper : TimeDelayHelper_Access;
      downTimeElapsedHelper : TimeDelayHelper_Access;
      upTimeElapsedHelper : TimeDelayHelper_Access;
   end record;

   procedure Initialize (This : in out AnalogControllerHelper'Class; reduceTimeFactor : Integer);
   function Create (reduceTimeFactor : Integer) return AnalogControllerHelper_Access;
   procedure right (This : in out AnalogControllerHelper; collidableDestroyableDamageableLayer_Param : access CollidableDestroyableDamageableLayer_Package.CollidableDestroyableDamageableLayer'Class; xAnalogValue : Integer);
   procedure left (This : in out AnalogControllerHelper; collidableDestroyableDamageableLayer_Param : access CollidableDestroyableDamageableLayer_Package.CollidableDestroyableDamageableLayer'Class; xAnalogValue : Integer);
   procedure up (This : in out AnalogControllerHelper; collidableDestroyableDamageableLayer_Param : access CollidableDestroyableDamageableLayer_Package.CollidableDestroyableDamageableLayer'Class; xAnalogValue : Integer);
   procedure down (This : in out AnalogControllerHelper; collidableDestroyableDamageableLayer_Param : access CollidableDestroyableDamageableLayer_Package.CollidableDestroyableDamageableLayer'Class; xAnalogValue : Integer);

end org.allbinary.android.input.motion.AnalogControllerHelper_Package;


