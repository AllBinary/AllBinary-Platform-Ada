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


with org.allbinary.media.graphics.geography.map.MultiGeographicMapBehavior_Package; use org.allbinary.media.graphics.geography.map.MultiGeographicMapBehavior_Package;
with org.allbinary.media.graphics.geography.map.MultiGeographicMapBehavior_Package_References;
with org.allbinary.game.layer.AllBinaryTiledLayer_Package; use org.allbinary.game.layer.AllBinaryTiledLayer_Package;
with org.allbinary.game.physics.acceleration.GravityUtil_Package; use org.allbinary.game.physics.acceleration.GravityUtil_Package;
with org.allbinary.game.physics.acceleration.GravityUtil_Package_References;
with org.allbinary.game.physics.velocity.VelocityProperties_Package; use org.allbinary.game.physics.velocity.VelocityProperties_Package;
with org.allbinary.game.physics.velocity.VelocityProperties_Package_References;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References;
with org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References;
with org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package; use org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package;
with org.allbinary.game.behavior.topview.TopViewCharacterInterface_Package; use org.allbinary.game.behavior.topview.TopViewCharacterInterface_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with javax.microedition.lcdui.Font_Package;
with org.allbinary.graphics.GPoint_Package;
with javax.microedition.lcdui.Graphics_Package;
with org.allbinary.game.identification.Group_Package;
with javax.microedition.lcdui.Image_Package;
with org.allbinary.game.behavior.topview.InitialJumpBehavior_Package;
with org.allbinary.layer.Layer_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.graphics.Rectangle_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.allbinary.game.behavior.topview.TopViewCharacterInterface_Package;
with org.allbinary.game.behavior.topview.TopViewGameLayerBehavior_Package;
with org.allbinary.view.ViewPositionBase_Package;
with org.allbinary.view.event.ViewPositionEvent_Package;

