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

limited with org.allbinary.math.AngleFactory_Package;
package org.allbinary.math.AngleFactory_Package_References is
   type AngleFactory_Access is access all org.allbinary.math.AngleFactory_Package.AngleFactory'Class;
   type AngleFactory_Access_Array is array (Natural range <>) of AngleFactory_Access;
   type AngleFactory_Access_Array_Access is access all AngleFactory_Access_Array;
   type AngleFactory_Access_Array_Access_Array is array (Natural range <>) of AngleFactory_Access_Array_Access;
   type AngleFactory_Access_Array_Access_Array_Access is access all AngleFactory_Access_Array_Access_Array;
end org.allbinary.math.AngleFactory_Package_References;

with org.allbinary.math.AngleFactory_Package_References;
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
limited with org.allbinary.math.Angle_Package;
with org.allbinary.math.Angle_Package_References;
limited with org.allbinary.math.NamedAngle_Package;
with org.allbinary.math.NamedAngle_Package_References;
limited with org.allbinary.math.FrameUtil_Package;
with org.allbinary.math.FrameUtil_Package_References;

package org.allbinary.math.AngleFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
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
   subtype Angle_Access is org.allbinary.math.Angle_Package_References.Angle_Access;
   use type Angle_Access;
   subtype Angle_Access_Array is org.allbinary.math.Angle_Package_References.Angle_Access_Array;
   use type Angle_Access_Array;
   subtype Angle_Access_Array_Access is org.allbinary.math.Angle_Package_References.Angle_Access_Array_Access;
   use type Angle_Access_Array_Access;
   subtype Angle_Access_Array_Access_Array is org.allbinary.math.Angle_Package_References.Angle_Access_Array_Access_Array;
   use type Angle_Access_Array_Access_Array;
   subtype Angle_Access_Array_Access_Array_Access is org.allbinary.math.Angle_Package_References.Angle_Access_Array_Access_Array_Access;
   use type Angle_Access_Array_Access_Array_Access;
   subtype NamedAngle_Access is org.allbinary.math.NamedAngle_Package_References.NamedAngle_Access;
   use type NamedAngle_Access;
   subtype NamedAngle_Access_Array is org.allbinary.math.NamedAngle_Package_References.NamedAngle_Access_Array;
   use type NamedAngle_Access_Array;
   subtype NamedAngle_Access_Array_Access is org.allbinary.math.NamedAngle_Package_References.NamedAngle_Access_Array_Access;
   use type NamedAngle_Access_Array_Access;
   subtype NamedAngle_Access_Array_Access_Array is org.allbinary.math.NamedAngle_Package_References.NamedAngle_Access_Array_Access_Array;
   use type NamedAngle_Access_Array_Access_Array;
   subtype NamedAngle_Access_Array_Access_Array_Access is org.allbinary.math.NamedAngle_Package_References.NamedAngle_Access_Array_Access_Array_Access;
   use type NamedAngle_Access_Array_Access_Array_Access;
   subtype FrameUtil_Access is org.allbinary.math.FrameUtil_Package_References.FrameUtil_Access;
   use type FrameUtil_Access;
   subtype FrameUtil_Access_Array is org.allbinary.math.FrameUtil_Package_References.FrameUtil_Access_Array;
   use type FrameUtil_Access_Array;
   subtype FrameUtil_Access_Array_Access is org.allbinary.math.FrameUtil_Package_References.FrameUtil_Access_Array_Access;
   use type FrameUtil_Access_Array_Access;
   subtype FrameUtil_Access_Array_Access_Array is org.allbinary.math.FrameUtil_Package_References.FrameUtil_Access_Array_Access_Array;
   use type FrameUtil_Access_Array_Access_Array;
   subtype FrameUtil_Access_Array_Access_Array_Access is org.allbinary.math.FrameUtil_Package_References.FrameUtil_Access_Array_Access_Array_Access;
   use type FrameUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AngleFactory_Access is org.allbinary.math.AngleFactory_Package_References.AngleFactory_Access;
   function "=" (Left, Right : AngleFactory_Access) return Boolean renames org.allbinary.math.AngleFactory_Package_References."=";
   subtype AngleFactory_Access_Array is org.allbinary.math.AngleFactory_Package_References.AngleFactory_Access_Array;
   function "=" (Left, Right : AngleFactory_Access_Array) return Boolean renames org.allbinary.math.AngleFactory_Package_References."=";
   subtype AngleFactory_Access_Array_Access is org.allbinary.math.AngleFactory_Package_References.AngleFactory_Access_Array_Access;
   function "=" (Left, Right : AngleFactory_Access_Array_Access) return Boolean renames org.allbinary.math.AngleFactory_Package_References."=";
   subtype AngleFactory_Access_Array_Access_Array is org.allbinary.math.AngleFactory_Package_References.AngleFactory_Access_Array_Access_Array;
   function "=" (Left, Right : AngleFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.math.AngleFactory_Package_References."=";
   subtype AngleFactory_Access_Array_Access_Array_Access is org.allbinary.math.AngleFactory_Package_References.AngleFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AngleFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.math.AngleFactory_Package_References."=";

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


