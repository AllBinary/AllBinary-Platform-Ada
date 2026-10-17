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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package; use org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
with org.allbinary.time.TimeDelayHelper_Package; use org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.android.input.motion.AnalogControllerConfigurationFactory_Package; use org.allbinary.android.input.motion.AnalogControllerConfigurationFactory_Package;

package org.allbinary.android.input.motion.AnalogControllerHelper_Package is

   package CollidableDestroyableDamageableLayer_Package renames Standard.org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
   package TimeDelayHelper_Package renames Standard.org.allbinary.time.TimeDelayHelper_Package;

   type AnalogControllerHelper is tagged;
   type AnalogControllerHelper_Access is access all AnalogControllerHelper'Class;
   type AnalogControllerHelper_Access_Array is array (Natural range <>) of AnalogControllerHelper_Access;
   type AnalogControllerHelper_Access_Array_Access is access all AnalogControllerHelper_Access_Array;

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
   procedure right (This : in out AnalogControllerHelper; collidableDestroyableDamageableLayer_Param : access CollidableDestroyableDamageableLayer'Class; xAnalogValue : Integer);
   procedure left (This : in out AnalogControllerHelper; collidableDestroyableDamageableLayer_Param : access CollidableDestroyableDamageableLayer'Class; xAnalogValue : Integer);
   procedure up (This : in out AnalogControllerHelper; collidableDestroyableDamageableLayer_Param : access CollidableDestroyableDamageableLayer'Class; xAnalogValue : Integer);
   procedure down (This : in out AnalogControllerHelper; collidableDestroyableDamageableLayer_Param : access CollidableDestroyableDamageableLayer'Class; xAnalogValue : Integer);

end org.allbinary.android.input.motion.AnalogControllerHelper_Package;


