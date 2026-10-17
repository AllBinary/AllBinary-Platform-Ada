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
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.time.GameTickTimeDelayHelperFactory_Package; use org.allbinary.time.GameTickTimeDelayHelperFactory_Package;
with org.allbinary.time.TimeDelayHelper_Package; use org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.animation.VectorAnimation_Package; use org.allbinary.animation.VectorAnimation_Package;
with org.allbinary.animation.AnimationBehavior_Package; use org.allbinary.animation.AnimationBehavior_Package;

package org.allbinary.animation.TimedVectorAnimation_Package is

   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package GameTickTimeDelayHelperFactory_Package renames Standard.org.allbinary.time.GameTickTimeDelayHelperFactory_Package;
   package TimeDelayHelper_Package renames Standard.org.allbinary.time.TimeDelayHelper_Package;

   type TimedVectorAnimation is tagged;
   type TimedVectorAnimation_Access is access all TimedVectorAnimation'Class;
   type TimedVectorAnimation_Access_Array is array (Natural range <>) of TimedVectorAnimation_Access;
   type TimedVectorAnimation_Access_Array_Access is access all TimedVectorAnimation_Access_Array;

   type TimedVectorAnimation is new VectorAnimation with record
      timeElapsedHelper : TimeDelayHelper_Access;
   end record;

   procedure Initialize (This : in out TimedVectorAnimation'Class; currentPoints : Integer_Array_Access_Array_Access_Array_Access; basicColor_Param : access BasicColor'Class; animationBehavior_Param : access AnimationBehavior'Class);
   function Create (currentPoints : Integer_Array_Access_Array_Access_Array_Access; basicColor_Param : access BasicColor'Class; animationBehavior_Param : access AnimationBehavior'Class) return TimedVectorAnimation_Access;
   procedure nextFrame (This : in out TimedVectorAnimation);

end org.allbinary.animation.TimedVectorAnimation_Package;