package body org.allbinary.game.behavior.topview.GeographicMapTopViewGameLayerBehavior2_Package is

   package AllBinaryTiledLayer_Package renames Standard.org.allbinary.game.layer.AllBinaryTiledLayer_Package;
   package SimpleGeographicMapCellPositionFactory_Package renames Standard.org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package;
   subtype MultiGeographicMapBehavior_Access is org.allbinary.media.graphics.geography.map.MultiGeographicMapBehavior_Package_References.MultiGeographicMapBehavior_Access;
   function "=" (Left, Right : MultiGeographicMapBehavior_Access) return Boolean renames org.allbinary.media.graphics.geography.map.MultiGeographicMapBehavior_Package_References."=";
   subtype MultiGeographicMapBehavior_Access_Array is org.allbinary.media.graphics.geography.map.MultiGeographicMapBehavior_Package_References.MultiGeographicMapBehavior_Access_Array;
   function "=" (Left, Right : MultiGeographicMapBehavior_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.MultiGeographicMapBehavior_Package_References."=";
   subtype MultiGeographicMapBehavior_Access_Array_Access is org.allbinary.media.graphics.geography.map.MultiGeographicMapBehavior_Package_References.MultiGeographicMapBehavior_Access_Array_Access;
   function "=" (Left, Right : MultiGeographicMapBehavior_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.MultiGeographicMapBehavior_Package_References."=";
   subtype MultiGeographicMapBehavior_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.MultiGeographicMapBehavior_Package_References.MultiGeographicMapBehavior_Access_Array_Access_Array;
   function "=" (Left, Right : MultiGeographicMapBehavior_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.MultiGeographicMapBehavior_Package_References."=";
   subtype MultiGeographicMapBehavior_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.MultiGeographicMapBehavior_Package_References.MultiGeographicMapBehavior_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MultiGeographicMapBehavior_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.MultiGeographicMapBehavior_Package_References."=";
   subtype GravityUtil_Access is org.allbinary.game.physics.acceleration.GravityUtil_Package_References.GravityUtil_Access;
   function "=" (Left, Right : GravityUtil_Access) return Boolean renames org.allbinary.game.physics.acceleration.GravityUtil_Package_References."=";
   subtype GravityUtil_Access_Array is org.allbinary.game.physics.acceleration.GravityUtil_Package_References.GravityUtil_Access_Array;
   function "=" (Left, Right : GravityUtil_Access_Array) return Boolean renames org.allbinary.game.physics.acceleration.GravityUtil_Package_References."=";
   subtype GravityUtil_Access_Array_Access is org.allbinary.game.physics.acceleration.GravityUtil_Package_References.GravityUtil_Access_Array_Access;
   function "=" (Left, Right : GravityUtil_Access_Array_Access) return Boolean renames org.allbinary.game.physics.acceleration.GravityUtil_Package_References."=";
   subtype GravityUtil_Access_Array_Access_Array is org.allbinary.game.physics.acceleration.GravityUtil_Package_References.GravityUtil_Access_Array_Access_Array;
   function "=" (Left, Right : GravityUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.game.physics.acceleration.GravityUtil_Package_References."=";
   subtype GravityUtil_Access_Array_Access_Array_Access is org.allbinary.game.physics.acceleration.GravityUtil_Package_References.GravityUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GravityUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.physics.acceleration.GravityUtil_Package_References."=";
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
   procedure Initialize_Fields (This : in out GeographicMapTopViewGameLayerBehavior2'Class) is
   begin
      null;
      This.gravityUtil := GravityUtil_Package.getInstance;
      This.geographicMapBehavior := MultiGeographicMapBehavior_Package.Create;
      
      
      This.previousGeographicMapCellPosition := GeographicMapCellPosition_Access (SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
   end Initialize_Fields;


   procedure Initialize (This : in out GeographicMapTopViewGameLayerBehavior2'Class; maxGravityActionIndex : Integer; autoStepBlocks : Boolean; offsetY : Integer) is
   begin
        GeographicMapTopViewLayerBehavior_Package.Initialize (This, maxGravityActionIndex);
        Initialize_Fields (This);
        This.autoStepBlocks := autoStepBlocks;
        This.offsetY := offsetY;
   end Initialize;

   function Create (maxGravityActionIndex : Integer; autoStepBlocks : Boolean; offsetY : Integer) return GeographicMapTopViewGameLayerBehavior2_Access is
      This : constant GeographicMapTopViewGameLayerBehavior2_Access := new GeographicMapTopViewGameLayerBehavior2;
   begin
      GeographicMapTopViewGameLayerBehavior2_Package.Initialize (This.all, maxGravityActionIndex, autoStepBlocks, offsetY);
      return This;
   end Create;

   --  throws Exception
   procedure gravity (This : in out GeographicMapTopViewGameLayerBehavior2; velocityProperties_Param : access VelocityProperties_Package.VelocityProperties'Class; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is
      velocityProperties : constant VelocityProperties_Access := VelocityProperties_Access (velocityProperties_Param);
      geographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (geographicMapCellPosition_Param);
      hasSolidBlock : Boolean;
   begin
        if (Java_Object_Access (geographicMapCellPosition)) /= (Java_Object_Access (SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION)) then
            This.geographicMapBehavior.getCellTypeAt (geographicMapInterfaceArray, geographicMapCellTypeArray, geographicMapCellPosition);
            hasSolidBlock := GeographicMapTopViewGameLayerBehavior2'Class (This).hasSolidBlock (geographicMapInterfaceArray, geographicMapCellTypeArray);
            if not (hasSolidBlock) then
                This.gravityUtil.process (velocityProperties, This.gravityUtil.GAME_GRAVITY_VELOCITY);
                velocityProperties.limitXYToForwardAndReverseMaxVelocity;
                GeographicMapTopViewGameLayerBehavior2'Class (This).gravity;
            else
                null;
            end if;
        end if;
   end gravity;

   --  throws Exception
   function getPositionTopLeft (This : in out GeographicMapTopViewGameLayerBehavior2; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; x : Integer; y : Integer) return GeographicMapCellPosition_Access is
      layer : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layer_Param);
      xCellPosition : Integer;
      yCellPosition : Integer;
   begin
        xCellPosition := (layer.getXP) + (-(x));
        yCellPosition := (layer.getYP) + (-(y));
        return geographicMapInterfaceArray (0).getCellPositionAtXYNoThrow (xCellPosition, yCellPosition);
   end getPositionTopLeft;

   --  throws Exception
   function getPositionTopRight (This : in out GeographicMapTopViewGameLayerBehavior2; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; x : Integer; y : Integer) return GeographicMapCellPosition_Access is
      layer : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layer_Param);
      xCellPosition : Integer;
      yCellPosition : Integer;
   begin
        xCellPosition := ((layer.getXP) + (-(x))) + (layer.getWidth);
        yCellPosition := (layer.getYP) + (-(y));
        return geographicMapInterfaceArray (0).getCellPositionAtXYNoThrow (xCellPosition, yCellPosition);
   end getPositionTopRight;

   --  throws Exception
   function getPositionBottomLeft (This : in out GeographicMapTopViewGameLayerBehavior2; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; x : Integer; y : Integer) return GeographicMapCellPosition_Access is
      layer : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layer_Param);
      xCellPosition : Integer;
      yCellPosition : Integer;
   begin
        xCellPosition := (layer.getXP) + (-(x));
        yCellPosition := ((layer.getYP) + (-(y))) + (layer.getHeight);
        return geographicMapInterfaceArray (0).getCellPositionAtXYNoThrow (xCellPosition, yCellPosition);
   end getPositionBottomLeft;

   --  throws Exception
   function getPositionBottomRight (This : in out GeographicMapTopViewGameLayerBehavior2; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; x : Integer; y : Integer) return GeographicMapCellPosition_Access is
      layer : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layer_Param);
      xCellPosition : Integer;
      yCellPosition : Integer;
   begin
        xCellPosition := ((layer.getXP) + (-(x))) + (layer.getWidth);
        yCellPosition := ((layer.getYP) + (-(y))) + (layer.getHeight);
        return geographicMapInterfaceArray (0).getCellPositionAtXYNoThrow (xCellPosition, yCellPosition);
   end getPositionBottomRight;

   --  throws Exception
   function getLeftPosition (This : in out GeographicMapTopViewGameLayerBehavior2; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) return GeographicMapCellPosition_Access is
      layer : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layer_Param);
      xCellPosition : Integer;
      yCellPosition : Integer;
   begin
        xCellPosition := layer.getXP;
        yCellPosition := (layer.getYP) + (layer.getHeight);
        return geographicMapInterfaceArray (0).getCellPositionAtXYNoThrow (xCellPosition, yCellPosition);
   end getLeftPosition;

   --  throws Exception
   function getRightPosition (This : in out GeographicMapTopViewGameLayerBehavior2; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) return GeographicMapCellPosition_Access is
      layer : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layer_Param);
      xCellPosition : Integer;
      yCellPosition : Integer;
   begin
        xCellPosition := (layer.getXP) + (layer.getWidth);
        yCellPosition := (layer.getYP) + (layer.getHeight);
        return geographicMapInterfaceArray (0).getCellPositionAtXYNoThrow (xCellPosition, yCellPosition);
   end getRightPosition;

   --  throws Exception
   function getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation (This : in out GeographicMapTopViewGameLayerBehavior2; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; velocityProperties_Param : access VelocityProperties_Package.VelocityProperties'Class; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; x : Integer; y : Integer) return GeographicMapCellPosition_Access is
      velocityProperties : constant VelocityProperties_Access := VelocityProperties_Access (velocityProperties_Param);
      layer : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layer_Param);
      geographicMapCellPosition : GeographicMapCellPosition_Access;
      topLeftGeographicMapCellPosition : GeographicMapCellPosition_Access;
      topRightGeographicMapCellPosition : GeographicMapCellPosition_Access;
      bottomLeftGeographicMapCellPosition : GeographicMapCellPosition_Access;
      bottomRightGeographicMapCellPosition : GeographicMapCellPosition_Access;
   begin
        geographicMapCellPosition := GeographicMapCellPosition_Access (SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
        topLeftGeographicMapCellPosition := GeographicMapTopViewGameLayerBehavior2'Class (This).getPositionTopLeft (geographicMapInterfaceArray, layer, x, y);
        geographicMapCellPosition := GeographicMapTopViewGameLayerBehavior2'Class (This).getGeographicMapCellPositionIfNotSolidBlockOrOffMap (geographicMapInterfaceArray, geographicMapCellTypeArray, topLeftGeographicMapCellPosition, velocityProperties, layer);
        if (Java_Object_Access (geographicMapCellPosition)) = (Java_Object_Access (SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION)) then
            return GeographicMapCellPosition_Access (SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
        end if;
        topRightGeographicMapCellPosition := GeographicMapTopViewGameLayerBehavior2'Class (This).getPositionTopRight (geographicMapInterfaceArray, layer, x, y);
        geographicMapCellPosition := GeographicMapTopViewGameLayerBehavior2'Class (This).getGeographicMapCellPositionIfNotSolidBlockOrOffMap (geographicMapInterfaceArray, geographicMapCellTypeArray, topRightGeographicMapCellPosition, velocityProperties, layer);
        if (Java_Object_Access (geographicMapCellPosition)) = (Java_Object_Access (SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION)) then
            return GeographicMapCellPosition_Access (SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
        end if;
        bottomLeftGeographicMapCellPosition := GeographicMapTopViewGameLayerBehavior2'Class (This).getPositionBottomLeft (geographicMapInterfaceArray, layer, x, y);
        geographicMapCellPosition := GeographicMapTopViewGameLayerBehavior2'Class (This).getGeographicMapCellPositionIfNotSolidBlockOrOffMap (geographicMapInterfaceArray, geographicMapCellTypeArray, bottomLeftGeographicMapCellPosition, velocityProperties, layer);
        if (Java_Object_Access (geographicMapCellPosition)) = (Java_Object_Access (SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION)) then
            return GeographicMapCellPosition_Access (SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
        end if;
        bottomRightGeographicMapCellPosition := GeographicMapTopViewGameLayerBehavior2'Class (This).getPositionBottomRight (geographicMapInterfaceArray, layer, x, y);
        geographicMapCellPosition := GeographicMapTopViewGameLayerBehavior2'Class (This).getGeographicMapCellPositionIfNotSolidBlockOrOffMap (geographicMapInterfaceArray, geographicMapCellTypeArray, bottomRightGeographicMapCellPosition, velocityProperties, layer);
        if (Java_Object_Access (geographicMapCellPosition)) = (Java_Object_Access (SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION)) then
            null;
        else
            null;
        end if;
        return geographicMapCellPosition;
   end getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation;

   --  throws Exception
   function getGeographicMapCellPositionIfNotSolidBlockOrOffMap (This : in out GeographicMapTopViewGameLayerBehavior2; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; velocityProperties_Param : access VelocityProperties_Package.VelocityProperties'Class; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) return GeographicMapCellPosition_Access is
      geographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (geographicMapCellPosition_Param);
      velocityProperties : constant VelocityProperties_Access := VelocityProperties_Access (velocityProperties_Param);
      layer : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layer_Param);
      possibleStepGeographicMapCellPosition : GeographicMapCellPosition_Access;
      tiledLayer : AllBinaryTiledLayer_Access;
      hasSolidBlock : Boolean;
      hasOffMap : Boolean;
   begin
        if (Java_Object_Access (geographicMapCellPosition)) /= (Java_Object_Access (SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION)) then
            possibleStepGeographicMapCellPosition := geographicMapCellPosition;
            tiledLayer := geographicMapInterfaceArray (0).getAllBinaryTiledLayer;
            if ((((possibleStepGeographicMapCellPosition.getColumn) > (0)) and then ((possibleStepGeographicMapCellPosition.getRow) > (0))) and then ((possibleStepGeographicMapCellPosition.getColumn) < (tiledLayer.getColumns))) and then ((possibleStepGeographicMapCellPosition.getRow) < (tiledLayer.getRows)) then
                This.geographicMapBehavior.getCellTypeAt (geographicMapInterfaceArray, geographicMapCellTypeArray, possibleStepGeographicMapCellPosition);
                hasSolidBlock := GeographicMapTopViewGameLayerBehavior2'Class (This).hasSolidBlock (geographicMapInterfaceArray, geographicMapCellTypeArray);
                hasOffMap := GeographicMapTopViewGameLayerBehavior2'Class (This).isOffMap (geographicMapInterfaceArray, geographicMapCellTypeArray);
                if (hasSolidBlock) or else (hasOffMap) then
                    This.previousGeographicMapCellPosition := GeographicMapCellPosition_Access (SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
                    return GeographicMapCellPosition_Access (SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
                else
                    This.previousGeographicMapCellPosition := possibleStepGeographicMapCellPosition;
                    return possibleStepGeographicMapCellPosition;
                end if;
            end if;
        else
            null;
        end if;
        This.previousGeographicMapCellPosition := GeographicMapCellPosition_Access (SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
        return GeographicMapCellPosition_Access (SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
   end getGeographicMapCellPositionIfNotSolidBlockOrOffMap;

   --  throws Exception
   procedure moveAndLand (This : in out GeographicMapTopViewGameLayerBehavior2; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; velocityProperties_Param : access VelocityProperties_Package.VelocityProperties'Class; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; x : Integer; y : Integer) is
      geographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (geographicMapCellPosition_Param);
      velocityProperties : constant VelocityProperties_Access := VelocityProperties_Access (velocityProperties_Param);
      layer : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layer_Param);
      topViewCharacterInterface : TopViewCharacterInterface_Access;
   begin
        if (Java_Object_Access (geographicMapCellPosition)) /= (Java_Object_Access (SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION)) then
            topViewCharacterInterface := (TopViewCharacterInterface_Access (layer));
            topViewCharacterInterface.terrainMove (geographicMapInterfaceArray, geographicMapCellTypeArray, x, y);
        else
            null;
        end if;
   end moveAndLand;

   --  throws Exception
   function move (This : in out GeographicMapTopViewGameLayerBehavior2; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; velocityProperties_Param : access VelocityProperties_Package.VelocityProperties'Class; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; x : Integer; y : Integer) return Boolean is
      velocityProperties : constant VelocityProperties_Access := VelocityProperties_Access (velocityProperties_Param);
      layer : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layer_Param);
      geographicMapCellPosition : GeographicMapCellPosition_Access;
   begin
        geographicMapCellPosition := GeographicMapTopViewGameLayerBehavior2'Class (This).getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation (geographicMapInterfaceArray, geographicMapCellTypeArray, velocityProperties, layer, x, y);
        GeographicMapTopViewGameLayerBehavior2'Class (This).moveAndLand (geographicMapInterfaceArray, geographicMapCellTypeArray, geographicMapCellPosition, velocityProperties, layer, x, y);
        if (Java_Object_Access (geographicMapCellPosition)) = (Java_Object_Access (SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION)) then
            return False;
        else
            return True;
        end if;
   end move;

   --  throws Exception
   procedure left (This : in out GeographicMapTopViewGameLayerBehavior2; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; velocityProperties_Param : access VelocityProperties_Package.VelocityProperties'Class; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) is
      velocityProperties : constant VelocityProperties_Access := VelocityProperties_Access (velocityProperties_Param);
      layer : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layer_Param);
      geographicMapCellPosition : GeographicMapCellPosition_Access;
      possibleStepGeographicMapCellPosition : GeographicMapCellPosition_Access;
      hasSolidBlock : Boolean;
      topViewCharacterInterface : TopViewCharacterInterface_Access;
   begin
        geographicMapCellPosition := GeographicMapTopViewGameLayerBehavior2'Class (This).getLeftPosition (geographicMapInterfaceArray, layer);
        if (Java_Object_Access (geographicMapCellPosition)) /= (Java_Object_Access (SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION)) then
            possibleStepGeographicMapCellPosition := geographicMapInterfaceArray (0).getGeographicMapCellPositionFactory.getAt (geographicMapCellPosition.getColumn, (geographicMapCellPosition.getRow) - (1));
            This.geographicMapBehavior.getCellTypeAt (geographicMapInterfaceArray, geographicMapCellTypeArray, possibleStepGeographicMapCellPosition);
            hasSolidBlock := GeographicMapTopViewGameLayerBehavior2'Class (This).hasSolidBlock (geographicMapInterfaceArray, geographicMapCellTypeArray);
            if hasSolidBlock then
                if This.autoStepBlocks then
                    topViewCharacterInterface := (TopViewCharacterInterface_Access (layer));
                    topViewCharacterInterface.leftp;
                else
                    velocityProperties.getVelocityXBasicDecimalP.setint (0);
                end if;
            else
                topViewCharacterInterface := (TopViewCharacterInterface_Access (layer));
                topViewCharacterInterface.leftp;
            end if;
        end if;
   end left;

   --  throws Exception
   procedure right (This : in out GeographicMapTopViewGameLayerBehavior2; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; velocityProperties_Param : access VelocityProperties_Package.VelocityProperties'Class; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) is
      velocityProperties : constant VelocityProperties_Access := VelocityProperties_Access (velocityProperties_Param);
      layer : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layer_Param);
      geographicMapCellPosition : GeographicMapCellPosition_Access;
      possibleStepGeographicMapCellPosition : GeographicMapCellPosition_Access;
      hasSolidBlock : Boolean;
      topViewCharacterInterface : TopViewCharacterInterface_Access;
   begin
        geographicMapCellPosition := GeographicMapTopViewGameLayerBehavior2'Class (This).getRightPosition (geographicMapInterfaceArray, layer);
        if (Java_Object_Access (geographicMapCellPosition)) /= (Java_Object_Access (SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION)) then
            possibleStepGeographicMapCellPosition := geographicMapInterfaceArray (0).getGeographicMapCellPositionFactory.getAt (geographicMapCellPosition.getColumn, (geographicMapCellPosition.getRow) - (1));
            This.geographicMapBehavior.getCellTypeAt (geographicMapInterfaceArray, geographicMapCellTypeArray, possibleStepGeographicMapCellPosition);
            hasSolidBlock := GeographicMapTopViewGameLayerBehavior2'Class (This).hasSolidBlock (geographicMapInterfaceArray, geographicMapCellTypeArray);
            if hasSolidBlock then
                if This.autoStepBlocks then
                    topViewCharacterInterface := (TopViewCharacterInterface_Access (layer));
                    topViewCharacterInterface.rightp;
                else
                    velocityProperties.getVelocityXBasicDecimalP.setint (0);
                end if;
            else
                topViewCharacterInterface := (TopViewCharacterInterface_Access (layer));
                topViewCharacterInterface.rightp;
            end if;
        end if;
   end right;

   procedure getPositionTopLeft (This : in out GeographicMapTopViewGameLayerBehavior2; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; x : Integer; y : Integer) is
      Java_Result : constant GeographicMapCellPosition_Access := GeographicMapTopViewGameLayerBehavior2'Class (This).getPositionTopLeft (geographicMapInterfaceArray => geographicMapInterfaceArray, layer_Param => layer_Param, x => x, y => y);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPositionTopLeft;

   procedure getPositionTopRight (This : in out GeographicMapTopViewGameLayerBehavior2; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; x : Integer; y : Integer) is
      Java_Result : constant GeographicMapCellPosition_Access := GeographicMapTopViewGameLayerBehavior2'Class (This).getPositionTopRight (geographicMapInterfaceArray => geographicMapInterfaceArray, layer_Param => layer_Param, x => x, y => y);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPositionTopRight;

   procedure getPositionBottomLeft (This : in out GeographicMapTopViewGameLayerBehavior2; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; x : Integer; y : Integer) is
      Java_Result : constant GeographicMapCellPosition_Access := GeographicMapTopViewGameLayerBehavior2'Class (This).getPositionBottomLeft (geographicMapInterfaceArray => geographicMapInterfaceArray, layer_Param => layer_Param, x => x, y => y);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPositionBottomLeft;

   procedure getPositionBottomRight (This : in out GeographicMapTopViewGameLayerBehavior2; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; x : Integer; y : Integer) is
      Java_Result : constant GeographicMapCellPosition_Access := GeographicMapTopViewGameLayerBehavior2'Class (This).getPositionBottomRight (geographicMapInterfaceArray => geographicMapInterfaceArray, layer_Param => layer_Param, x => x, y => y);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPositionBottomRight;

   procedure getLeftPosition (This : in out GeographicMapTopViewGameLayerBehavior2; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) is
      Java_Result : constant GeographicMapCellPosition_Access := GeographicMapTopViewGameLayerBehavior2'Class (This).getLeftPosition (geographicMapInterfaceArray => geographicMapInterfaceArray, layer_Param => layer_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getLeftPosition;

   procedure getRightPosition (This : in out GeographicMapTopViewGameLayerBehavior2; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) is
      Java_Result : constant GeographicMapCellPosition_Access := GeographicMapTopViewGameLayerBehavior2'Class (This).getRightPosition (geographicMapInterfaceArray => geographicMapInterfaceArray, layer_Param => layer_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRightPosition;

   procedure getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation (This : in out GeographicMapTopViewGameLayerBehavior2; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; velocityProperties_Param : access VelocityProperties_Package.VelocityProperties'Class; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; x : Integer; y : Integer) is
      Java_Result : constant GeographicMapCellPosition_Access := GeographicMapTopViewGameLayerBehavior2'Class (This).getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation (geographicMapInterfaceArray => geographicMapInterfaceArray, geographicMapCellTypeArray => geographicMapCellTypeArray, velocityProperties_Param => velocityProperties_Param, layer_Param => layer_Param, x => x, y => y);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation;

   procedure getGeographicMapCellPositionIfNotSolidBlockOrOffMap (This : in out GeographicMapTopViewGameLayerBehavior2; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; velocityProperties_Param : access VelocityProperties_Package.VelocityProperties'Class; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) is
      Java_Result : constant GeographicMapCellPosition_Access := GeographicMapTopViewGameLayerBehavior2'Class (This).getGeographicMapCellPositionIfNotSolidBlockOrOffMap (geographicMapInterfaceArray => geographicMapInterfaceArray, geographicMapCellTypeArray => geographicMapCellTypeArray, geographicMapCellPosition_Param => geographicMapCellPosition_Param, velocityProperties_Param => velocityProperties_Param, layer_Param => layer_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getGeographicMapCellPositionIfNotSolidBlockOrOffMap;

   procedure move (This : in out GeographicMapTopViewGameLayerBehavior2; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; velocityProperties_Param : access VelocityProperties_Package.VelocityProperties'Class; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; x : Integer; y : Integer) is
      Java_Result : constant Boolean := GeographicMapTopViewGameLayerBehavior2'Class (This).move (geographicMapInterfaceArray => geographicMapInterfaceArray, geographicMapCellTypeArray => geographicMapCellTypeArray, velocityProperties_Param => velocityProperties_Param, layer_Param => layer_Param, x => x, y => y);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end move;

end org.allbinary.game.behavior.topview.GeographicMapTopViewGameLayerBehavior2_Package;


