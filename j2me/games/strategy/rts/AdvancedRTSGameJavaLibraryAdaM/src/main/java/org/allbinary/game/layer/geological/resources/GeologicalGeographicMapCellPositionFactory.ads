-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2002 AllBinary 
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
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package;

package org.allbinary.game.layer.geological.resources.GeologicalGeographicMapCellPositionFactory_Package is

   package BasicGeographicMap_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   package GeographicMapCellPositionFactoryInterface_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package;

   type GeologicalGeographicMapCellPositionFactory is tagged;
   type GeologicalGeographicMapCellPositionFactory_Access is access all GeologicalGeographicMapCellPositionFactory'Class;
   type GeologicalGeographicMapCellPositionFactory_Access_Array is array (Natural range <>) of GeologicalGeographicMapCellPositionFactory_Access;
   type GeologicalGeographicMapCellPositionFactory_Access_Array_Access is access all GeologicalGeographicMapCellPositionFactory_Access_Array;
   type GeologicalGeographicMapCellPositionFactory_Access_Array_Access_Array is array (Natural range <>) of GeologicalGeographicMapCellPositionFactory_Access_Array_Access;
   type GeologicalGeographicMapCellPositionFactory_Access_Array_Access_Array_Access is access all GeologicalGeographicMapCellPositionFactory_Access_Array_Access_Array;

   type GeologicalGeographicMapCellPositionFactory is new Java_Object and GeographicMapCellPositionFactoryInterface with record
      resourcePerMapCellType : Integer_Array_Access;
   end record;

   procedure Initialize (This : in out GeologicalGeographicMapCellPositionFactory'Class; resourcePerMapCellType : Integer_Array_Access);
   function Create (resourcePerMapCellType : Integer_Array_Access) return GeologicalGeographicMapCellPositionFactory_Access;
   function getInstance (This : in out GeologicalGeographicMapCellPositionFactory; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; i_column : Integer; i_row : Integer; columns : Integer; rows : Integer; width : Integer; height : Integer) return GeographicMapCellPosition_Access;
   procedure getInstance (This : in out GeologicalGeographicMapCellPositionFactory; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; i_column : Integer; i_row : Integer; columns : Integer; rows : Integer; width : Integer; height : Integer);

end org.allbinary.game.layer.geological.resources.GeologicalGeographicMapCellPositionFactory_Package;


