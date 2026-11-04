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

limited with org.allbinary.game.input.form.NullRTSGameLayerPositionFinder_Package;
package org.allbinary.game.input.form.NullRTSGameLayerPositionFinder_Package_References is
   type NullRTSGameLayerPositionFinder_Access is access all org.allbinary.game.input.form.NullRTSGameLayerPositionFinder_Package.NullRTSGameLayerPositionFinder'Class;
   type NullRTSGameLayerPositionFinder_Access_Array is array (Natural range <>) of NullRTSGameLayerPositionFinder_Access;
   type NullRTSGameLayerPositionFinder_Access_Array_Access is access all NullRTSGameLayerPositionFinder_Access_Array;
   type NullRTSGameLayerPositionFinder_Access_Array_Access_Array is array (Natural range <>) of NullRTSGameLayerPositionFinder_Access_Array_Access;
   type NullRTSGameLayerPositionFinder_Access_Array_Access_Array_Access is access all NullRTSGameLayerPositionFinder_Access_Array_Access_Array;
end org.allbinary.game.input.form.NullRTSGameLayerPositionFinder_Package_References;

with org.allbinary.game.input.form.NullRTSGameLayerPositionFinder_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.input.LayerPositionFinderInterface_Package; use org.allbinary.game.input.LayerPositionFinderInterface_Package;
limited with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References;

package org.allbinary.game.input.form.NullRTSGameLayerPositionFinder_Package is

   package LayerPositionFinderInterface_Package renames Standard.org.allbinary.game.input.LayerPositionFinderInterface_Package;
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


   subtype NullRTSGameLayerPositionFinder_Access is org.allbinary.game.input.form.NullRTSGameLayerPositionFinder_Package_References.NullRTSGameLayerPositionFinder_Access;
   function "=" (Left, Right : NullRTSGameLayerPositionFinder_Access) return Boolean renames org.allbinary.game.input.form.NullRTSGameLayerPositionFinder_Package_References."=";
   subtype NullRTSGameLayerPositionFinder_Access_Array is org.allbinary.game.input.form.NullRTSGameLayerPositionFinder_Package_References.NullRTSGameLayerPositionFinder_Access_Array;
   function "=" (Left, Right : NullRTSGameLayerPositionFinder_Access_Array) return Boolean renames org.allbinary.game.input.form.NullRTSGameLayerPositionFinder_Package_References."=";
   subtype NullRTSGameLayerPositionFinder_Access_Array_Access is org.allbinary.game.input.form.NullRTSGameLayerPositionFinder_Package_References.NullRTSGameLayerPositionFinder_Access_Array_Access;
   function "=" (Left, Right : NullRTSGameLayerPositionFinder_Access_Array_Access) return Boolean renames org.allbinary.game.input.form.NullRTSGameLayerPositionFinder_Package_References."=";
   subtype NullRTSGameLayerPositionFinder_Access_Array_Access_Array is org.allbinary.game.input.form.NullRTSGameLayerPositionFinder_Package_References.NullRTSGameLayerPositionFinder_Access_Array_Access_Array;
   function "=" (Left, Right : NullRTSGameLayerPositionFinder_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.form.NullRTSGameLayerPositionFinder_Package_References."=";
   subtype NullRTSGameLayerPositionFinder_Access_Array_Access_Array_Access is org.allbinary.game.input.form.NullRTSGameLayerPositionFinder_Package_References.NullRTSGameLayerPositionFinder_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NullRTSGameLayerPositionFinder_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.form.NullRTSGameLayerPositionFinder_Package_References."=";

   type NullRTSGameLayerPositionFinder is new Java_Object and LayerPositionFinderInterface with null record;
   instance : NullRTSGameLayerPositionFinder_Access;

   procedure Initialize (This : in out NullRTSGameLayerPositionFinder'Class);
   function Create return NullRTSGameLayerPositionFinder_Access;
   function getInstance return NullRTSGameLayerPositionFinder_Access;
   function getLayerInterface (This : in out NullRTSGameLayerPositionFinder; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return AllBinaryLayer_Access;
   procedure getLayerInterface (This : in out NullRTSGameLayerPositionFinder; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class);

end org.allbinary.game.input.form.NullRTSGameLayerPositionFinder_Package;


