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
with org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package; use org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package;
with org.allbinary.game.terrain.TerrainEventFactory_Package; use org.allbinary.game.terrain.TerrainEventFactory_Package;
with org.allbinary.game.terrain.TerrainEvent_Package; use org.allbinary.game.terrain.TerrainEvent_Package;
with org.allbinary.game.terrain.BasicTerrainInfo_Package; use org.allbinary.game.terrain.BasicTerrainInfo_Package;

package org.allbinary.game.terrain.TerrainEventCircularStaticPool_Package is

   package AllBinaryEventCircularPool_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package;

   type TerrainEventCircularStaticPool is tagged;
   type TerrainEventCircularStaticPool_Access is access all TerrainEventCircularStaticPool'Class;
   type TerrainEventCircularStaticPool_Access_Array is array (Natural range <>) of TerrainEventCircularStaticPool_Access;
   type TerrainEventCircularStaticPool_Access_Array_Access is access all TerrainEventCircularStaticPool_Access_Array;

   type TerrainEventCircularStaticPool is new Java_Object with record
      EVENT_POOL : AllBinaryEventCircularPool_Access;
   end record;
   instance : TerrainEventCircularStaticPool_Access;

   procedure Initialize (This : in out TerrainEventCircularStaticPool'Class);
   function Create return TerrainEventCircularStaticPool_Access;
   function getInstance return TerrainEventCircularStaticPool_Access;
   procedure init (This : in out TerrainEventCircularStaticPool);
   function getNext (This : in out TerrainEventCircularStaticPool; basicTerrainInfo_Param : access BasicTerrainInfo'Class) return TerrainEvent_Access;
   procedure getNext (This : in out TerrainEventCircularStaticPool; basicTerrainInfo_Param : access BasicTerrainInfo'Class);

end org.allbinary.game.terrain.TerrainEventCircularStaticPool_Package;


