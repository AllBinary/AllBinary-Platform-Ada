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


package body org.allbinary.game.behavior.topview.GeographicMapTopViewLayerBehavior_Package is

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
   function getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation (This : in out GeographicMapTopViewLayerBehavior; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; velocityProperties_Param : access VelocityProperties'Class; layer_Param : access AllBinaryLayer'Class; x : Integer; y : Integer) return GeographicMapCellPosition_Access is
      velocityProperties : VelocityProperties_Access := VelocityProperties_Access (velocityProperties_Param);
      layer : AllBinaryLayer_Access := AllBinaryLayer_Access (layer_Param);
   begin
        return SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION;
   end getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation;

   --  throws Exception
   function getGeographicMapCellPositionIfNotSolidBlockOrOffMap (This : in out GeographicMapTopViewLayerBehavior; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; geographicMapCellPosition_Param : access GeographicMapCellPosition'Class; velocityProperties_Param : access VelocityProperties'Class; layer_Param : access AllBinaryLayer'Class) return GeographicMapCellPosition_Access is
      geographicMapCellPosition : GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (geographicMapCellPosition_Param);
      velocityProperties : VelocityProperties_Access := VelocityProperties_Access (velocityProperties_Param);
      layer : AllBinaryLayer_Access := AllBinaryLayer_Access (layer_Param);
   begin
        return SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION;
   end getGeographicMapCellPositionIfNotSolidBlockOrOffMap;

   --  throws Exception
   function getGeographicMapCellPositionFromListIfNotSolidBlockOrOffMap (This : in out GeographicMapTopViewLayerBehavior; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; geographicMapCellPositionList_Param : access BasicArrayList'Class; velocityProperties_Param : access VelocityProperties'Class; layer_Param : access AllBinaryLayer'Class) return GeographicMapCellPosition_Access is
      geographicMapCellPositionList : BasicArrayList_Access := BasicArrayList_Access (geographicMapCellPositionList_Param);
      velocityProperties : VelocityProperties_Access := VelocityProperties_Access (velocityProperties_Param);
      layer : AllBinaryLayer_Access := AllBinaryLayer_Access (layer_Param);
   begin
        return SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION;
   end getGeographicMapCellPositionFromListIfNotSolidBlockOrOffMap;

   --  throws Exception
   procedure gravity (This : in out GeographicMapTopViewLayerBehavior; velocityProperties_Param : access VelocityProperties'Class; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; geographicMapCellPosition_Param : access GeographicMapCellPosition'Class) is
      velocityProperties : VelocityProperties_Access := VelocityProperties_Access (velocityProperties_Param);
      geographicMapCellPosition : GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (geographicMapCellPosition_Param);
   begin
        null;
   end gravity;

   --  throws Exception
   procedure left (This : in out GeographicMapTopViewLayerBehavior; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; velocityProperties_Param : access VelocityProperties'Class; layer_Param : access AllBinaryLayer'Class) is
      velocityProperties : VelocityProperties_Access := VelocityProperties_Access (velocityProperties_Param);
      layer : AllBinaryLayer_Access := AllBinaryLayer_Access (layer_Param);
   begin
        null;
   end left;

   --  throws Exception
   function move (This : in out GeographicMapTopViewLayerBehavior; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; velocityProperties_Param : access VelocityProperties'Class; layer_Param : access AllBinaryLayer'Class; x : Integer; y : Integer) return Boolean is
      velocityProperties : VelocityProperties_Access := VelocityProperties_Access (velocityProperties_Param);
      layer : AllBinaryLayer_Access := AllBinaryLayer_Access (layer_Param);
   begin
        return False;
   end move;

   --  throws Exception
   procedure moveAndLand (This : in out GeographicMapTopViewLayerBehavior; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; geographicMapCellPosition_Param : access GeographicMapCellPosition'Class; velocityProperties_Param : access VelocityProperties'Class; layer_Param : access AllBinaryLayer'Class; x : Integer; y : Integer) is
      geographicMapCellPosition : GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (geographicMapCellPosition_Param);
      velocityProperties : VelocityProperties_Access := VelocityProperties_Access (velocityProperties_Param);
      layer : AllBinaryLayer_Access := AllBinaryLayer_Access (layer_Param);
   begin
        null;
   end moveAndLand;

   --  throws Exception
   procedure right (This : in out GeographicMapTopViewLayerBehavior; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; velocityProperties_Param : access VelocityProperties'Class; layer_Param : access AllBinaryLayer'Class) is
      velocityProperties : VelocityProperties_Access := VelocityProperties_Access (velocityProperties_Param);
      layer : AllBinaryLayer_Access := AllBinaryLayer_Access (layer_Param);
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

   procedure getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation (This : in out GeographicMapTopViewLayerBehavior; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; velocityProperties_Param : access VelocityProperties'Class; layer_Param : access AllBinaryLayer'Class; x : Integer; y : Integer) is
      Java_Result : constant GeographicMapCellPosition_Access := GeographicMapTopViewLayerBehavior'Class (This).getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation (geographicMapInterfaceArray, geographicMapCellTypeArray, velocityProperties_Param, layer_Param, x, y);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation;

   procedure getGeographicMapCellPositionIfNotSolidBlockOrOffMap (This : in out GeographicMapTopViewLayerBehavior; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; geographicMapCellPosition_Param : access GeographicMapCellPosition'Class; velocityProperties_Param : access VelocityProperties'Class; layer_Param : access AllBinaryLayer'Class) is
      Java_Result : constant GeographicMapCellPosition_Access := GeographicMapTopViewLayerBehavior'Class (This).getGeographicMapCellPositionIfNotSolidBlockOrOffMap (geographicMapInterfaceArray, geographicMapCellTypeArray, geographicMapCellPosition_Param, velocityProperties_Param, layer_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getGeographicMapCellPositionIfNotSolidBlockOrOffMap;

   procedure getGeographicMapCellPositionFromListIfNotSolidBlockOrOffMap (This : in out GeographicMapTopViewLayerBehavior; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; geographicMapCellPositionList_Param : access BasicArrayList'Class; velocityProperties_Param : access VelocityProperties'Class; layer_Param : access AllBinaryLayer'Class) is
      Java_Result : constant GeographicMapCellPosition_Access := GeographicMapTopViewLayerBehavior'Class (This).getGeographicMapCellPositionFromListIfNotSolidBlockOrOffMap (geographicMapInterfaceArray, geographicMapCellTypeArray, geographicMapCellPositionList_Param, velocityProperties_Param, layer_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getGeographicMapCellPositionFromListIfNotSolidBlockOrOffMap;

   procedure move (This : in out GeographicMapTopViewLayerBehavior; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; velocityProperties_Param : access VelocityProperties'Class; layer_Param : access AllBinaryLayer'Class; x : Integer; y : Integer) is
      Java_Result : constant Boolean := GeographicMapTopViewLayerBehavior'Class (This).move (geographicMapInterfaceArray, geographicMapCellTypeArray, velocityProperties_Param, layer_Param, x, y);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end move;

   procedure hasSolidBlock (This : in out GeographicMapTopViewLayerBehavior; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access) is
      Java_Result : constant Boolean := GeographicMapTopViewLayerBehavior'Class (This).hasSolidBlock (geographicMapInterfaceArray, geographicMapCellTypeArray);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end hasSolidBlock;

   procedure isOffMap (This : in out GeographicMapTopViewLayerBehavior; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access) is
      Java_Result : constant Boolean := GeographicMapTopViewLayerBehavior'Class (This).isOffMap (geographicMapInterfaceArray, geographicMapCellTypeArray);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isOffMap;

end org.allbinary.game.behavior.topview.GeographicMapTopViewLayerBehavior_Package;


