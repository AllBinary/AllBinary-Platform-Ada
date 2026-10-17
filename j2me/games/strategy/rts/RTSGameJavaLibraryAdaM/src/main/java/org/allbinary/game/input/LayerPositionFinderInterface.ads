-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2003 AllBinary 
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
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;

package org.allbinary.game.input.LayerPositionFinderInterface_Package is

   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;

   type LayerPositionFinderInterface is interface;
   type LayerPositionFinderInterface_Access is access all LayerPositionFinderInterface'Class;
   type LayerPositionFinderInterface_Access_Array is array (Natural range <>) of LayerPositionFinderInterface_Access;
   type LayerPositionFinderInterface_Access_Array_Access is access all LayerPositionFinderInterface_Access_Array;
   function getLayerInterface (This : in out LayerPositionFinderInterface; geographicMapCellPosition_Param : access GeographicMapCellPosition'Class) return AllBinaryLayer_Access is abstract;

end org.allbinary.game.input.LayerPositionFinderInterface_Package;


