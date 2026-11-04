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

limited with org.allbinary.game.terrain.TerrainEventCircularStaticPool_Package;
package org.allbinary.game.terrain.TerrainEventCircularStaticPool_Package_References is
   type TerrainEventCircularStaticPool_Access is access all org.allbinary.game.terrain.TerrainEventCircularStaticPool_Package.TerrainEventCircularStaticPool'Class;
   type TerrainEventCircularStaticPool_Access_Array is array (Natural range <>) of TerrainEventCircularStaticPool_Access;
   type TerrainEventCircularStaticPool_Access_Array_Access is access all TerrainEventCircularStaticPool_Access_Array;
   type TerrainEventCircularStaticPool_Access_Array_Access_Array is array (Natural range <>) of TerrainEventCircularStaticPool_Access_Array_Access;
   type TerrainEventCircularStaticPool_Access_Array_Access_Array_Access is access all TerrainEventCircularStaticPool_Access_Array_Access_Array;
end org.allbinary.game.terrain.TerrainEventCircularStaticPool_Package_References;

with org.allbinary.game.terrain.TerrainEventCircularStaticPool_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package;
with org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package_References;
limited with org.allbinary.game.terrain.TerrainEvent_Package;
with org.allbinary.game.terrain.TerrainEvent_Package_References;
limited with org.allbinary.game.terrain.BasicTerrainInfo_Package;
with org.allbinary.game.terrain.BasicTerrainInfo_Package_References;

package org.allbinary.game.terrain.TerrainEventCircularStaticPool_Package is

   package AllBinaryEventCircularPool_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package;
   package Reference_Types is
   subtype AllBinaryEventCircularPool_Access is org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package_References.AllBinaryEventCircularPool_Access;
   use type AllBinaryEventCircularPool_Access;
   subtype AllBinaryEventCircularPool_Access_Array is org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package_References.AllBinaryEventCircularPool_Access_Array;
   use type AllBinaryEventCircularPool_Access_Array;
   subtype AllBinaryEventCircularPool_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package_References.AllBinaryEventCircularPool_Access_Array_Access;
   use type AllBinaryEventCircularPool_Access_Array_Access;
   subtype AllBinaryEventCircularPool_Access_Array_Access_Array is org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package_References.AllBinaryEventCircularPool_Access_Array_Access_Array;
   use type AllBinaryEventCircularPool_Access_Array_Access_Array;
   subtype AllBinaryEventCircularPool_Access_Array_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package_References.AllBinaryEventCircularPool_Access_Array_Access_Array_Access;
   use type AllBinaryEventCircularPool_Access_Array_Access_Array_Access;
   subtype TerrainEvent_Access is org.allbinary.game.terrain.TerrainEvent_Package_References.TerrainEvent_Access;
   use type TerrainEvent_Access;
   subtype TerrainEvent_Access_Array is org.allbinary.game.terrain.TerrainEvent_Package_References.TerrainEvent_Access_Array;
   use type TerrainEvent_Access_Array;
   subtype TerrainEvent_Access_Array_Access is org.allbinary.game.terrain.TerrainEvent_Package_References.TerrainEvent_Access_Array_Access;
   use type TerrainEvent_Access_Array_Access;
   subtype TerrainEvent_Access_Array_Access_Array is org.allbinary.game.terrain.TerrainEvent_Package_References.TerrainEvent_Access_Array_Access_Array;
   use type TerrainEvent_Access_Array_Access_Array;
   subtype TerrainEvent_Access_Array_Access_Array_Access is org.allbinary.game.terrain.TerrainEvent_Package_References.TerrainEvent_Access_Array_Access_Array_Access;
   use type TerrainEvent_Access_Array_Access_Array_Access;
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


   subtype TerrainEventCircularStaticPool_Access is org.allbinary.game.terrain.TerrainEventCircularStaticPool_Package_References.TerrainEventCircularStaticPool_Access;
   function "=" (Left, Right : TerrainEventCircularStaticPool_Access) return Boolean renames org.allbinary.game.terrain.TerrainEventCircularStaticPool_Package_References."=";
   subtype TerrainEventCircularStaticPool_Access_Array is org.allbinary.game.terrain.TerrainEventCircularStaticPool_Package_References.TerrainEventCircularStaticPool_Access_Array;
   function "=" (Left, Right : TerrainEventCircularStaticPool_Access_Array) return Boolean renames org.allbinary.game.terrain.TerrainEventCircularStaticPool_Package_References."=";
   subtype TerrainEventCircularStaticPool_Access_Array_Access is org.allbinary.game.terrain.TerrainEventCircularStaticPool_Package_References.TerrainEventCircularStaticPool_Access_Array_Access;
   function "=" (Left, Right : TerrainEventCircularStaticPool_Access_Array_Access) return Boolean renames org.allbinary.game.terrain.TerrainEventCircularStaticPool_Package_References."=";
   subtype TerrainEventCircularStaticPool_Access_Array_Access_Array is org.allbinary.game.terrain.TerrainEventCircularStaticPool_Package_References.TerrainEventCircularStaticPool_Access_Array_Access_Array;
   function "=" (Left, Right : TerrainEventCircularStaticPool_Access_Array_Access_Array) return Boolean renames org.allbinary.game.terrain.TerrainEventCircularStaticPool_Package_References."=";
   subtype TerrainEventCircularStaticPool_Access_Array_Access_Array_Access is org.allbinary.game.terrain.TerrainEventCircularStaticPool_Package_References.TerrainEventCircularStaticPool_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TerrainEventCircularStaticPool_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.terrain.TerrainEventCircularStaticPool_Package_References."=";

   type TerrainEventCircularStaticPool is new Java_Object with record
      EVENT_POOL : AllBinaryEventCircularPool_Access;
   end record;
   instance : TerrainEventCircularStaticPool_Access;

   procedure Initialize (This : in out TerrainEventCircularStaticPool'Class);
   function Create return TerrainEventCircularStaticPool_Access;
   function getInstance return TerrainEventCircularStaticPool_Access;
   procedure init (This : in out TerrainEventCircularStaticPool);
   function getNext (This : in out TerrainEventCircularStaticPool; basicTerrainInfo_Param : access BasicTerrainInfo_Package.BasicTerrainInfo'Class) return TerrainEvent_Access;
   procedure getNext (This : in out TerrainEventCircularStaticPool; basicTerrainInfo_Param : access BasicTerrainInfo_Package.BasicTerrainInfo'Class);

end org.allbinary.game.terrain.TerrainEventCircularStaticPool_Package;


