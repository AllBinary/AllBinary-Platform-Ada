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
limited with org.allbinary.game.behavior.topview.TopViewCharacterInterface_Package;
package org.allbinary.game.behavior.topview.TopViewCharacterInterface_Package_References is
   type TopViewCharacterInterface_Access is access all org.allbinary.game.behavior.topview.TopViewCharacterInterface_Package.TopViewCharacterInterface'Class;
   type TopViewCharacterInterface_Access_Array is array (Natural range <>) of TopViewCharacterInterface_Access;
   type TopViewCharacterInterface_Access_Array_Access is access all TopViewCharacterInterface_Access_Array;
   type TopViewCharacterInterface_Access_Array_Access_Array is array (Natural range <>) of TopViewCharacterInterface_Access_Array_Access;
   type TopViewCharacterInterface_Access_Array_Access_Array_Access is access all TopViewCharacterInterface_Access_Array_Access_Array;
   type TopViewCharacterInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TopViewCharacterInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : TopViewCharacterInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TopViewCharacterInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TopViewCharacterInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TopViewCharacterInterface_Access_Array_Access is (if Value /= null and then Value.all in TopViewCharacterInterface_Access_Array_Object'Class then TopViewCharacterInterface_Access_Array_Object'Class (Value.all).Value else null);
   type TopViewCharacterInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TopViewCharacterInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TopViewCharacterInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TopViewCharacterInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TopViewCharacterInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TopViewCharacterInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TopViewCharacterInterface_Access_Array_Access_Array_Object'Class then TopViewCharacterInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.behavior.topview.TopViewCharacterInterface_Package_References;

with org.allbinary.game.behavior.topview.TopViewCharacterInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References;
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References;
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References;

package org.allbinary.game.behavior.topview.TopViewCharacterInterface_Package is

   package BasicGeographicMap_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   package GeographicMapCellType_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;
   package Reference_Types is
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


   type TopViewCharacterInterface is interface;
   subtype TopViewCharacterInterface_Access is org.allbinary.game.behavior.topview.TopViewCharacterInterface_Package_References.TopViewCharacterInterface_Access;
   function "=" (Left, Right : TopViewCharacterInterface_Access) return Boolean renames org.allbinary.game.behavior.topview.TopViewCharacterInterface_Package_References."=";
   subtype TopViewCharacterInterface_Access_Array is org.allbinary.game.behavior.topview.TopViewCharacterInterface_Package_References.TopViewCharacterInterface_Access_Array;
   function "=" (Left, Right : TopViewCharacterInterface_Access_Array) return Boolean renames org.allbinary.game.behavior.topview.TopViewCharacterInterface_Package_References."=";
   subtype TopViewCharacterInterface_Access_Array_Access is org.allbinary.game.behavior.topview.TopViewCharacterInterface_Package_References.TopViewCharacterInterface_Access_Array_Access;
   function "=" (Left, Right : TopViewCharacterInterface_Access_Array_Access) return Boolean renames org.allbinary.game.behavior.topview.TopViewCharacterInterface_Package_References."=";
   function Java_Box (Value : TopViewCharacterInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.behavior.topview.TopViewCharacterInterface_Package_References.Java_Box;
   function Java_Unbox_TopViewCharacterInterface_Access_Array (Value : access Java_Object'Class) return TopViewCharacterInterface_Access_Array_Access renames org.allbinary.game.behavior.topview.TopViewCharacterInterface_Package_References.Java_Unbox_TopViewCharacterInterface_Access_Array;
   subtype TopViewCharacterInterface_Access_Array_Access_Array is org.allbinary.game.behavior.topview.TopViewCharacterInterface_Package_References.TopViewCharacterInterface_Access_Array_Access_Array;
   function "=" (Left, Right : TopViewCharacterInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.behavior.topview.TopViewCharacterInterface_Package_References."=";
   subtype TopViewCharacterInterface_Access_Array_Access_Array_Access is org.allbinary.game.behavior.topview.TopViewCharacterInterface_Package_References.TopViewCharacterInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TopViewCharacterInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.behavior.topview.TopViewCharacterInterface_Package_References."=";
   function Java_Box (Value : TopViewCharacterInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.behavior.topview.TopViewCharacterInterface_Package_References.Java_Box;
   function Java_Unbox_TopViewCharacterInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return TopViewCharacterInterface_Access_Array_Access_Array_Access renames org.allbinary.game.behavior.topview.TopViewCharacterInterface_Package_References.Java_Unbox_TopViewCharacterInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_TopViewCharacterInterface (Value : TopViewCharacterInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure terrainMove (This : in out TopViewCharacterInterface; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; x : Integer; y : Integer) is abstract;
   procedure terrainEvent (This : in out TopViewCharacterInterface; x : Integer; y : Integer; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is abstract;
   procedure move (This : in out TopViewCharacterInterface) is abstract;
   procedure upp (This : in out TopViewCharacterInterface) is abstract;
   procedure leftp (This : in out TopViewCharacterInterface) is abstract;
   procedure rightp (This : in out TopViewCharacterInterface) is abstract;
   procedure reset (This : in out TopViewCharacterInterface) is abstract;

end org.allbinary.game.behavior.topview.TopViewCharacterInterface_Package;


