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

limited with org.allbinary.game.terrain.TerrainEvent_Package;
package org.allbinary.game.terrain.TerrainEvent_Package_References is
   type TerrainEvent_Access is access all org.allbinary.game.terrain.TerrainEvent_Package.TerrainEvent'Class;
   type TerrainEvent_Access_Array is array (Natural range <>) of TerrainEvent_Access;
   type TerrainEvent_Access_Array_Access is access all TerrainEvent_Access_Array;
   type TerrainEvent_Access_Array_Access_Array is array (Natural range <>) of TerrainEvent_Access_Array_Access;
   type TerrainEvent_Access_Array_Access_Array_Access is access all TerrainEvent_Access_Array_Access_Array;
end org.allbinary.game.terrain.TerrainEvent_Package_References;

with org.allbinary.game.terrain.TerrainEvent_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
limited with org.allbinary.game.terrain.BasicTerrainInfo_Package;
with org.allbinary.game.terrain.BasicTerrainInfo_Package_References;

package org.allbinary.game.terrain.TerrainEvent_Package is

   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package Reference_Types is
   subtype BasicTerrainInfo_Access is org.allbinary.game.terrain.BasicTerrainInfo_Package_References.BasicTerrainInfo_Access;
   use type BasicTerrainInfo_Access;
   subtype BasicTerrainInfo_Access_Array is org.allbinary.game.terrain.BasicTerrainInfo_Package_References.BasicTerrainInfo_Access_Array;
   use type BasicTerrainInfo_Access_Array;
   subtype BasicTerrainInfo_Access_Array_Access is org.allbinary.game.terrain.BasicTerrainInfo_Package_References.BasicTerrainInfo_Access_Array_Access;
   use type BasicTerrainInfo_Access_Array_Access;
   subtype BasicTerrainInfo_Access_Array_Access_Array is org.allbinary.game.terrain.BasicTerrainInfo_Package_References.BasicTerrainInfo_Access_Array_Access_Array;
   use type BasicTerrainInfo_Access_Array_Access_Array;
   subtype BasicTerrainInfo_Access_Array_Access_Array_Access is org.allbinary.game.terrain.BasicTerrainInfo_Package_References.BasicTerrainInfo_Access_Array_Access_Array_Access;
   use type BasicTerrainInfo_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype TerrainEvent_Access is org.allbinary.game.terrain.TerrainEvent_Package_References.TerrainEvent_Access;
   function "=" (Left, Right : TerrainEvent_Access) return Boolean renames org.allbinary.game.terrain.TerrainEvent_Package_References."=";
   subtype TerrainEvent_Access_Array is org.allbinary.game.terrain.TerrainEvent_Package_References.TerrainEvent_Access_Array;
   function "=" (Left, Right : TerrainEvent_Access_Array) return Boolean renames org.allbinary.game.terrain.TerrainEvent_Package_References."=";
   subtype TerrainEvent_Access_Array_Access is org.allbinary.game.terrain.TerrainEvent_Package_References.TerrainEvent_Access_Array_Access;
   function "=" (Left, Right : TerrainEvent_Access_Array_Access) return Boolean renames org.allbinary.game.terrain.TerrainEvent_Package_References."=";
   subtype TerrainEvent_Access_Array_Access_Array is org.allbinary.game.terrain.TerrainEvent_Package_References.TerrainEvent_Access_Array_Access_Array;
   function "=" (Left, Right : TerrainEvent_Access_Array_Access_Array) return Boolean renames org.allbinary.game.terrain.TerrainEvent_Package_References."=";
   subtype TerrainEvent_Access_Array_Access_Array_Access is org.allbinary.game.terrain.TerrainEvent_Package_References.TerrainEvent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TerrainEvent_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.terrain.TerrainEvent_Package_References."=";

   type TerrainEvent is new AllBinaryEventObject with record
      basicTerrainInfo : BasicTerrainInfo_Access;
   end record;

   procedure Initialize (This : in out TerrainEvent'Class; basicTerrainInfo_Param : access Java_Object'Class);
   function Create (basicTerrainInfo_Param : access Java_Object'Class) return TerrainEvent_Access;
   function toString (This : in out TerrainEvent) return Unbounded_String;
   function getBasicTerrainInfo (This : in out TerrainEvent) return BasicTerrainInfo_Access;
   procedure setBasicTerrainInfo (This : in out TerrainEvent; basicTerrainInfo_Param : access BasicTerrainInfo_Package.BasicTerrainInfo'Class);
   procedure setBasicTerrainInfoForCircularStaticPool (This : in out TerrainEvent; basicTerrainInfo_Param : access BasicTerrainInfo_Package.BasicTerrainInfo'Class);

end org.allbinary.game.terrain.TerrainEvent_Package;


