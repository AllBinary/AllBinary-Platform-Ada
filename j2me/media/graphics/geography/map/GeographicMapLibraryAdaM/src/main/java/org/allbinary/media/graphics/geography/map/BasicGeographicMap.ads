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
limited with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
package org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References is
   type BasicGeographicMap_Access is access all org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package.BasicGeographicMap'Class;
   type BasicGeographicMap_Access_Array is array (Natural range <>) of BasicGeographicMap_Access;
   type BasicGeographicMap_Access_Array_Access is access all BasicGeographicMap_Access_Array;
   type BasicGeographicMap_Access_Array_Access_Array is array (Natural range <>) of BasicGeographicMap_Access_Array_Access;
   type BasicGeographicMap_Access_Array_Access_Array_Access is access all BasicGeographicMap_Access_Array_Access_Array;
   type BasicGeographicMap_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicGeographicMap_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicGeographicMap_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicGeographicMap_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicGeographicMap_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicGeographicMap_Access_Array_Access is (if Value /= null and then Value.all in BasicGeographicMap_Access_Array_Object'Class then BasicGeographicMap_Access_Array_Object'Class (Value.all).Value else null);
   type BasicGeographicMap_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicGeographicMap_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicGeographicMap_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicGeographicMap_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicGeographicMap_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicGeographicMap_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in BasicGeographicMap_Access_Array_Access_Array_Object'Class then BasicGeographicMap_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References;

with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References;
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
limited with org.allbinary.layer.Layer_Package;
with org.allbinary.layer.Layer_Package_References;
limited with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.logic.math.MathUtil_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.media.graphics.geography.map.SimpleGeographicMap_Package; use org.allbinary.media.graphics.geography.map.SimpleGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapInterface_Package; use org.allbinary.media.graphics.geography.map.GeographicMapInterface_Package;
limited with org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package_References;
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package_References;
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package_References;
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package_References;
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References;
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References;

