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
with org.allbinary.direction.Direction_Package; use org.allbinary.direction.Direction_Package;

package org.allbinary.direction.DirectionalInterface_Package is

   package Angle_Package renames Standard.org.allbinary.math.Angle_Package;

   type DirectionalInterface is interface;
   type DirectionalInterface_Access is access all DirectionalInterface'Class;
   type DirectionalInterface_Access_Array is array (Natural range <>) of DirectionalInterface_Access;
   type DirectionalInterface_Access_Array_Access is access all DirectionalInterface_Access_Array;
   type DirectionalInterface_Access_Array_Access_Array is array (Natural range <>) of DirectionalInterface_Access_Array_Access;
   type DirectionalInterface_Access_Array_Access_Array_Access is access all DirectionalInterface_Access_Array_Access_Array;
   procedure setFrameByDirection (This : in out DirectionalInterface; direction_Param : access Direction_Package.Direction'Class) is abstract;
   procedure setFrameToAngle (This : in out DirectionalInterface; angle_Param : access Angle_Package.Angle'Class) is abstract;
   procedure adjustFrameToAngle (This : in out DirectionalInterface; newAngle_Param : access Angle_Package.Angle'Class) is abstract;
   procedure adjustFrame (This : in out DirectionalInterface; angle : Short_Integer) is abstract;

end org.allbinary.direction.DirectionalInterface_Package;


