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

with AllBinary_Java;
limited with org.allbinary.game.behavior.topview.NonPlayerTopViewCharacterBehavior_Package;
package org.allbinary.game.behavior.topview.NonPlayerTopViewCharacterBehavior_Package_References is
   type NonPlayerTopViewCharacterBehavior_Access is access all org.allbinary.game.behavior.topview.NonPlayerTopViewCharacterBehavior_Package.NonPlayerTopViewCharacterBehavior'Class;
   type NonPlayerTopViewCharacterBehavior_Access_Array is array (Natural range <>) of NonPlayerTopViewCharacterBehavior_Access;
   type NonPlayerTopViewCharacterBehavior_Access_Array_Access is access all NonPlayerTopViewCharacterBehavior_Access_Array;
   type NonPlayerTopViewCharacterBehavior_Access_Array_Access_Array is array (Natural range <>) of NonPlayerTopViewCharacterBehavior_Access_Array_Access;
   type NonPlayerTopViewCharacterBehavior_Access_Array_Access_Array_Access is access all NonPlayerTopViewCharacterBehavior_Access_Array_Access_Array;
   type NonPlayerTopViewCharacterBehavior_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NonPlayerTopViewCharacterBehavior_Access_Array_Access;
   end record;
   function Java_Box (Value : NonPlayerTopViewCharacterBehavior_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NonPlayerTopViewCharacterBehavior_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NonPlayerTopViewCharacterBehavior_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NonPlayerTopViewCharacterBehavior_Access_Array_Access is (if Value /= null and then Value.all in NonPlayerTopViewCharacterBehavior_Access_Array_Object'Class then NonPlayerTopViewCharacterBehavior_Access_Array_Object'Class (Value.all).Value else null);
   type NonPlayerTopViewCharacterBehavior_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NonPlayerTopViewCharacterBehavior_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : NonPlayerTopViewCharacterBehavior_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NonPlayerTopViewCharacterBehavior_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NonPlayerTopViewCharacterBehavior_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NonPlayerTopViewCharacterBehavior_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in NonPlayerTopViewCharacterBehavior_Access_Array_Access_Array_Object'Class then NonPlayerTopViewCharacterBehavior_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.behavior.topview.NonPlayerTopViewCharacterBehavior_Package_References;

with org.allbinary.game.behavior.topview.NonPlayerTopViewCharacterBehavior_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.media.graphics.geography.map.MultiGeographicMapBehavior_Package;
with org.allbinary.media.graphics.geography.map.MultiGeographicMapBehavior_Package_References;
limited with org.allbinary.direction.Direction_Package;
with org.allbinary.direction.Direction_Package_References;
limited with org.allbinary.game.terrain.BasicTerrainInfo_Package;
with org.allbinary.game.terrain.BasicTerrainInfo_Package_References;
limited with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
limited with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References;
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References;
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References;
with org.allbinary.game.behavior.topview.TopViewCharacterBehavior_Package; use org.allbinary.game.behavior.topview.TopViewCharacterBehavior_Package;

package org.allbinary.game.behavior.topview.NonPlayerTopViewCharacterBehavior_Package is

   package MultiGeographicMapBehavior_Package renames Standard.org.allbinary.media.graphics.geography.map.MultiGeographicMapBehavior_Package;
   package Direction_Package renames Standard.org.allbinary.direction.Direction_Package;
   package BasicTerrainInfo_Package renames Standard.org.allbinary.game.terrain.BasicTerrainInfo_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package BasicGeographicMap_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   package GeographicMapCellType_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;
   package Reference_Types is
   subtype MultiGeographicMapBehavior_Access is org.allbinary.media.graphics.geography.map.MultiGeographicMapBehavior_Package_References.MultiGeographicMapBehavior_Access;
   use type MultiGeographicMapBehavior_Access;
   subtype MultiGeographicMapBehavior_Access_Array is org.allbinary.media.graphics.geography.map.MultiGeographicMapBehavior_Package_References.MultiGeographicMapBehavior_Access_Array;
   use type MultiGeographicMapBehavior_Access_Array;
   subtype MultiGeographicMapBehavior_Access_Array_Access is org.allbinary.media.graphics.geography.map.MultiGeographicMapBehavior_Package_References.MultiGeographicMapBehavior_Access_Array_Access;
   use type MultiGeographicMapBehavior_Access_Array_Access;
   subtype MultiGeographicMapBehavior_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.MultiGeographicMapBehavior_Package_References.MultiGeographicMapBehavior_Access_Array_Access_Array;
   use type MultiGeographicMapBehavior_Access_Array_Access_Array;
   subtype MultiGeographicMapBehavior_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.MultiGeographicMapBehavior_Package_References.MultiGeographicMapBehavior_Access_Array_Access_Array_Access;
   use type MultiGeographicMapBehavior_Access_Array_Access_Array_Access;
   subtype Direction_Access is org.allbinary.direction.Direction_Package_References.Direction_Access;
   use type Direction_Access;
   subtype Direction_Access_Array is org.allbinary.direction.Direction_Package_References.Direction_Access_Array;
   use type Direction_Access_Array;
   subtype Direction_Access_Array_Access is org.allbinary.direction.Direction_Package_References.Direction_Access_Array_Access;
   use type Direction_Access_Array_Access;
   subtype Direction_Access_Array_Access_Array is org.allbinary.direction.Direction_Package_References.Direction_Access_Array_Access_Array;
   use type Direction_Access_Array_Access_Array;
   subtype Direction_Access_Array_Access_Array_Access is org.allbinary.direction.Direction_Package_References.Direction_Access_Array_Access_Array_Access;
   use type Direction_Access_Array_Access_Array_Access;
   subtype BasicTerrainInfo_Access is org.allbinary.game.terrain.BasicTerrainInfo_Package_References.BasicTerrainInfo_Access;
   use type BasicTerrainInfo_Access;
   subtype BasicTerrainInfo_Access_Array is org.allbinary.game.terrain.BasicTerrainInfo_Package_References.BasicTerrainInfo_Access_Array;
   use type BasicTerrainInfo_Access_Array;
   subtype BasicTerrainInfo_Access_Array_Access is org.allbinary.game.terrain.BasicTerrainInfo_Package_References.BasicTerrainInfo_Access_Array_Access;
   use type BasicTerrainInfo_Access_Array_Access;
   subtype BasicTerrainInfo_Access_Array_Access_Array is org.allbinary.game.terrain.BasicTerrainInfo_Package_References.BasicTerrainInfo_Access_Array_Access_Array;
   use type BasicTerrainInfo_Access_Array_Access_Array;
   subtype BasicTerrainInfo_Access_Array_Access_Array_Access is org.allbinary.game.terrain.BasicTerrainInfo_Package_References.BasicTerrainInfo_Access_Array_Access_Array_Access;
   use type BasicTerrainInfo_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype NonPlayerTopViewCharacterBehavior_Access is org.allbinary.game.behavior.topview.NonPlayerTopViewCharacterBehavior_Package_References.NonPlayerTopViewCharacterBehavior_Access;
   function "=" (Left, Right : NonPlayerTopViewCharacterBehavior_Access) return Boolean renames org.allbinary.game.behavior.topview.NonPlayerTopViewCharacterBehavior_Package_References."=";
   subtype NonPlayerTopViewCharacterBehavior_Access_Array is org.allbinary.game.behavior.topview.NonPlayerTopViewCharacterBehavior_Package_References.NonPlayerTopViewCharacterBehavior_Access_Array;
   function "=" (Left, Right : NonPlayerTopViewCharacterBehavior_Access_Array) return Boolean renames org.allbinary.game.behavior.topview.NonPlayerTopViewCharacterBehavior_Package_References."=";
   subtype NonPlayerTopViewCharacterBehavior_Access_Array_Access is org.allbinary.game.behavior.topview.NonPlayerTopViewCharacterBehavior_Package_References.NonPlayerTopViewCharacterBehavior_Access_Array_Access;
   function "=" (Left, Right : NonPlayerTopViewCharacterBehavior_Access_Array_Access) return Boolean renames org.allbinary.game.behavior.topview.NonPlayerTopViewCharacterBehavior_Package_References."=";
   function Java_Box (Value : NonPlayerTopViewCharacterBehavior_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.behavior.topview.NonPlayerTopViewCharacterBehavior_Package_References.Java_Box;
   function Java_Unbox_NonPlayerTopViewCharacterBehavior_Access_Array (Value : access Java_Object'Class) return NonPlayerTopViewCharacterBehavior_Access_Array_Access renames org.allbinary.game.behavior.topview.NonPlayerTopViewCharacterBehavior_Package_References.Java_Unbox_NonPlayerTopViewCharacterBehavior_Access_Array;
   subtype NonPlayerTopViewCharacterBehavior_Access_Array_Access_Array is org.allbinary.game.behavior.topview.NonPlayerTopViewCharacterBehavior_Package_References.NonPlayerTopViewCharacterBehavior_Access_Array_Access_Array;
   function "=" (Left, Right : NonPlayerTopViewCharacterBehavior_Access_Array_Access_Array) return Boolean renames org.allbinary.game.behavior.topview.NonPlayerTopViewCharacterBehavior_Package_References."=";
   subtype NonPlayerTopViewCharacterBehavior_Access_Array_Access_Array_Access is org.allbinary.game.behavior.topview.NonPlayerTopViewCharacterBehavior_Package_References.NonPlayerTopViewCharacterBehavior_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NonPlayerTopViewCharacterBehavior_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.behavior.topview.NonPlayerTopViewCharacterBehavior_Package_References."=";
   function Java_Box (Value : NonPlayerTopViewCharacterBehavior_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.behavior.topview.NonPlayerTopViewCharacterBehavior_Package_References.Java_Box;
   function Java_Unbox_NonPlayerTopViewCharacterBehavior_Access_Array_Access_Array (Value : access Java_Object'Class) return NonPlayerTopViewCharacterBehavior_Access_Array_Access_Array_Access renames org.allbinary.game.behavior.topview.NonPlayerTopViewCharacterBehavior_Package_References.Java_Unbox_NonPlayerTopViewCharacterBehavior_Access_Array_Access_Array;

   type NonPlayerTopViewCharacterBehavior is new TopViewCharacterBehavior with record
      geographicMapBehavior : MultiGeographicMapBehavior_Access;
      CLIFF : BasicTerrainInfo_Access;
   end record;

   procedure Initialize (This : in out NonPlayerTopViewCharacterBehavior'Class);
   function Create return NonPlayerTopViewCharacterBehavior_Access;
   procedure terrainEvent (This : in out NonPlayerTopViewCharacterBehavior; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; direction_Param : access Direction_Package.Direction'Class; x : Integer; y : Integer; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class);
   procedure terrainMove (This : in out NonPlayerTopViewCharacterBehavior; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; x : Integer; y : Integer);

end org.allbinary.game.behavior.topview.NonPlayerTopViewCharacterBehavior_Package;


