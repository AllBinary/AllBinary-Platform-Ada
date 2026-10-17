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
with org.allbinary.math.Angle_Package; use org.allbinary.math.Angle_Package;
with org.allbinary.math.AngleFactory_Package; use org.allbinary.math.AngleFactory_Package;
with org.allbinary.direction.DirectionFactory_Package; use org.allbinary.direction.DirectionFactory_Package;
with org.allbinary.direction.Direction_Package; use org.allbinary.direction.Direction_Package;

package org.allbinary.direction.DirectionUtil_Package is

   package Angle_Package renames Standard.org.allbinary.math.Angle_Package;
   package AngleFactory_Package renames Standard.org.allbinary.math.AngleFactory_Package;

   type DirectionUtil is tagged;
   type DirectionUtil_Access is access all DirectionUtil'Class;
   type DirectionUtil_Access_Array is array (Natural range <>) of DirectionUtil_Access;
   type DirectionUtil_Access_Array_Access is access all DirectionUtil_Access_Array;

   type DirectionUtil is new Java_Object with record
      directionArray : Angle_Access_Array_Access;
      directionArray2 : Angle_Access_Array_Access;
   end record;
   instance : DirectionUtil_Access;

   procedure Initialize (This : in out DirectionUtil'Class);
   function Create return DirectionUtil_Access;
   function getInstance return DirectionUtil_Access;
   function getAngle (This : in out DirectionUtil; direction_Param : access Direction'Class) return Angle_Access;
   procedure getAngle (This : in out DirectionUtil; direction_Param : access Direction'Class);
   function getFrameAngle (This : in out DirectionUtil; direction_Param : access Direction'Class) return Angle_Access;
   procedure getFrameAngle (This : in out DirectionUtil; direction_Param : access Direction'Class);

end org.allbinary.direction.DirectionUtil_Package;


