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
   function getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation (This : in out GeographicMapTopViewLayerBehavior; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; velocityProperties : VelocityProperties_Access; layer : AllBinaryLayer_Access; x : Integer; y : Integer) return GeographicMapCellPosition_Access is
   begin
        return SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION;
   end getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation;

   --  throws Exception
   function getGeographicMapCellPositionIfNotSolidBlockOrOffMap (This : in out GeographicMapTopViewLayerBehavior; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; geographicMapCellPosition : GeographicMapCellPosition_Access; velocityProperties : VelocityProperties_Access; layer : AllBinaryLayer_Access) return GeographicMapCellPosition_Access is
   begin
        return SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION;
   end getGeographicMapCellPositionIfNotSolidBlockOrOffMap;

   --  throws Exception
   function getGeographicMapCellPositionFromListIfNotSolidBlockOrOffMap (This : in out GeographicMapTopViewLayerBehavior; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; geographicMapCellPositionList : BasicArrayList_Access; velocityProperties : VelocityProperties_Access; layer : AllBinaryLayer_Access) return GeographicMapCellPosition_Access is
   begin
        return SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION;
   end getGeographicMapCellPositionFromListIfNotSolidBlockOrOffMap;

   --  throws Exception
   procedure gravity (This : in out GeographicMapTopViewLayerBehavior; velocityProperties : VelocityProperties_Access; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; geographicMapCellPosition : GeographicMapCellPosition_Access) is
   begin
        null;
   end gravity;

   --  throws Exception
   procedure left (This : in out GeographicMapTopViewLayerBehavior; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; velocityProperties : VelocityProperties_Access; layer : AllBinaryLayer_Access) is
   begin
        null;
   end left;

   --  throws Exception
   function move (This : in out GeographicMapTopViewLayerBehavior; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; velocityProperties : VelocityProperties_Access; layer : AllBinaryLayer_Access; x : Integer; y : Integer) return Boolean is
   begin
        return False;
   end move;

   --  throws Exception
   procedure moveAndLand (This : in out GeographicMapTopViewLayerBehavior; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; geographicMapCellPosition : GeographicMapCellPosition_Access; velocityProperties : VelocityProperties_Access; layer : AllBinaryLayer_Access; x : Integer; y : Integer) is
   begin
        null;
   end moveAndLand;

   --  throws Exception
   procedure right (This : in out GeographicMapTopViewLayerBehavior; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; velocityProperties : VelocityProperties_Access; layer : AllBinaryLayer_Access) is
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

   procedure getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation (This : in out GeographicMapTopViewLayerBehavior; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; velocityProperties : VelocityProperties_Access; layer : AllBinaryLayer_Access; x : Integer; y : Integer) is
      Java_Result : constant GeographicMapCellPosition_Access := GeographicMapTopViewLayerBehavior'Class (This).getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation (geographicMapInterfaceArray, geographicMapCellTypeArray, velocityProperties, layer, x, y);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation;

   procedure getGeographicMapCellPositionIfNotSolidBlockOrOffMap (This : in out GeographicMapTopViewLayerBehavior; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; geographicMapCellPosition : GeographicMapCellPosition_Access; velocityProperties : VelocityProperties_Access; layer : AllBinaryLayer_Access) is
      Java_Result : constant GeographicMapCellPosition_Access := GeographicMapTopViewLayerBehavior'Class (This).getGeographicMapCellPositionIfNotSolidBlockOrOffMap (geographicMapInterfaceArray, geographicMapCellTypeArray, geographicMapCellPosition, velocityProperties, layer);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getGeographicMapCellPositionIfNotSolidBlockOrOffMap;

   procedure getGeographicMapCellPositionFromListIfNotSolidBlockOrOffMap (This : in out GeographicMapTopViewLayerBehavior; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; geographicMapCellPositionList : BasicArrayList_Access; velocityProperties : VelocityProperties_Access; layer : AllBinaryLayer_Access) is
      Java_Result : constant GeographicMapCellPosition_Access := GeographicMapTopViewLayerBehavior'Class (This).getGeographicMapCellPositionFromListIfNotSolidBlockOrOffMap (geographicMapInterfaceArray, geographicMapCellTypeArray, geographicMapCellPositionList, velocityProperties, layer);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getGeographicMapCellPositionFromListIfNotSolidBlockOrOffMap;

   procedure move (This : in out GeographicMapTopViewLayerBehavior; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; velocityProperties : VelocityProperties_Access; layer : AllBinaryLayer_Access; x : Integer; y : Integer) is
      Java_Result : constant Boolean := GeographicMapTopViewLayerBehavior'Class (This).move (geographicMapInterfaceArray, geographicMapCellTypeArray, velocityProperties, layer, x, y);
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


