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
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.game.terrain.BasicTerrainInfo_Package; use org.allbinary.game.terrain.BasicTerrainInfo_Package;

package org.allbinary.game.terrain.TerrainEvent_Package is

   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;

   type TerrainEvent is tagged;
   type TerrainEvent_Access is access all TerrainEvent'Class;
   type TerrainEvent_Access_Array is array (Natural range <>) of TerrainEvent_Access;
   type TerrainEvent_Access_Array_Access is access all TerrainEvent_Access_Array;

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


