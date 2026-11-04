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

limited with org.allbinary.game.input.RTSGameLayerPositionFinder_Package;
package org.allbinary.game.input.RTSGameLayerPositionFinder_Package_References is
   type RTSGameLayerPositionFinder_Access is access all org.allbinary.game.input.RTSGameLayerPositionFinder_Package.RTSGameLayerPositionFinder'Class;
   type RTSGameLayerPositionFinder_Access_Array is array (Natural range <>) of RTSGameLayerPositionFinder_Access;
   type RTSGameLayerPositionFinder_Access_Array_Access is access all RTSGameLayerPositionFinder_Access_Array;
   type RTSGameLayerPositionFinder_Access_Array_Access_Array is array (Natural range <>) of RTSGameLayerPositionFinder_Access_Array_Access;
   type RTSGameLayerPositionFinder_Access_Array_Access_Array_Access is access all RTSGameLayerPositionFinder_Access_Array_Access_Array;
end org.allbinary.game.input.RTSGameLayerPositionFinder_Package_References;

with org.allbinary.game.input.RTSGameLayerPositionFinder_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References;
with org.allbinary.game.input.LayerPositionFinderInterface_Package; use org.allbinary.game.input.LayerPositionFinderInterface_Package;

package org.allbinary.game.input.RTSGameLayerPositionFinder_Package is

   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   package Reference_Types is
   subtype AllBinaryLayer_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access;
   use type AllBinaryLayer_Access;
   subtype AllBinaryLayer_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array;
   use type AllBinaryLayer_Access_Array;
   subtype AllBinaryLayer_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access;
   use type AllBinaryLayer_Access_Array_Access;
   subtype AllBinaryLayer_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array;
   use type AllBinaryLayer_Access_Array_Access_Array;
   subtype AllBinaryLayer_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array_Access;
   use type AllBinaryLayer_Access_Array_Access_Array_Access;
   subtype GeographicMapCellPosition_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access;
   use type GeographicMapCellPosition_Access;
   subtype GeographicMapCellPosition_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array;
   use type GeographicMapCellPosition_Access_Array;
   subtype GeographicMapCellPosition_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array_Access;
   use type GeographicMapCellPosition_Access_Array_Access;
   subtype GeographicMapCellPosition_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array_Access_Array;
   use type GeographicMapCellPosition_Access_Array_Access_Array;
   subtype GeographicMapCellPosition_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array_Access_Array_Access;
   use type GeographicMapCellPosition_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype RTSGameLayerPositionFinder_Access is org.allbinary.game.input.RTSGameLayerPositionFinder_Package_References.RTSGameLayerPositionFinder_Access;
   function "=" (Left, Right : RTSGameLayerPositionFinder_Access) return Boolean renames org.allbinary.game.input.RTSGameLayerPositionFinder_Package_References."=";
   subtype RTSGameLayerPositionFinder_Access_Array is org.allbinary.game.input.RTSGameLayerPositionFinder_Package_References.RTSGameLayerPositionFinder_Access_Array;
   function "=" (Left, Right : RTSGameLayerPositionFinder_Access_Array) return Boolean renames org.allbinary.game.input.RTSGameLayerPositionFinder_Package_References."=";
   subtype RTSGameLayerPositionFinder_Access_Array_Access is org.allbinary.game.input.RTSGameLayerPositionFinder_Package_References.RTSGameLayerPositionFinder_Access_Array_Access;
   function "=" (Left, Right : RTSGameLayerPositionFinder_Access_Array_Access) return Boolean renames org.allbinary.game.input.RTSGameLayerPositionFinder_Package_References."=";
   subtype RTSGameLayerPositionFinder_Access_Array_Access_Array is org.allbinary.game.input.RTSGameLayerPositionFinder_Package_References.RTSGameLayerPositionFinder_Access_Array_Access_Array;
   function "=" (Left, Right : RTSGameLayerPositionFinder_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.RTSGameLayerPositionFinder_Package_References."=";
   subtype RTSGameLayerPositionFinder_Access_Array_Access_Array_Access is org.allbinary.game.input.RTSGameLayerPositionFinder_Package_References.RTSGameLayerPositionFinder_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RTSGameLayerPositionFinder_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.RTSGameLayerPositionFinder_Package_References."=";

   type RTSGameLayerPositionFinder is new Java_Object and LayerPositionFinderInterface with null record;
   instance : RTSGameLayerPositionFinder_Access;

   procedure Initialize (This : in out RTSGameLayerPositionFinder'Class);
   function Create return RTSGameLayerPositionFinder_Access;
   function getInstance return RTSGameLayerPositionFinder_Access;
   function getLayerInterface (This : in out RTSGameLayerPositionFinder; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return AllBinaryLayer_Access;
   procedure getLayerInterface (This : in out RTSGameLayerPositionFinder; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class);

end org.allbinary.game.input.RTSGameLayerPositionFinder_Package;


