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
with org.allbinary.game.layer.AllBinaryTiledLayer_Package; use org.allbinary.game.layer.AllBinaryTiledLayer_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInitVisitorInterface_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInitVisitorInterface_Package;

package org.allbinary.media.graphics.geography.map.NoGeographicMapCellPositionFactoryInitVisitor_Package is

   package AllBinaryTiledLayer_Package renames Standard.org.allbinary.game.layer.AllBinaryTiledLayer_Package;

   type NoGeographicMapCellPositionFactoryInitVisitor is tagged;
   type NoGeographicMapCellPositionFactoryInitVisitor_Access is access all NoGeographicMapCellPositionFactoryInitVisitor'Class;
   type NoGeographicMapCellPositionFactoryInitVisitor_Access_Array is array (Natural range <>) of NoGeographicMapCellPositionFactoryInitVisitor_Access;
   type NoGeographicMapCellPositionFactoryInitVisitor_Access_Array_Access is access all NoGeographicMapCellPositionFactoryInitVisitor_Access_Array;

   type NoGeographicMapCellPositionFactoryInitVisitor is new GeographicMapCellPositionFactoryInitVisitorInterface with null record;

   procedure Initialize (This : in out NoGeographicMapCellPositionFactoryInitVisitor'Class);
   function Create return NoGeographicMapCellPositionFactoryInitVisitor_Access;
   procedure visit (This : in out NoGeographicMapCellPositionFactoryInitVisitor; tiledLayer : AllBinaryTiledLayer_Access; cellPosition : GeographicMapCellPosition_Access);

end org.allbinary.media.graphics.geography.map.NoGeographicMapCellPositionFactoryInitVisitor_Package;


