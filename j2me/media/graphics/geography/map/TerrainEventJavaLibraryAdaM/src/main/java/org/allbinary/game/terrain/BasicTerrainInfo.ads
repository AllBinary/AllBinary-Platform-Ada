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

package org.allbinary.game.terrain.BasicTerrainInfo_Package is

   package Angle_Package renames org.allbinary.math.Angle_Package;
   package AngleFactory_Package renames org.allbinary.math.AngleFactory_Package;

   type BasicTerrainInfo is tagged;
   type BasicTerrainInfo_Access is access all BasicTerrainInfo'Class;
   type BasicTerrainInfo_Access_Array is array (Natural range <>) of BasicTerrainInfo_Access;
   type BasicTerrainInfo_Access_Array_Access is access all BasicTerrainInfo_Access_Array;

   type BasicTerrainInfo is new Java_Object with record
      angle : Angle_Access;
   end record;
   NULL_BASIC_TERRAIN_INFO : BasicTerrainInfo_Access;

   procedure Initialize (This : in out BasicTerrainInfo'Class; angle : Angle_Access);
   function Create (angle : Angle_Access) return BasicTerrainInfo_Access;
   function getAngle (This : in out BasicTerrainInfo) return Angle_Access;
   procedure getAngle (This : in out BasicTerrainInfo);
   procedure setAngle (This : in out BasicTerrainInfo; angle : Angle_Access);

end org.allbinary.game.terrain.BasicTerrainInfo_Package;


