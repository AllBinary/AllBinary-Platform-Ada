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


with org.allbinary.game.physics.velocity.VelocityProperties_Package; use org.allbinary.game.physics.velocity.VelocityProperties_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;
with org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package; use org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package;
with org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapCellTypeFactory_Package; use org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapCellTypeFactory_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.game.behavior.topview.InitialJumpBehavior_Package;
with org.allbinary.game.behavior.topview.TopViewGameLayerBehavior_Package;

package body org.allbinary.game.behavior.topview.GeographicMapTopViewLayerBehavior_Package is

   package SimpleGeographicMapCellPositionFactory_Package renames Standard.org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package;
   package BasicTopViewGeographicMapCellTypeFactory_Package renames Standard.org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapCellTypeFactory_Package;
   subtype VelocityProperties_Access is org.allbinary.game.physics.velocity.VelocityProperties_Package_References.VelocityProperties_Access;
   function "=" (Left, Right : VelocityProperties_Access) return Boolean renames org.allbinary.game.physics.velocity.VelocityProperties_Package_References."=";
   subtype VelocityProperties_Access_Array is org.allbinary.game.physics.velocity.VelocityProperties_Package_References.VelocityProperties_Access_Array;
   function "=" (Left, Right : VelocityProperties_Access_Array) return Boolean renames org.allbinary.game.physics.velocity.VelocityProperties_Package_References."=";
   subtype VelocityProperties_Access_Array_Access is org.allbinary.game.physics.velocity.VelocityProperties_Package_References.VelocityProperties_Access_Array_Access;
   function "=" (Left, Right : VelocityProperties_Access_Array_Access) return Boolean renames org.allbinary.game.physics.velocity.VelocityProperties_Package_References."=";
   subtype VelocityProperties_Access_Array_Access_Array is org.allbinary.game.physics.velocity.VelocityProperties_Package_References.VelocityProperties_Access_Array_Access_Array;
   function "=" (Left, Right : VelocityProperties_Access_Array_Access_Array) return Boolean renames org.allbinary.game.physics.velocity.VelocityProperties_Package_References."=";
   subtype VelocityProperties_Access_Array_Access_Array_Access is org.allbinary.game.physics.velocity.VelocityProperties_Package_References.VelocityProperties_Access_Array_Access_Array_Access;
   function "=" (Left, Right : VelocityProperties_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.physics.velocity.VelocityProperties_Package_References."=";
   subtype AllBinaryLayer_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access;
   function "=" (Left, Right : AllBinaryLayer_Access) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array;
   function "=" (Left, Right : AllBinaryLayer_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayer_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype BasicGeographicMap_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access;
   function "=" (Left, Right : BasicGeographicMap_Access) return Boolean renames org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References."=";
   subtype BasicGeographicMap_Access_Array is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array;
   function "=" (Left, Right : BasicGeographicMap_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References."=";
   subtype BasicGeographicMap_Access_Array_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access;
   function "=" (Left, Right : BasicGeographicMap_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References."=";
   subtype BasicGeographicMap_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access_Array;
   function "=" (Left, Right : BasicGeographicMap_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References."=";
   subtype BasicGeographicMap_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicGeographicMap_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References."=";
   subtype GeographicMapCellPosition_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access;
   function "=" (Left, Right : GeographicMapCellPosition_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References."=";
   subtype GeographicMapCellPosition_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array;
   function "=" (Left, Right : GeographicMapCellPosition_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References."=";
   subtype GeographicMapCellPosition_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellPosition_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References."=";
   subtype GeographicMapCellPosition_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array_Access_Array;
   function "=" (Left, Right : GeographicMapCellPosition_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References."=";
   subtype GeographicMapCellPosition_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellPosition_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References."=";
   subtype GeographicMapCellType_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References.GeographicMapCellType_Access;
   function "=" (Left, Right : GeographicMapCellType_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References."=";
   subtype GeographicMapCellType_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References.GeographicMapCellType_Access_Array;
   function "=" (Left, Right : GeographicMapCellType_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References."=";
   subtype GeographicMapCellType_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References.GeographicMapCellType_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellType_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References."=";
   subtype GeographicMapCellType_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References.GeographicMapCellType_Access_Array_Access_Array;
   function "=" (Left, Right : GeographicMapCellType_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References."=";
   subtype GeographicMapCellType_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References.GeographicMapCellType_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellType_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References."=";
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   function "=" (Left, Right : BasicArrayList_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   procedure Initialize_Fields (This : in out GeographicMapTopViewLayerBehavior'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out GeographicMapTopViewLayerBehavior'Class; maxGravityActionIndex : Integer) is
   begin
        TopViewGameLayerBehavior_Package.Initialize (This, maxGravityActionIndex);
   end Initialize;

   function Create (maxGravityActionIndex : Integer) return GeographicMapTopViewLayerBehavior_Access is
      This : constant GeographicMapTopViewLayerBehavior_Access := new GeographicMapTopViewLayerBehavior;
   begin
      GeographicMapTopViewLayerBehavior_Package.Initialize (This.all, maxGravityActionIndex);
      return This;
   end Create;

   --  throws Exception
   function getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation (This : in out GeographicMapTopViewLayerBehavior; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; velocityProperties_Param : access VelocityProperties_Package.VelocityProperties'Class; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; x : Integer; y : Integer) return GeographicMapCellPosition_Access is
      velocityProperties : constant VelocityProperties_Access := VelocityProperties_Access (velocityProperties_Param);
      layer : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layer_Param);
   begin
        return GeographicMapCellPosition_Access (SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
   end getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation;

   --  throws Exception
   function getGeographicMapCellPositionIfNotSolidBlockOrOffMap (This : in out GeographicMapTopViewLayerBehavior; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; velocityProperties_Param : access VelocityProperties_Package.VelocityProperties'Class; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) return GeographicMapCellPosition_Access is
      geographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (geographicMapCellPosition_Param);
      velocityProperties : constant VelocityProperties_Access := VelocityProperties_Access (velocityProperties_Param);
      layer : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layer_Param);
   begin
        return GeographicMapCellPosition_Access (SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
   end getGeographicMapCellPositionIfNotSolidBlockOrOffMap;

   --  throws Exception
   function getGeographicMapCellPositionFromListIfNotSolidBlockOrOffMap (This : in out GeographicMapTopViewLayerBehavior; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; geographicMapCellPositionList_Param : access BasicArrayList_Package.BasicArrayList'Class; velocityProperties_Param : access VelocityProperties_Package.VelocityProperties'Class; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) return GeographicMapCellPosition_Access is
      geographicMapCellPositionList : constant BasicArrayList_Access := BasicArrayList_Access (geographicMapCellPositionList_Param);
      velocityProperties : constant VelocityProperties_Access := VelocityProperties_Access (velocityProperties_Param);
      layer : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layer_Param);
   begin
        return GeographicMapCellPosition_Access (SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
   end getGeographicMapCellPositionFromListIfNotSolidBlockOrOffMap;

   --  throws Exception
   procedure gravity (This : in out GeographicMapTopViewLayerBehavior; velocityProperties_Param : access VelocityProperties_Package.VelocityProperties'Class; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is
      velocityProperties : constant VelocityProperties_Access := VelocityProperties_Access (velocityProperties_Param);
      geographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (geographicMapCellPosition_Param);
   begin
        null;
   end gravity;

   --  throws Exception
   procedure left (This : in out GeographicMapTopViewLayerBehavior; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; velocityProperties_Param : access VelocityProperties_Package.VelocityProperties'Class; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) is
      velocityProperties : constant VelocityProperties_Access := VelocityProperties_Access (velocityProperties_Param);
      layer : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layer_Param);
   begin
        null;
   end left;

   --  throws Exception
   function move (This : in out GeographicMapTopViewLayerBehavior; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; velocityProperties_Param : access VelocityProperties_Package.VelocityProperties'Class; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; x : Integer; y : Integer) return Boolean is
      velocityProperties : constant VelocityProperties_Access := VelocityProperties_Access (velocityProperties_Param);
      layer : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layer_Param);
   begin
        return False;
   end move;

   --  throws Exception
   procedure moveAndLand (This : in out GeographicMapTopViewLayerBehavior; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; velocityProperties_Param : access VelocityProperties_Package.VelocityProperties'Class; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; x : Integer; y : Integer) is
      geographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (geographicMapCellPosition_Param);
      velocityProperties : constant VelocityProperties_Access := VelocityProperties_Access (velocityProperties_Param);
      layer : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layer_Param);
   begin
        null;
   end moveAndLand;

   --  throws Exception
   procedure right (This : in out GeographicMapTopViewLayerBehavior; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; velocityProperties_Param : access VelocityProperties_Package.VelocityProperties'Class; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) is
      velocityProperties : constant VelocityProperties_Access := VelocityProperties_Access (velocityProperties_Param);
      layer : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layer_Param);
   begin
        null;
   end right;

   function hasSolidBlock (This : in out GeographicMapTopViewLayerBehavior; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access) return Boolean is
      size : Integer;
      basicTopViewGeographicMapCellTypeFactory : BasicTopViewGeographicMapCellTypeFactory_Access;
      index : Integer;
   begin
        size := geographicMapInterfaceArray'Length;
        basicTopViewGeographicMapCellTypeFactory := null;
        for index in 0 .. (size) - 1 loop
            basicTopViewGeographicMapCellTypeFactory := BasicTopViewGeographicMapCellTypeFactory_Access (geographicMapInterfaceArray (index).getGeographicMapCellTypeFactory);
            if basicTopViewGeographicMapCellTypeFactory.BLOCK_CELL_TYPE.isType (geographicMapCellTypeArray (index)) then
                return True;
            end if;
        end loop;
        return False;
   end hasSolidBlock;

   function isOffMap (This : in out GeographicMapTopViewLayerBehavior; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access) return Boolean is
      size : Integer;
      basicTopViewGeographicMapCellTypeFactory : BasicTopViewGeographicMapCellTypeFactory_Access;
      index : Integer;
   begin
        size := geographicMapInterfaceArray'Length;
        basicTopViewGeographicMapCellTypeFactory := null;
        for index in 0 .. (size) - 1 loop
            basicTopViewGeographicMapCellTypeFactory := BasicTopViewGeographicMapCellTypeFactory_Access (geographicMapInterfaceArray (index).getGeographicMapCellTypeFactory);
            if basicTopViewGeographicMapCellTypeFactory.OFF_MAP_CELL_TYPE.isType (geographicMapCellTypeArray (index)) then
                return True;
            end if;
        end loop;
        return False;
   end isOffMap;

   procedure getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation (This : in out GeographicMapTopViewLayerBehavior; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; velocityProperties_Param : access VelocityProperties_Package.VelocityProperties'Class; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; x : Integer; y : Integer) is
      Java_Result : constant GeographicMapCellPosition_Access := GeographicMapTopViewLayerBehavior'Class (This).getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation (geographicMapInterfaceArray => geographicMapInterfaceArray, geographicMapCellTypeArray => geographicMapCellTypeArray, velocityProperties_Param => velocityProperties_Param, layer_Param => layer_Param, x => x, y => y);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation;

   procedure getGeographicMapCellPositionIfNotSolidBlockOrOffMap (This : in out GeographicMapTopViewLayerBehavior; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; velocityProperties_Param : access VelocityProperties_Package.VelocityProperties'Class; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) is
      Java_Result : constant GeographicMapCellPosition_Access := GeographicMapTopViewLayerBehavior'Class (This).getGeographicMapCellPositionIfNotSolidBlockOrOffMap (geographicMapInterfaceArray => geographicMapInterfaceArray, geographicMapCellTypeArray => geographicMapCellTypeArray, geographicMapCellPosition_Param => geographicMapCellPosition_Param, velocityProperties_Param => velocityProperties_Param, layer_Param => layer_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getGeographicMapCellPositionIfNotSolidBlockOrOffMap;

   procedure getGeographicMapCellPositionFromListIfNotSolidBlockOrOffMap (This : in out GeographicMapTopViewLayerBehavior; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; geographicMapCellPositionList_Param : access BasicArrayList_Package.BasicArrayList'Class; velocityProperties_Param : access VelocityProperties_Package.VelocityProperties'Class; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) is
      Java_Result : constant GeographicMapCellPosition_Access := GeographicMapTopViewLayerBehavior'Class (This).getGeographicMapCellPositionFromListIfNotSolidBlockOrOffMap (geographicMapInterfaceArray => geographicMapInterfaceArray, geographicMapCellTypeArray => geographicMapCellTypeArray, geographicMapCellPositionList_Param => geographicMapCellPositionList_Param, velocityProperties_Param => velocityProperties_Param, layer_Param => layer_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getGeographicMapCellPositionFromListIfNotSolidBlockOrOffMap;

   procedure move (This : in out GeographicMapTopViewLayerBehavior; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; velocityProperties_Param : access VelocityProperties_Package.VelocityProperties'Class; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; x : Integer; y : Integer) is
      Java_Result : constant Boolean := GeographicMapTopViewLayerBehavior'Class (This).move (geographicMapInterfaceArray => geographicMapInterfaceArray, geographicMapCellTypeArray => geographicMapCellTypeArray, velocityProperties_Param => velocityProperties_Param, layer_Param => layer_Param, x => x, y => y);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end move;

   procedure hasSolidBlock (This : in out GeographicMapTopViewLayerBehavior; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access) is
      Java_Result : constant Boolean := GeographicMapTopViewLayerBehavior'Class (This).hasSolidBlock (geographicMapInterfaceArray => geographicMapInterfaceArray, geographicMapCellTypeArray => geographicMapCellTypeArray);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end hasSolidBlock;

   procedure isOffMap (This : in out GeographicMapTopViewLayerBehavior; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access) is
      Java_Result : constant Boolean := GeographicMapTopViewLayerBehavior'Class (This).isOffMap (geographicMapInterfaceArray => geographicMapInterfaceArray, geographicMapCellTypeArray => geographicMapCellTypeArray);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isOffMap;

end org.allbinary.game.behavior.topview.GeographicMapTopViewLayerBehavior_Package;


