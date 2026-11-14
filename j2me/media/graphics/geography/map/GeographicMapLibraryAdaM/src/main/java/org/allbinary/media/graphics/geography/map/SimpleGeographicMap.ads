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
limited with org.allbinary.media.graphics.geography.map.SimpleGeographicMap_Package;
package org.allbinary.media.graphics.geography.map.SimpleGeographicMap_Package_References is
   type SimpleGeographicMap_Access is access all org.allbinary.media.graphics.geography.map.SimpleGeographicMap_Package.SimpleGeographicMap'Class;
   type SimpleGeographicMap_Access_Array is array (Natural range <>) of SimpleGeographicMap_Access;
   type SimpleGeographicMap_Access_Array_Access is access all SimpleGeographicMap_Access_Array;
   type SimpleGeographicMap_Access_Array_Access_Array is array (Natural range <>) of SimpleGeographicMap_Access_Array_Access;
   type SimpleGeographicMap_Access_Array_Access_Array_Access is access all SimpleGeographicMap_Access_Array_Access_Array;
   type SimpleGeographicMap_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SimpleGeographicMap_Access_Array_Access;
   end record;
   function Java_Box (Value : SimpleGeographicMap_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SimpleGeographicMap_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SimpleGeographicMap_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SimpleGeographicMap_Access_Array_Access is (if Value /= null and then Value.all in SimpleGeographicMap_Access_Array_Object'Class then SimpleGeographicMap_Access_Array_Object'Class (Value.all).Value else null);
   type SimpleGeographicMap_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SimpleGeographicMap_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : SimpleGeographicMap_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SimpleGeographicMap_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SimpleGeographicMap_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SimpleGeographicMap_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in SimpleGeographicMap_Access_Array_Access_Array_Object'Class then SimpleGeographicMap_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.graphics.geography.map.SimpleGeographicMap_Package_References;

with org.allbinary.media.graphics.geography.map.SimpleGeographicMap_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.layer.AllBinaryTiledLayer_Package;
with org.allbinary.game.layer.AllBinaryTiledLayer_Package_References;
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package_References;
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References;
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References;

package org.allbinary.media.graphics.geography.map.SimpleGeographicMap_Package is

   package AllBinaryTiledLayer_Package renames Standard.org.allbinary.game.layer.AllBinaryTiledLayer_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Reference_Types is
   subtype AllBinaryTiledLayer_Access is org.allbinary.game.layer.AllBinaryTiledLayer_Package_References.AllBinaryTiledLayer_Access;
   use type AllBinaryTiledLayer_Access;
   subtype AllBinaryTiledLayer_Access_Array is org.allbinary.game.layer.AllBinaryTiledLayer_Package_References.AllBinaryTiledLayer_Access_Array;
   use type AllBinaryTiledLayer_Access_Array;
   subtype AllBinaryTiledLayer_Access_Array_Access is org.allbinary.game.layer.AllBinaryTiledLayer_Package_References.AllBinaryTiledLayer_Access_Array_Access;
   use type AllBinaryTiledLayer_Access_Array_Access;
   subtype AllBinaryTiledLayer_Access_Array_Access_Array is org.allbinary.game.layer.AllBinaryTiledLayer_Package_References.AllBinaryTiledLayer_Access_Array_Access_Array;
   use type AllBinaryTiledLayer_Access_Array_Access_Array;
   subtype AllBinaryTiledLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.AllBinaryTiledLayer_Package_References.AllBinaryTiledLayer_Access_Array_Access_Array_Access;
   use type AllBinaryTiledLayer_Access_Array_Access_Array_Access;
   subtype BasicColor_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access;
   use type BasicColor_Access;
   subtype BasicColor_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array;
   use type BasicColor_Access_Array;
   subtype BasicColor_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access;
   use type BasicColor_Access_Array_Access;
   subtype BasicColor_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array;
   use type BasicColor_Access_Array_Access_Array;
   subtype BasicColor_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array_Access;
   use type BasicColor_Access_Array_Access_Array_Access;
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
   subtype GeographicMapCellTypeFactory_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package_References.GeographicMapCellTypeFactory_Access;
   use type GeographicMapCellTypeFactory_Access;
   subtype GeographicMapCellTypeFactory_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package_References.GeographicMapCellTypeFactory_Access_Array;
   use type GeographicMapCellTypeFactory_Access_Array;
   subtype GeographicMapCellTypeFactory_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package_References.GeographicMapCellTypeFactory_Access_Array_Access;
   use type GeographicMapCellTypeFactory_Access_Array_Access;
   subtype GeographicMapCellTypeFactory_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package_References.GeographicMapCellTypeFactory_Access_Array_Access_Array;
   use type GeographicMapCellTypeFactory_Access_Array_Access_Array;
   subtype GeographicMapCellTypeFactory_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package_References.GeographicMapCellTypeFactory_Access_Array_Access_Array_Access;
   use type GeographicMapCellTypeFactory_Access_Array_Access_Array_Access;
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


   subtype SimpleGeographicMap_Access is org.allbinary.media.graphics.geography.map.SimpleGeographicMap_Package_References.SimpleGeographicMap_Access;
   function "=" (Left, Right : SimpleGeographicMap_Access) return Boolean renames org.allbinary.media.graphics.geography.map.SimpleGeographicMap_Package_References."=";
   subtype SimpleGeographicMap_Access_Array is org.allbinary.media.graphics.geography.map.SimpleGeographicMap_Package_References.SimpleGeographicMap_Access_Array;
   function "=" (Left, Right : SimpleGeographicMap_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.SimpleGeographicMap_Package_References."=";
   subtype SimpleGeographicMap_Access_Array_Access is org.allbinary.media.graphics.geography.map.SimpleGeographicMap_Package_References.SimpleGeographicMap_Access_Array_Access;
   function "=" (Left, Right : SimpleGeographicMap_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.SimpleGeographicMap_Package_References."=";
   function Java_Box (Value : SimpleGeographicMap_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.map.SimpleGeographicMap_Package_References.Java_Box;
   function Java_Unbox_SimpleGeographicMap_Access_Array (Value : access Java_Object'Class) return SimpleGeographicMap_Access_Array_Access renames org.allbinary.media.graphics.geography.map.SimpleGeographicMap_Package_References.Java_Unbox_SimpleGeographicMap_Access_Array;
   subtype SimpleGeographicMap_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.SimpleGeographicMap_Package_References.SimpleGeographicMap_Access_Array_Access_Array;
   function "=" (Left, Right : SimpleGeographicMap_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.SimpleGeographicMap_Package_References."=";
   subtype SimpleGeographicMap_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.SimpleGeographicMap_Package_References.SimpleGeographicMap_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SimpleGeographicMap_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.SimpleGeographicMap_Package_References."=";
   function Java_Box (Value : SimpleGeographicMap_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.map.SimpleGeographicMap_Package_References.Java_Box;
   function Java_Unbox_SimpleGeographicMap_Access_Array_Access_Array (Value : access Java_Object'Class) return SimpleGeographicMap_Access_Array_Access_Array_Access renames org.allbinary.media.graphics.geography.map.SimpleGeographicMap_Package_References.Java_Unbox_SimpleGeographicMap_Access_Array_Access_Array;

   type SimpleGeographicMap is new Java_Object with record
      commonStrings : CommonStrings_Access;
      id : Integer;
      name : Unbounded_String;
      cellTypeIdToGeographicMapCellType : Integer_Array_Access;
      tiledLayer : AllBinaryTiledLayer_Access;
      foregroundBasicColor : BasicColor_Access;
      backgroundBasicColor : BasicColor_Access;
      geographicMapCellTypeFactory : GeographicMapCellTypeFactory_Access;
   end record;

   procedure Initialize (This : in out SimpleGeographicMap'Class; id : Integer; name : Unbounded_String; cellTypeIdToGeographicMapCellType : Integer_Array_Access; tiledLayer_Param : access AllBinaryTiledLayer_Package.AllBinaryTiledLayer'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class);
   function Create (id : Integer; name : Unbounded_String; cellTypeIdToGeographicMapCellType : Integer_Array_Access; tiledLayer_Param : access AllBinaryTiledLayer_Package.AllBinaryTiledLayer'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) return SimpleGeographicMap_Access;
   function getId (This : in out SimpleGeographicMap) return Integer;
   function getName (This : in out SimpleGeographicMap) return Unbounded_String;
   procedure reset (This : in out SimpleGeographicMap);
   function getAllBinaryTiledLayer (This : in out SimpleGeographicMap) return AllBinaryTiledLayer_Access;
   function getCellTypeAt (This : in out SimpleGeographicMap; cellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return GeographicMapCellType_Access;
   procedure getCellTypeAt (This : in out SimpleGeographicMap; cellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class);
   function getCellTypeFromMapCellTypeInt (This : in out SimpleGeographicMap; cellTypeId : Integer) return Integer;
   procedure getCellTypeFromMapCellTypeInt (This : in out SimpleGeographicMap; cellTypeId : Integer);
   function getForegroundBasicColor (This : in out SimpleGeographicMap) return BasicColor_Access;
   procedure setForegroundBasicColor (This : in out SimpleGeographicMap; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class);
   function getBackgroundBasicColor (This : in out SimpleGeographicMap) return BasicColor_Access;
   procedure setBackgroundBasicColor (This : in out SimpleGeographicMap; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class);

end org.allbinary.media.graphics.geography.map.SimpleGeographicMap_Package;


