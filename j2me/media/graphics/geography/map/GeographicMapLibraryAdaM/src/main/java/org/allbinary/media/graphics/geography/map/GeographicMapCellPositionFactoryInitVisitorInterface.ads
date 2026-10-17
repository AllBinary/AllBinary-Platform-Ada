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
with org.allbinary.game.layer.AllBinaryTiledLayer_Package; use org.allbinary.game.layer.AllBinaryTiledLayer_Package;

package org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInitVisitorInterface_Package is

   package AllBinaryTiledLayer_Package renames Standard.org.allbinary.game.layer.AllBinaryTiledLayer_Package;

   type GeographicMapCellPositionFactoryInitVisitorInterface is interface;
   type GeographicMapCellPositionFactoryInitVisitorInterface_Access is access all GeographicMapCellPositionFactoryInitVisitorInterface'Class;
   type GeographicMapCellPositionFactoryInitVisitorInterface_Access_Array is array (Natural range <>) of GeographicMapCellPositionFactoryInitVisitorInterface_Access;
   type GeographicMapCellPositionFactoryInitVisitorInterface_Access_Array_Access is access all GeographicMapCellPositionFactoryInitVisitorInterface_Access_Array;
   procedure visit (This : in out GeographicMapCellPositionFactoryInitVisitorInterface; tiledLayer : AllBinaryTiledLayer_Access; cellPosition : GeographicMapCellPosition_Access) is abstract;

end org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInitVisitorInterface_Package;


