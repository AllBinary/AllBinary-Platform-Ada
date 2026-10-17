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
with org.allbinary.direction.Direction_Package; use org.allbinary.direction.Direction_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;
with org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapCellTypeFactory_Package; use org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapCellTypeFactory_Package;

package org.allbinary.game.behavior.topview.TopViewCharacterBehavior_Package is

   package Direction_Package renames Standard.org.allbinary.direction.Direction_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package BasicGeographicMap_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   package GeographicMapCellType_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;
   package BasicTopViewGeographicMapCellTypeFactory_Package renames Standard.org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapCellTypeFactory_Package;

   type TopViewCharacterBehavior is tagged;
   type TopViewCharacterBehavior_Access is access all TopViewCharacterBehavior'Class;
   type TopViewCharacterBehavior_Access_Array is array (Natural range <>) of TopViewCharacterBehavior_Access;
   type TopViewCharacterBehavior_Access_Array_Access is access all TopViewCharacterBehavior_Access_Array;

   type TopViewCharacterBehavior is new Java_Object with null record;

   procedure Initialize (This : in out TopViewCharacterBehavior'Class);
   function Create return TopViewCharacterBehavior_Access;
   procedure terrainEvent (This : in out TopViewCharacterBehavior; layer : AllBinaryLayer_Access; direction : Direction_Access; x : Integer; y : Integer; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellPosition : GeographicMapCellPosition_Access);
   procedure terrainMove (This : in out TopViewCharacterBehavior; layer : AllBinaryLayer_Access; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; x : Integer; y : Integer);
   function hasSolidBlock (This : in out TopViewCharacterBehavior; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access) return Boolean;
   procedure hasSolidBlock (This : in out TopViewCharacterBehavior; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access);

end org.allbinary.game.behavior.topview.TopViewCharacterBehavior_Package;


