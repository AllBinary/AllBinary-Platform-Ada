-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2006 AllBinary 
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


with org.allbinary.game.layer.AllBinaryTiledLayer_Package; use org.allbinary.game.layer.AllBinaryTiledLayer_Package;
with org.allbinary.game.layer.AllBinaryTiledLayer_Package_References;
with org.allbinary.game.layer.AllBinaryTiledLayer_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.layer.NamedInterface_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.game.layer.TiledLayerUtil_Package is

   subtype AllBinaryTiledLayer_Access is org.allbinary.game.layer.AllBinaryTiledLayer_Package_References.AllBinaryTiledLayer_Access;
   function "=" (Left, Right : AllBinaryTiledLayer_Access) return Boolean renames org.allbinary.game.layer.AllBinaryTiledLayer_Package_References."=";
   subtype AllBinaryTiledLayer_Access_Array is org.allbinary.game.layer.AllBinaryTiledLayer_Package_References.AllBinaryTiledLayer_Access_Array;
   function "=" (Left, Right : AllBinaryTiledLayer_Access_Array) return Boolean renames org.allbinary.game.layer.AllBinaryTiledLayer_Package_References."=";
   subtype AllBinaryTiledLayer_Access_Array_Access is org.allbinary.game.layer.AllBinaryTiledLayer_Package_References.AllBinaryTiledLayer_Access_Array_Access;
   function "=" (Left, Right : AllBinaryTiledLayer_Access_Array_Access) return Boolean renames org.allbinary.game.layer.AllBinaryTiledLayer_Package_References."=";
   subtype AllBinaryTiledLayer_Access_Array_Access_Array is org.allbinary.game.layer.AllBinaryTiledLayer_Package_References.AllBinaryTiledLayer_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryTiledLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.AllBinaryTiledLayer_Package_References."=";
   subtype AllBinaryTiledLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.AllBinaryTiledLayer_Package_References.AllBinaryTiledLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryTiledLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.AllBinaryTiledLayer_Package_References."=";
   procedure Initialize_Fields (This : in out TiledLayerUtil'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out TiledLayerUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return TiledLayerUtil_Access is
      This : constant TiledLayerUtil_Access := new TiledLayerUtil;
   begin
      TiledLayerUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return TiledLayerUtil_Access is
   begin
        return TiledLayerUtil_Access (TiledLayerUtil_Package.instance);
   end getInstance;

   function keepOnBorderdMapX (This : in out TiledLayerUtil; terrainTiledLayer_Param : access AllBinaryTiledLayer_Package.AllBinaryTiledLayer'Class; x : Integer; width : Integer; mapBorderBufferWidth : Integer) return Integer is
      terrainTiledLayer : constant AllBinaryTiledLayer_Access := AllBinaryTiledLayer_Access (terrainTiledLayer_Param);
      newX : Integer;
      maxRight : Integer;
   begin
        newX := x;
        maxRight := ((terrainTiledLayer.getWidth) - (width)) - (mapBorderBufferWidth);
        if ((x) + (width)) > (maxRight) then
            newX := maxRight;
        end if;
        if (x) < (mapBorderBufferWidth) then
            newX := mapBorderBufferWidth;
        end if;
        return newX;
   end keepOnBorderdMapX;

   function keepOnBorderdMapY (This : in out TiledLayerUtil; terrainTiledLayer_Param : access AllBinaryTiledLayer_Package.AllBinaryTiledLayer'Class; y : Integer; height : Integer; mapBorderBufferHeight : Integer) return Integer is
      terrainTiledLayer : constant AllBinaryTiledLayer_Access := AllBinaryTiledLayer_Access (terrainTiledLayer_Param);
      newY : Integer;
      maxBottom : Integer;
   begin
        newY := y;
        maxBottom := ((terrainTiledLayer.getHeight) - (height)) - (mapBorderBufferHeight);
        if ((y) + (height)) > (maxBottom) then
            newY := maxBottom;
        end if;
        if (y) < (mapBorderBufferHeight) then
            newY := mapBorderBufferHeight;
        end if;
        return newY;
   end keepOnBorderdMapY;

   function keepOnMapX (This : in out TiledLayerUtil; terrainTiledLayer_Param : access AllBinaryTiledLayer_Package.AllBinaryTiledLayer'Class; x : Integer; width : Integer) return Integer is
      terrainTiledLayer : constant AllBinaryTiledLayer_Access := AllBinaryTiledLayer_Access (terrainTiledLayer_Param);
      newX : Integer;
      maxRight : Integer;
   begin
        newX := x;
        maxRight := (terrainTiledLayer.getWidth) - (width);
        if (x) >= (maxRight) then
            newX := maxRight;
        end if;
        if (x) < (0) then
            newX := 0;
        end if;
        return newX;
   end keepOnMapX;

   function keepOnMapY (This : in out TiledLayerUtil; terrainTiledLayer_Param : access AllBinaryTiledLayer_Package.AllBinaryTiledLayer'Class; y : Integer; height : Integer) return Integer is
      terrainTiledLayer : constant AllBinaryTiledLayer_Access := AllBinaryTiledLayer_Access (terrainTiledLayer_Param);
      newY : Integer;
      maxBottom : Integer;
   begin
        newY := y;
        maxBottom := (terrainTiledLayer.getHeight) - (height);
        if (y) >= (maxBottom) then
            newY := maxBottom;
        end if;
        if (y) < (0) then
            newY := 0;
        end if;
        return newY;
   end keepOnMapY;

   procedure keepOnBorderdMapX (This : in out TiledLayerUtil; terrainTiledLayer_Param : access AllBinaryTiledLayer_Package.AllBinaryTiledLayer'Class; x : Integer; width : Integer; mapBorderBufferWidth : Integer) is
      Java_Result : constant Integer := TiledLayerUtil'Class (This).keepOnBorderdMapX (terrainTiledLayer_Param => terrainTiledLayer_Param, x => x, width => width, mapBorderBufferWidth => mapBorderBufferWidth);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end keepOnBorderdMapX;

   procedure keepOnBorderdMapY (This : in out TiledLayerUtil; terrainTiledLayer_Param : access AllBinaryTiledLayer_Package.AllBinaryTiledLayer'Class; y : Integer; height : Integer; mapBorderBufferHeight : Integer) is
      Java_Result : constant Integer := TiledLayerUtil'Class (This).keepOnBorderdMapY (terrainTiledLayer_Param => terrainTiledLayer_Param, y => y, height => height, mapBorderBufferHeight => mapBorderBufferHeight);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end keepOnBorderdMapY;

   procedure keepOnMapX (This : in out TiledLayerUtil; terrainTiledLayer_Param : access AllBinaryTiledLayer_Package.AllBinaryTiledLayer'Class; x : Integer; width : Integer) is
      Java_Result : constant Integer := TiledLayerUtil'Class (This).keepOnMapX (terrainTiledLayer_Param => terrainTiledLayer_Param, x => x, width => width);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end keepOnMapX;

   procedure keepOnMapY (This : in out TiledLayerUtil; terrainTiledLayer_Param : access AllBinaryTiledLayer_Package.AllBinaryTiledLayer'Class; y : Integer; height : Integer) is
      Java_Result : constant Integer := TiledLayerUtil'Class (This).keepOnMapY (terrainTiledLayer_Param => terrainTiledLayer_Param, y => y, height => height);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end keepOnMapY;

begin
   null;
   instance := TiledLayerUtil_Package.Create;

end org.allbinary.game.layer.TiledLayerUtil_Package;


