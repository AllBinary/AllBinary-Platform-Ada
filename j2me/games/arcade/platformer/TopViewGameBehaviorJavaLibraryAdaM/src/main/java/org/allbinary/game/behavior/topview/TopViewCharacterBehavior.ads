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
limited with org.allbinary.game.behavior.topview.TopViewCharacterBehavior_Package;
package org.allbinary.game.behavior.topview.TopViewCharacterBehavior_Package_References is
   type TopViewCharacterBehavior_Access is access all org.allbinary.game.behavior.topview.TopViewCharacterBehavior_Package.TopViewCharacterBehavior'Class;
   type TopViewCharacterBehavior_Access_Array is array (Natural range <>) of TopViewCharacterBehavior_Access;
   type TopViewCharacterBehavior_Access_Array_Access is access all TopViewCharacterBehavior_Access_Array;
   type TopViewCharacterBehavior_Access_Array_Access_Array is array (Natural range <>) of TopViewCharacterBehavior_Access_Array_Access;
   type TopViewCharacterBehavior_Access_Array_Access_Array_Access is access all TopViewCharacterBehavior_Access_Array_Access_Array;
   type TopViewCharacterBehavior_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TopViewCharacterBehavior_Access_Array_Access;
   end record;
   function Java_Box (Value : TopViewCharacterBehavior_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TopViewCharacterBehavior_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TopViewCharacterBehavior_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TopViewCharacterBehavior_Access_Array_Access is (if Value /= null and then Value.all in TopViewCharacterBehavior_Access_Array_Object'Class then TopViewCharacterBehavior_Access_Array_Object'Class (Value.all).Value else null);
   type TopViewCharacterBehavior_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TopViewCharacterBehavior_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TopViewCharacterBehavior_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TopViewCharacterBehavior_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TopViewCharacterBehavior_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TopViewCharacterBehavior_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TopViewCharacterBehavior_Access_Array_Access_Array_Object'Class then TopViewCharacterBehavior_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.behavior.topview.TopViewCharacterBehavior_Package_References;

with org.allbinary.game.behavior.topview.TopViewCharacterBehavior_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.direction.Direction_Package;
with org.allbinary.direction.Direction_Package_References;
limited with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
limited with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References;
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References;
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References;

package org.allbinary.game.behavior.topview.TopViewCharacterBehavior_Package is

   package Direction_Package renames Standard.org.allbinary.direction.Direction_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package BasicGeographicMap_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   package GeographicMapCellType_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;
   package Reference_Types is
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


   subtype TopViewCharacterBehavior_Access is org.allbinary.game.behavior.topview.TopViewCharacterBehavior_Package_References.TopViewCharacterBehavior_Access;
   function "=" (Left, Right : TopViewCharacterBehavior_Access) return Boolean renames org.allbinary.game.behavior.topview.TopViewCharacterBehavior_Package_References."=";
   subtype TopViewCharacterBehavior_Access_Array is org.allbinary.game.behavior.topview.TopViewCharacterBehavior_Package_References.TopViewCharacterBehavior_Access_Array;
   function "=" (Left, Right : TopViewCharacterBehavior_Access_Array) return Boolean renames org.allbinary.game.behavior.topview.TopViewCharacterBehavior_Package_References."=";
   subtype TopViewCharacterBehavior_Access_Array_Access is org.allbinary.game.behavior.topview.TopViewCharacterBehavior_Package_References.TopViewCharacterBehavior_Access_Array_Access;
   function "=" (Left, Right : TopViewCharacterBehavior_Access_Array_Access) return Boolean renames org.allbinary.game.behavior.topview.TopViewCharacterBehavior_Package_References."=";
   function Java_Box (Value : TopViewCharacterBehavior_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.behavior.topview.TopViewCharacterBehavior_Package_References.Java_Box;
   function Java_Unbox_TopViewCharacterBehavior_Access_Array (Value : access Java_Object'Class) return TopViewCharacterBehavior_Access_Array_Access renames org.allbinary.game.behavior.topview.TopViewCharacterBehavior_Package_References.Java_Unbox_TopViewCharacterBehavior_Access_Array;
   subtype TopViewCharacterBehavior_Access_Array_Access_Array is org.allbinary.game.behavior.topview.TopViewCharacterBehavior_Package_References.TopViewCharacterBehavior_Access_Array_Access_Array;
   function "=" (Left, Right : TopViewCharacterBehavior_Access_Array_Access_Array) return Boolean renames org.allbinary.game.behavior.topview.TopViewCharacterBehavior_Package_References."=";
   subtype TopViewCharacterBehavior_Access_Array_Access_Array_Access is org.allbinary.game.behavior.topview.TopViewCharacterBehavior_Package_References.TopViewCharacterBehavior_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TopViewCharacterBehavior_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.behavior.topview.TopViewCharacterBehavior_Package_References."=";
   function Java_Box (Value : TopViewCharacterBehavior_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.behavior.topview.TopViewCharacterBehavior_Package_References.Java_Box;
   function Java_Unbox_TopViewCharacterBehavior_Access_Array_Access_Array (Value : access Java_Object'Class) return TopViewCharacterBehavior_Access_Array_Access_Array_Access renames org.allbinary.game.behavior.topview.TopViewCharacterBehavior_Package_References.Java_Unbox_TopViewCharacterBehavior_Access_Array_Access_Array;

   type TopViewCharacterBehavior is new Java_Object with null record;

   procedure Initialize (This : in out TopViewCharacterBehavior'Class);
   function Create return TopViewCharacterBehavior_Access;
   procedure terrainEvent (This : in out TopViewCharacterBehavior; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; direction_Param : access Direction_Package.Direction'Class; x : Integer; y : Integer; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class);
   procedure terrainMove (This : in out TopViewCharacterBehavior; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; x : Integer; y : Integer);
   function hasSolidBlock (This : in out TopViewCharacterBehavior; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access) return Boolean;
   procedure hasSolidBlock (This : in out TopViewCharacterBehavior; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access);

end org.allbinary.game.behavior.topview.TopViewCharacterBehavior_Package;


