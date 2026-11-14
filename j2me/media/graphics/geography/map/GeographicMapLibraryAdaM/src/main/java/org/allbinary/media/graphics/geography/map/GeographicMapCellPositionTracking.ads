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

with AllBinary_Java;
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package;
package org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package_References is
   type GeographicMapCellPositionTracking_Access is access all org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package.GeographicMapCellPositionTracking'Class;
   type GeographicMapCellPositionTracking_Access_Array is array (Natural range <>) of GeographicMapCellPositionTracking_Access;
   type GeographicMapCellPositionTracking_Access_Array_Access is access all GeographicMapCellPositionTracking_Access_Array;
   type GeographicMapCellPositionTracking_Access_Array_Access_Array is array (Natural range <>) of GeographicMapCellPositionTracking_Access_Array_Access;
   type GeographicMapCellPositionTracking_Access_Array_Access_Array_Access is access all GeographicMapCellPositionTracking_Access_Array_Access_Array;
   type GeographicMapCellPositionTracking_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GeographicMapCellPositionTracking_Access_Array_Access;
   end record;
   function Java_Box (Value : GeographicMapCellPositionTracking_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GeographicMapCellPositionTracking_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GeographicMapCellPositionTracking_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GeographicMapCellPositionTracking_Access_Array_Access is (if Value /= null and then Value.all in GeographicMapCellPositionTracking_Access_Array_Object'Class then GeographicMapCellPositionTracking_Access_Array_Object'Class (Value.all).Value else null);
   type GeographicMapCellPositionTracking_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GeographicMapCellPositionTracking_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GeographicMapCellPositionTracking_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GeographicMapCellPositionTracking_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GeographicMapCellPositionTracking_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GeographicMapCellPositionTracking_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GeographicMapCellPositionTracking_Access_Array_Access_Array_Object'Class then GeographicMapCellPositionTracking_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package_References;

with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.displayable.canvas.AllBinaryGameCanvasInterface_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvasInterface_Package_References;
limited with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References;
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References;
limited with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References;

package org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package is

   package AllBinaryGameCanvasInterface_Package renames Standard.org.allbinary.game.displayable.canvas.AllBinaryGameCanvasInterface_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package Reference_Types is
   subtype AllBinaryGameCanvasInterface_Access is org.allbinary.game.displayable.canvas.AllBinaryGameCanvasInterface_Package_References.AllBinaryGameCanvasInterface_Access;
   use type AllBinaryGameCanvasInterface_Access;
   subtype AllBinaryGameCanvasInterface_Access_Array is org.allbinary.game.displayable.canvas.AllBinaryGameCanvasInterface_Package_References.AllBinaryGameCanvasInterface_Access_Array;
   use type AllBinaryGameCanvasInterface_Access_Array;
   subtype AllBinaryGameCanvasInterface_Access_Array_Access is org.allbinary.game.displayable.canvas.AllBinaryGameCanvasInterface_Package_References.AllBinaryGameCanvasInterface_Access_Array_Access;
   use type AllBinaryGameCanvasInterface_Access_Array_Access;
   subtype AllBinaryGameCanvasInterface_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.AllBinaryGameCanvasInterface_Package_References.AllBinaryGameCanvasInterface_Access_Array_Access_Array;
   use type AllBinaryGameCanvasInterface_Access_Array_Access_Array;
   subtype AllBinaryGameCanvasInterface_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.AllBinaryGameCanvasInterface_Package_References.AllBinaryGameCanvasInterface_Access_Array_Access_Array_Access;
   use type AllBinaryGameCanvasInterface_Access_Array_Access_Array_Access;
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
   subtype GeographicMapCellType_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References.GeographicMapCellType_Access;
   use type GeographicMapCellType_Access;
   subtype GeographicMapCellType_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References.GeographicMapCellType_Access_Array;
   use type GeographicMapCellType_Access_Array;
   subtype GeographicMapCellType_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References.GeographicMapCellType_Access_Array_Access;
   use type GeographicMapCellType_Access_Array_Access;
   subtype GeographicMapCellType_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References.GeographicMapCellType_Access_Array_Access_Array;
   use type GeographicMapCellType_Access_Array_Access_Array;
   subtype GeographicMapCellType_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References.GeographicMapCellType_Access_Array_Access_Array_Access;
   use type GeographicMapCellType_Access_Array_Access_Array_Access;
   subtype BasicGeographicMap_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access;
   use type BasicGeographicMap_Access;
   subtype BasicGeographicMap_Access_Array is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array;
   use type BasicGeographicMap_Access_Array;
   subtype BasicGeographicMap_Access_Array_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access;
   use type BasicGeographicMap_Access_Array_Access;
   subtype BasicGeographicMap_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access_Array;
   use type BasicGeographicMap_Access_Array_Access_Array;
   subtype BasicGeographicMap_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access_Array_Access;
   use type BasicGeographicMap_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype GeographicMapCellPositionTracking_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package_References.GeographicMapCellPositionTracking_Access;
   function "=" (Left, Right : GeographicMapCellPositionTracking_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package_References."=";
   subtype GeographicMapCellPositionTracking_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package_References.GeographicMapCellPositionTracking_Access_Array;
   function "=" (Left, Right : GeographicMapCellPositionTracking_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package_References."=";
   subtype GeographicMapCellPositionTracking_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package_References.GeographicMapCellPositionTracking_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellPositionTracking_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package_References."=";
   function Java_Box (Value : GeographicMapCellPositionTracking_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package_References.Java_Box;
   function Java_Unbox_GeographicMapCellPositionTracking_Access_Array (Value : access Java_Object'Class) return GeographicMapCellPositionTracking_Access_Array_Access renames org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package_References.Java_Unbox_GeographicMapCellPositionTracking_Access_Array;
   subtype GeographicMapCellPositionTracking_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package_References.GeographicMapCellPositionTracking_Access_Array_Access_Array;
   function "=" (Left, Right : GeographicMapCellPositionTracking_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package_References."=";
   subtype GeographicMapCellPositionTracking_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package_References.GeographicMapCellPositionTracking_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellPositionTracking_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package_References."=";
   function Java_Box (Value : GeographicMapCellPositionTracking_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package_References.Java_Box;
   function Java_Unbox_GeographicMapCellPositionTracking_Access_Array_Access_Array (Value : access Java_Object'Class) return GeographicMapCellPositionTracking_Access_Array_Access_Array_Access renames org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package_References.Java_Unbox_GeographicMapCellPositionTracking_Access_Array_Access_Array;

   type GeographicMapCellPositionTracking is new Java_Object with record
      currentGeographicMapCellPosition : GeographicMapCellPosition_Access;
      previousGeographicMapCellPosition : GeographicMapCellPosition_Access;
      newGeographicMapCellPosition : GeographicMapCellPosition_Access;
      currentCellType : GeographicMapCellType_Access;
   end record;

   procedure Initialize (This : in out GeographicMapCellPositionTracking'Class);
   function Create return GeographicMapCellPositionTracking_Access;
   function getCurrentOverCellType (This : in out GeographicMapCellPositionTracking; geographicMap_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class) return GeographicMapCellType_Access;
   procedure getCurrentOverCellType (This : in out GeographicMapCellPositionTracking; geographicMap_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class);
   function updateStart (This : in out GeographicMapCellPositionTracking; gameCanvasInterface_Param : access AllBinaryGameCanvasInterface_Package.AllBinaryGameCanvasInterface'Class; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) return Boolean;
   procedure updateStart (This : in out GeographicMapCellPositionTracking; gameCanvasInterface_Param : access AllBinaryGameCanvasInterface_Package.AllBinaryGameCanvasInterface'Class; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class);
   function updateEnd (This : in out GeographicMapCellPositionTracking) return Boolean;
   function getPreviousGeographicMapCellPosition (This : in out GeographicMapCellPositionTracking) return GeographicMapCellPosition_Access;
   function getCurrentGeographicMapCellPosition (This : in out GeographicMapCellPositionTracking) return GeographicMapCellPosition_Access;

end org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package;


