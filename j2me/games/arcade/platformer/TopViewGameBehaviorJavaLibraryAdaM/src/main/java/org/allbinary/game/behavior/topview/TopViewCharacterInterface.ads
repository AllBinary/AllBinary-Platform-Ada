-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;

package org.allbinary.game.behavior.topview.TopViewCharacterInterface_Package is

   package BasicGeographicMap_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   package GeographicMapCellType_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;

   type TopViewCharacterInterface is interface;
   type TopViewCharacterInterface_Access is access all TopViewCharacterInterface'Class;
   type TopViewCharacterInterface_Access_Array is array (Natural range <>) of TopViewCharacterInterface_Access;
   type TopViewCharacterInterface_Access_Array_Access is access all TopViewCharacterInterface_Access_Array;
   type TopViewCharacterInterface_Access_Array_Access_Array is array (Natural range <>) of TopViewCharacterInterface_Access_Array_Access;
   type TopViewCharacterInterface_Access_Array_Access_Array_Access is access all TopViewCharacterInterface_Access_Array_Access_Array;
   procedure terrainMove (This : in out TopViewCharacterInterface; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; x : Integer; y : Integer) is abstract;
   procedure terrainEvent (This : in out TopViewCharacterInterface; x : Integer; y : Integer; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is abstract;
   procedure move (This : in out TopViewCharacterInterface) is abstract;
   procedure upp (This : in out TopViewCharacterInterface) is abstract;
   procedure leftp (This : in out TopViewCharacterInterface) is abstract;
   procedure rightp (This : in out TopViewCharacterInterface) is abstract;
   procedure reset (This : in out TopViewCharacterInterface) is abstract;

end org.allbinary.game.behavior.topview.TopViewCharacterInterface_Package;


