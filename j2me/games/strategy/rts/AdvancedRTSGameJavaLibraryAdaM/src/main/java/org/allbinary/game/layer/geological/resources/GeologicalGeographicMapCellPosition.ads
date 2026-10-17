-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2006 AllBinary 
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
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;

package org.allbinary.game.layer.geological.resources.GeologicalGeographicMapCellPosition_Package is

   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;

   type GeologicalGeographicMapCellPosition is tagged;
   type GeologicalGeographicMapCellPosition_Access is access all GeologicalGeographicMapCellPosition'Class;
   type GeologicalGeographicMapCellPosition_Access_Array is array (Natural range <>) of GeologicalGeographicMapCellPosition_Access;
   type GeologicalGeographicMapCellPosition_Access_Array_Access is access all GeologicalGeographicMapCellPosition_Access_Array;

   type GeologicalGeographicMapCellPosition is new GeographicMapCellPosition with record
      geologicalResource : GeologicalResource_Access;
   end record;

   procedure Initialize (This : in out GeologicalGeographicMapCellPosition'Class; column : Integer; row : Integer; columns : Integer; rows : Integer; width : Integer; height : Integer; geologicalResource : GeologicalResource_Access);
   function Create (column : Integer; row : Integer; columns : Integer; rows : Integer; width : Integer; height : Integer; geologicalResource : GeologicalResource_Access) return GeologicalGeographicMapCellPosition_Access;
   function getGeologicalResource (This : in out GeologicalGeographicMapCellPosition) return GeologicalResource_Access;
   procedure getGeologicalResource (This : in out GeologicalGeographicMapCellPosition);

end org.allbinary.game.layer.geological.resources.GeologicalGeographicMapCellPosition_Package;


