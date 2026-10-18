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
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.AllBinaryEventObjectFactoryInterface_Package; use org.allbinary.logic.util.event.AllBinaryEventObjectFactoryInterface_Package;

package org.allbinary.game.terrain.TerrainEventFactory_Package is

   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package AllBinaryEventObjectFactoryInterface_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObjectFactoryInterface_Package;

   type TerrainEventFactory is tagged;
   type TerrainEventFactory_Access is access all TerrainEventFactory'Class;
   type TerrainEventFactory_Access_Array is array (Natural range <>) of TerrainEventFactory_Access;
   type TerrainEventFactory_Access_Array_Access is access all TerrainEventFactory_Access_Array;
   type TerrainEventFactory_Access_Array_Access_Array is array (Natural range <>) of TerrainEventFactory_Access_Array_Access;
   type TerrainEventFactory_Access_Array_Access_Array_Access is access all TerrainEventFactory_Access_Array_Access_Array;

   type TerrainEventFactory is new Java_Object and AllBinaryEventObjectFactoryInterface with null record;

   procedure Initialize (This : in out TerrainEventFactory'Class);
   function Create return TerrainEventFactory_Access;
   function getInstance (This : in out TerrainEventFactory) return AllBinaryEventObject_Access;

end org.allbinary.game.terrain.TerrainEventFactory_Package;


