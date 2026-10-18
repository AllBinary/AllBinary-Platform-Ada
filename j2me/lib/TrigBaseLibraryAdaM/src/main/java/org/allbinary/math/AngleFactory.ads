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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.math.Angle_Package; use org.allbinary.math.Angle_Package;
with org.allbinary.math.NamedAngle_Package; use org.allbinary.math.NamedAngle_Package;
with org.allbinary.math.FrameUtil_Package; use org.allbinary.math.FrameUtil_Package;

package org.allbinary.math.AngleFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;

   type AngleFactory is tagged;
   type AngleFactory_Access is access all AngleFactory'Class;
   type AngleFactory_Access_Array is array (Natural range <>) of AngleFactory_Access;
   type AngleFactory_Access_Array_Access is access all AngleFactory_Access_Array;
   type AngleFactory_Access_Array_Access_Array is array (Natural range <>) of AngleFactory_Access_Array_Access;
   type AngleFactory_Access_Array_Access_Array_Access is access all AngleFactory_Access_Array_Access_Array;

   type AngleFactory is new Java_Object with record
      logUtil : LogUtil_Access;
      TOTAL_ANGLE : Short_Integer;
      QUARTER_TOTAL_ANGLE : Short_Integer;
      angleArray : Angle_Access_Array_Access;
      NEGATIVE_ONE : Short_Integer;
      NOT_ANGLE : NamedAngle_Access;
      DOWN : NamedAngle_Access;
      UP : NamedAngle_Access;
      LEFT : NamedAngle_Access;
      RIGHT : NamedAngle_Access;
      frameUtil : FrameUtil_Access;
   end record;
   instance : AngleFactory_Access;

   procedure Initialize (This : in out AngleFactory'Class);
   function Create return AngleFactory_Access;
   function getInstance return AngleFactory_Access;
   function getAt (This : in out AngleFactory; index : Integer) return Angle_Access;
   procedure getAt (This : in out AngleFactory; index : Integer);
   function getClosestDirection (This : in out AngleFactory; angle : Integer) return Angle_Access;
   procedure getClosestDirection (This : in out AngleFactory; angle : Integer);
   function getGeneralDirection (This : in out AngleFactory) return Angle_Access;
   procedure main (args : Unbounded_String_Array_Access);

end org.allbinary.math.AngleFactory_Package;


