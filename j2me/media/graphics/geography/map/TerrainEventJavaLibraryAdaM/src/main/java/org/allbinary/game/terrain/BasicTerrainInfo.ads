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

limited with org.allbinary.game.terrain.BasicTerrainInfo_Package;
package org.allbinary.game.terrain.BasicTerrainInfo_Package_References is
   type BasicTerrainInfo_Access is access all org.allbinary.game.terrain.BasicTerrainInfo_Package.BasicTerrainInfo'Class;
   type BasicTerrainInfo_Access_Array is array (Natural range <>) of BasicTerrainInfo_Access;
   type BasicTerrainInfo_Access_Array_Access is access all BasicTerrainInfo_Access_Array;
   type BasicTerrainInfo_Access_Array_Access_Array is array (Natural range <>) of BasicTerrainInfo_Access_Array_Access;
   type BasicTerrainInfo_Access_Array_Access_Array_Access is access all BasicTerrainInfo_Access_Array_Access_Array;
end org.allbinary.game.terrain.BasicTerrainInfo_Package_References;

with org.allbinary.game.terrain.BasicTerrainInfo_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.math.Angle_Package;
with org.allbinary.math.Angle_Package_References;

package org.allbinary.game.terrain.BasicTerrainInfo_Package is

   package Angle_Package renames Standard.org.allbinary.math.Angle_Package;
   package Reference_Types is
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
   end Reference_Types;
   use Reference_Types;


   subtype BasicTerrainInfo_Access is org.allbinary.game.terrain.BasicTerrainInfo_Package_References.BasicTerrainInfo_Access;
   function "=" (Left, Right : BasicTerrainInfo_Access) return Boolean renames org.allbinary.game.terrain.BasicTerrainInfo_Package_References."=";
   subtype BasicTerrainInfo_Access_Array is org.allbinary.game.terrain.BasicTerrainInfo_Package_References.BasicTerrainInfo_Access_Array;
   function "=" (Left, Right : BasicTerrainInfo_Access_Array) return Boolean renames org.allbinary.game.terrain.BasicTerrainInfo_Package_References."=";
   subtype BasicTerrainInfo_Access_Array_Access is org.allbinary.game.terrain.BasicTerrainInfo_Package_References.BasicTerrainInfo_Access_Array_Access;
   function "=" (Left, Right : BasicTerrainInfo_Access_Array_Access) return Boolean renames org.allbinary.game.terrain.BasicTerrainInfo_Package_References."=";
   subtype BasicTerrainInfo_Access_Array_Access_Array is org.allbinary.game.terrain.BasicTerrainInfo_Package_References.BasicTerrainInfo_Access_Array_Access_Array;
   function "=" (Left, Right : BasicTerrainInfo_Access_Array_Access_Array) return Boolean renames org.allbinary.game.terrain.BasicTerrainInfo_Package_References."=";
   subtype BasicTerrainInfo_Access_Array_Access_Array_Access is org.allbinary.game.terrain.BasicTerrainInfo_Package_References.BasicTerrainInfo_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicTerrainInfo_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.terrain.BasicTerrainInfo_Package_References."=";

   type BasicTerrainInfo is new Java_Object with record
      angle : Angle_Access;
   end record;
   NULL_BASIC_TERRAIN_INFO : BasicTerrainInfo_Access;

   procedure Initialize (This : in out BasicTerrainInfo'Class; angle_Param : access Angle_Package.Angle'Class);
   function Create (angle_Param : access Angle_Package.Angle'Class) return BasicTerrainInfo_Access;
   function getAngle (This : in out BasicTerrainInfo) return Angle_Access;
   procedure setAngle (This : in out BasicTerrainInfo; angle_Param : access Angle_Package.Angle'Class);

end org.allbinary.game.terrain.BasicTerrainInfo_Package;