package org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package is

   package AllBinaryTiledLayer_Package renames Standard.org.allbinary.game.layer.AllBinaryTiledLayer_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package Layer_Package renames Standard.org.allbinary.layer.Layer_Package;
   package MathUtil_Package renames Standard.org.allbinary.logic.math.MathUtil_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
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
   subtype Layer_Access is org.allbinary.layer.Layer_Package_References.Layer_Access;
   use type Layer_Access;
   subtype Layer_Access_Array is org.allbinary.layer.Layer_Package_References.Layer_Access_Array;
   use type Layer_Access_Array;
   subtype Layer_Access_Array_Access is org.allbinary.layer.Layer_Package_References.Layer_Access_Array_Access;
   use type Layer_Access_Array_Access;
   subtype Layer_Access_Array_Access_Array is org.allbinary.layer.Layer_Package_References.Layer_Access_Array_Access_Array;
   use type Layer_Access_Array_Access_Array;
   subtype Layer_Access_Array_Access_Array_Access is org.allbinary.layer.Layer_Package_References.Layer_Access_Array_Access_Array_Access;
   use type Layer_Access_Array_Access_Array_Access;
   subtype MathUtil_Access is org.allbinary.logic.math.MathUtil_Package_References.MathUtil_Access;
   use type MathUtil_Access;
   subtype MathUtil_Access_Array is org.allbinary.logic.math.MathUtil_Package_References.MathUtil_Access_Array;
   use type MathUtil_Access_Array;
   subtype MathUtil_Access_Array_Access is org.allbinary.logic.math.MathUtil_Package_References.MathUtil_Access_Array_Access;
   use type MathUtil_Access_Array_Access;
   subtype MathUtil_Access_Array_Access_Array is org.allbinary.logic.math.MathUtil_Package_References.MathUtil_Access_Array_Access_Array;
   use type MathUtil_Access_Array_Access_Array;
   subtype MathUtil_Access_Array_Access_Array_Access is org.allbinary.logic.math.MathUtil_Package_References.MathUtil_Access_Array_Access_Array_Access;
   use type MathUtil_Access_Array_Access_Array_Access;
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   subtype BasicGeographicMapCellPositionFactory_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package_References.BasicGeographicMapCellPositionFactory_Access;
   use type BasicGeographicMapCellPositionFactory_Access;
   subtype BasicGeographicMapCellPositionFactory_Access_Array is org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package_References.BasicGeographicMapCellPositionFactory_Access_Array;
   use type BasicGeographicMapCellPositionFactory_Access_Array;
   subtype BasicGeographicMapCellPositionFactory_Access_Array_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package_References.BasicGeographicMapCellPositionFactory_Access_Array_Access;
   use type BasicGeographicMapCellPositionFactory_Access_Array_Access;
   subtype BasicGeographicMapCellPositionFactory_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package_References.BasicGeographicMapCellPositionFactory_Access_Array_Access_Array;
   use type BasicGeographicMapCellPositionFactory_Access_Array_Access_Array;
   subtype BasicGeographicMapCellPositionFactory_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package_References.BasicGeographicMapCellPositionFactory_Access_Array_Access_Array_Access;
   use type BasicGeographicMapCellPositionFactory_Access_Array_Access_Array_Access;
   subtype GeographicMapCellPositionFactoryInterface_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package_References.GeographicMapCellPositionFactoryInterface_Access;
   use type GeographicMapCellPositionFactoryInterface_Access;
   subtype GeographicMapCellPositionFactoryInterface_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package_References.GeographicMapCellPositionFactoryInterface_Access_Array;
   use type GeographicMapCellPositionFactoryInterface_Access_Array;
   subtype GeographicMapCellPositionFactoryInterface_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package_References.GeographicMapCellPositionFactoryInterface_Access_Array_Access;
   use type GeographicMapCellPositionFactoryInterface_Access_Array_Access;
   subtype GeographicMapCellPositionFactoryInterface_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package_References.GeographicMapCellPositionFactoryInterface_Access_Array_Access_Array;
   use type GeographicMapCellPositionFactoryInterface_Access_Array_Access_Array;
   subtype GeographicMapCellPositionFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package_References.GeographicMapCellPositionFactoryInterface_Access_Array_Access_Array_Access;
   use type GeographicMapCellPositionFactoryInterface_Access_Array_Access_Array_Access;
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
   subtype GeographicMapCellPositionBaseFactory_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package_References.GeographicMapCellPositionBaseFactory_Access;
   use type GeographicMapCellPositionBaseFactory_Access;
   subtype GeographicMapCellPositionBaseFactory_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package_References.GeographicMapCellPositionBaseFactory_Access_Array;
   use type GeographicMapCellPositionBaseFactory_Access_Array;
   subtype GeographicMapCellPositionBaseFactory_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package_References.GeographicMapCellPositionBaseFactory_Access_Array_Access;
   use type GeographicMapCellPositionBaseFactory_Access_Array_Access;
   subtype GeographicMapCellPositionBaseFactory_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package_References.GeographicMapCellPositionBaseFactory_Access_Array_Access_Array;
   use type GeographicMapCellPositionBaseFactory_Access_Array_Access_Array;
   subtype GeographicMapCellPositionBaseFactory_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package_References.GeographicMapCellPositionBaseFactory_Access_Array_Access_Array_Access;
   use type GeographicMapCellPositionBaseFactory_Access_Array_Access_Array_Access;
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


   subtype BasicGeographicMap_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access;
   function "=" (Left, Right : BasicGeographicMap_Access) return Boolean renames org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References."=";
   subtype BasicGeographicMap_Access_Array is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array;
   function "=" (Left, Right : BasicGeographicMap_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References."=";
   subtype BasicGeographicMap_Access_Array_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access;
   function "=" (Left, Right : BasicGeographicMap_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References."=";
   function Java_Box (Value : BasicGeographicMap_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.Java_Box;
   function Java_Unbox_BasicGeographicMap_Access_Array (Value : access Java_Object'Class) return BasicGeographicMap_Access_Array_Access renames org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.Java_Unbox_BasicGeographicMap_Access_Array;
   subtype BasicGeographicMap_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access_Array;
   function "=" (Left, Right : BasicGeographicMap_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References."=";
   subtype BasicGeographicMap_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicGeographicMap_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References."=";
   function Java_Box (Value : BasicGeographicMap_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.Java_Box;
   function Java_Unbox_BasicGeographicMap_Access_Array_Access_Array (Value : access Java_Object'Class) return BasicGeographicMap_Access_Array_Access_Array_Access renames org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.Java_Unbox_BasicGeographicMap_Access_Array_Access_Array;

   type BasicGeographicMap is new SimpleGeographicMap and GeographicMapInterface with record
      mathUtil : MathUtil_Access;
      geographicMapCellPositionFactory : BasicGeographicMapCellPositionFactory_Access;
      geographicMapCellPositionFactoryInterface : GeographicMapCellPositionFactoryInterface_Access;
      BasicGeographicMap_Field_geographicMapCellTypeFactory : GeographicMapCellTypeFactory_Access;
   end record;
   NULL_BASIC_GEOGRAPHIC_MAP_ARRAY : BasicGeographicMap_Access_Array_Access;

   procedure Initialize (This : in out BasicGeographicMap'Class; id : Integer; name : Unbounded_String; cellTypeIdToGeographicMapCellType : Integer_Array_Access; tiledLayer_Param : access AllBinaryTiledLayer_Package.AllBinaryTiledLayer'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; geographicMapCellPositionFactoryInterface_Param : access GeographicMapCellPositionFactoryInterface_Package.GeographicMapCellPositionFactoryInterface'Class; geographicMapCellPositionBaseFactory_Param : access GeographicMapCellPositionBaseFactory_Package.GeographicMapCellPositionBaseFactory'Class; geographicMapCellTypeFactory_Param : access GeographicMapCellTypeFactory_Package.GeographicMapCellTypeFactory'Class);
   function Create (id : Integer; name : Unbounded_String; cellTypeIdToGeographicMapCellType : Integer_Array_Access; tiledLayer_Param : access AllBinaryTiledLayer_Package.AllBinaryTiledLayer'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; geographicMapCellPositionFactoryInterface_Param : access GeographicMapCellPositionFactoryInterface_Package.GeographicMapCellPositionFactoryInterface'Class; geographicMapCellPositionBaseFactory_Param : access GeographicMapCellPositionBaseFactory_Package.GeographicMapCellPositionBaseFactory'Class; geographicMapCellTypeFactory_Param : access GeographicMapCellTypeFactory_Package.GeographicMapCellTypeFactory'Class) return BasicGeographicMap_Access;
   function getCellPosition (This : in out BasicGeographicMap; direction : Integer; oldGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return GeographicMapCellPosition_Access;
   procedure getCellPosition (This : in out BasicGeographicMap; direction : Integer; oldGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class);
   function getCellPositionNoThrow (This : in out BasicGeographicMap; direction : Integer; oldGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return GeographicMapCellPosition_Access;
   procedure getCellPositionNoThrow (This : in out BasicGeographicMap; direction : Integer; oldGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class);
   function isOfFourDirections (This : in out BasicGeographicMap; oldGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; newGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return Boolean;
   procedure isOfFourDirections (This : in out BasicGeographicMap; oldGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; newGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class);
   function getCellPositionAtXY (This : in out BasicGeographicMap; x : Integer; y : Integer) return GeographicMapCellPosition_Access;
   procedure getCellPositionAtXY (This : in out BasicGeographicMap; x : Integer; y : Integer);
   function getCellPositionAtXYNoThrow (This : in out BasicGeographicMap; x : Integer; y : Integer) return GeographicMapCellPosition_Access;
   procedure getCellPositionAtXYNoThrow (This : in out BasicGeographicMap; x : Integer; y : Integer);
   function isOnMap (This : in out BasicGeographicMap; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return Boolean;
   procedure isOnMap (This : in out BasicGeographicMap; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class);
   function getCellPositionAtNoThrow (This : in out BasicGeographicMap; x : Integer; y : Integer; x2 : Integer; y2 : Integer; geographicMapCellPositionList_Param : access BasicArrayList_Package.BasicArrayList'Class) return BasicArrayList_Access;
   procedure getCellPositionAtNoThrow (This : in out BasicGeographicMap; x : Integer; y : Integer; x2 : Integer; y2 : Integer; geographicMapCellPositionList_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function getCellPositionsAt (This : in out BasicGeographicMap; layer_Param : access Layer_Package.Layer'Class; currentCellPositionArray : GeographicMapCellPosition_Access_Array_Access_Array_Access; cellPositionArray : GeographicMapCellPosition_Access_Array_Access_Array_Access) return Boolean;
   procedure getCellPositionsAt (This : in out BasicGeographicMap; layer_Param : access Layer_Package.Layer'Class; currentCellPositionArray : GeographicMapCellPosition_Access_Array_Access_Array_Access; cellPositionArray : GeographicMapCellPosition_Access_Array_Access_Array_Access);
   function getCellTypeAtXY (This : in out BasicGeographicMap; x : Integer; y : Integer) return GeographicMapCellType_Access;
   procedure getCellTypeAtXY (This : in out BasicGeographicMap; x : Integer; y : Integer);
   function getGeographicMapCellPositionFactory (This : in out BasicGeographicMap) return BasicGeographicMapCellPositionFactory_Access;
   function getGeographicMapCellPositionFactoryInterface (This : in out BasicGeographicMap) return GeographicMapCellPositionFactoryInterface_Access;
   function getGeographicMapCellTypeFactory (This : in out BasicGeographicMap) return GeographicMapCellTypeFactory_Access;
   function getId (This : in out BasicGeographicMap) return Integer;
   function getName (This : in out BasicGeographicMap) return Unbounded_String;
   procedure reset (This : in out BasicGeographicMap);
   function getAllBinaryTiledLayer (This : in out BasicGeographicMap) return AllBinaryTiledLayer_Access;
   function getCellTypeFromMapCellTypeInt (This : in out BasicGeographicMap; cellTypeId : Integer) return Integer;
   procedure getCellTypeFromMapCellTypeInt (This : in out BasicGeographicMap; cellTypeId : Integer);
   function getCellTypeAt (This : in out BasicGeographicMap; cellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return GeographicMapCellType_Access;
   procedure getCellTypeAt (This : in out BasicGeographicMap; cellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class);
   function getForegroundBasicColor (This : in out BasicGeographicMap) return BasicColor_Access;
   function getBackgroundBasicColor (This : in out BasicGeographicMap) return BasicColor_Access;

end org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;


