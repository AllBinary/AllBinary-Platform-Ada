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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References;
with org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References;
with org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package; use org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package;
with org.allbinary.game.behavior.topview.TopViewCharacterInterface_Package; use org.allbinary.game.behavior.topview.TopViewCharacterInterface_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.math.Angle_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.logic.math.vector.AxisMathVectorUtil_Package;
with org.allbinary.game.physics.acceleration.BasicAccelerationProperties_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.logic.math.BasicDecimal_Package;
with org.allbinary.game.physics.velocity.BasicVelocityProperties_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.direction.Direction_Package;
with org.allbinary.direction.DirectionUtil_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with javax.microedition.lcdui.Font_Package;
with org.allbinary.graphics.GPoint_Package;
with org.allbinary.game.layer.behavior.GameLayerBehavior_Package;
with javax.microedition.lcdui.Graphics_Package;
with org.allbinary.game.identification.Group_Package;
with javax.microedition.lcdui.Image_Package;
with org.allbinary.game.behavior.topview.InitialJumpBehavior_Package;
with org.allbinary.layer.Layer_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.math.NoDecimalTrigTable_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.graphics.Rectangle_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.allbinary.game.behavior.topview.TopViewCharacterInterface_Package;
with org.allbinary.game.behavior.topview.TopViewGameLayerBehavior_Package;
with org.allbinary.view.ViewPositionBase_Package;
with org.allbinary.view.event.ViewPositionEvent_Package;

package body org.allbinary.game.behavior.topview.GeographicMapTopViewGameLayerBehavior1_Package is

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
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
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
   procedure Initialize_Fields (This : in out GeographicMapTopViewGameLayerBehavior1'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.gravityUtil := GravityUtil_Package.getInstance;
      This.geographicMapBehavior := MultiGeographicMapBehavior_Package.Create;
      
      
      This.previousGeographicMapCellPosition := GeographicMapCellPosition_Access (SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
   end Initialize_Fields;


   procedure Initialize (This : in out GeographicMapTopViewGameLayerBehavior1'Class; maxGravityActionIndex : Integer; autoStepBlocks : Boolean; offsetY : Integer) is
   begin
        GeographicMapTopViewLayerBehavior_Package.Initialize (This, maxGravityActionIndex);
        Initialize_Fields (This);
        This.autoStepBlocks := autoStepBlocks;
        This.offsetY := offsetY;
   end Initialize;

   function Create (maxGravityActionIndex : Integer; autoStepBlocks : Boolean; offsetY : Integer) return GeographicMapTopViewGameLayerBehavior1_Access is
      This : constant GeographicMapTopViewGameLayerBehavior1_Access := new GeographicMapTopViewGameLayerBehavior1;
   begin
      GeographicMapTopViewGameLayerBehavior1_Package.Initialize (This.all, maxGravityActionIndex, autoStepBlocks, offsetY);
      return This;
   end Create;

   --  throws Exception
   procedure gravity (This : in out GeographicMapTopViewGameLayerBehavior1; velocityProperties_Param : access VelocityProperties_Package.VelocityProperties'Class; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is
      velocityProperties : constant VelocityProperties_Access := VelocityProperties_Access (velocityProperties_Param);
      geographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (geographicMapCellPosition_Param);
      hasSolidBlock : Boolean;
   begin
        if (Java_Object_Access (geographicMapCellPosition)) /= (Java_Object_Access (SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION)) then
            This.geographicMapBehavior.getCellTypeAt (geographicMapInterfaceArray, geographicMapCellTypeArray, geographicMapCellPosition);
            hasSolidBlock := GeographicMapTopViewGameLayerBehavior1'Class (This).hasSolidBlock (geographicMapInterfaceArray, geographicMapCellTypeArray);
            if not (hasSolidBlock) then
                This.gravityUtil.process (velocityProperties, This.gravityUtil.GAME_GRAVITY_VELOCITY);
                velocityProperties.limitXYToForwardAndReverseMaxVelocity;
                GeographicMapTopViewGameLayerBehavior1'Class (This).gravity;
            else
                null;
            end if;
        end if;
   end gravity;

   --  throws Exception
   function getPosition (This : in out GeographicMapTopViewGameLayerBehavior1; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; x : Integer; y : Integer) return GeographicMapCellPosition_Access is
      layer : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layer_Param);
      xCellPosition : Integer;
      yCellPosition : Integer;
   begin
        xCellPosition := ((layer.getXP) + (-(x))) + (layer.getWidth);
        yCellPosition := ((layer.getYP) + (-(y))) + (layer.getHeight);
        return geographicMapInterfaceArray (0).getCellPositionAtXYNoThrow (xCellPosition, yCellPosition);
   end getPosition;

   --  throws Exception
   function getLeftPosition (This : in out GeographicMapTopViewGameLayerBehavior1; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) return GeographicMapCellPosition_Access is
      layer : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layer_Param);
      xCellPosition : Integer;
      yCellPosition : Integer;
   begin
        xCellPosition := layer.getXP;
        yCellPosition := (layer.getYP) + (layer.getHeight);
        return geographicMapInterfaceArray (0).getCellPositionAtXYNoThrow (xCellPosition, yCellPosition);
   end getLeftPosition;

   --  throws Exception
   function getRightPosition (This : in out GeographicMapTopViewGameLayerBehavior1; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) return GeographicMapCellPosition_Access is
      layer : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layer_Param);
      xCellPosition : Integer;
      yCellPosition : Integer;
   begin
        xCellPosition := (layer.getXP) + (layer.getWidth);
        yCellPosition := (layer.getYP) + (layer.getHeight);
        return geographicMapInterfaceArray (0).getCellPositionAtXYNoThrow (xCellPosition, yCellPosition);
   end getRightPosition;

   --  throws Exception
   function getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation (This : in out GeographicMapTopViewGameLayerBehavior1; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; velocityProperties_Param : access VelocityProperties_Package.VelocityProperties'Class; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; x : Integer; y : Integer) return GeographicMapCellPosition_Access is
      velocityProperties : constant VelocityProperties_Access := VelocityProperties_Access (velocityProperties_Param);
      layer : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layer_Param);
      geographicMapCellPosition : GeographicMapCellPosition_Access;
      possibleStepGeographicMapCellPosition : GeographicMapCellPosition_Access;
      tiledLayer : AllBinaryTiledLayer_Access;
      hasSolidBlock : Boolean;
   begin
        geographicMapCellPosition := GeographicMapTopViewGameLayerBehavior1'Class (This).getPosition (geographicMapInterfaceArray, layer, x, y);
        if ((This.previousGeographicMapCellPosition) /= (geographicMapCellPosition)) and then ((Java_Object_Access (geographicMapCellPosition)) /= (Java_Object_Access (SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION))) then
            possibleStepGeographicMapCellPosition := geographicMapCellPosition;
            tiledLayer := geographicMapInterfaceArray (0).getAllBinaryTiledLayer;
            if ((((possibleStepGeographicMapCellPosition.getColumn) > (0)) and then ((possibleStepGeographicMapCellPosition.getRow) > (0))) and then ((possibleStepGeographicMapCellPosition.getColumn) < (tiledLayer.getColumns))) and then ((possibleStepGeographicMapCellPosition.getRow) < (tiledLayer.getRows)) then
                This.geographicMapBehavior.getCellTypeAt (geographicMapInterfaceArray, geographicMapCellTypeArray, possibleStepGeographicMapCellPosition);
                hasSolidBlock := GeographicMapTopViewGameLayerBehavior1'Class (This).hasSolidBlock (geographicMapInterfaceArray, geographicMapCellTypeArray);
                if hasSolidBlock then
                    velocityProperties.getVelocityXBasicDecimalP.setint (0);
                    This.previousGeographicMapCellPosition := GeographicMapCellPosition_Access (SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
                    return GeographicMapCellPosition_Access (SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
                else
                    This.previousGeographicMapCellPosition := possibleStepGeographicMapCellPosition;
                    return possibleStepGeographicMapCellPosition;
                end if;
            end if;
        end if;
        This.previousGeographicMapCellPosition := GeographicMapCellPosition_Access (SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
        return GeographicMapCellPosition_Access (SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
   end getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation;

   --  throws Exception
   procedure moveAndLand (This : in out GeographicMapTopViewGameLayerBehavior1; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; velocityProperties_Param : access VelocityProperties_Package.VelocityProperties'Class; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; x : Integer; y : Integer) is
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
   function move (This : in out GeographicMapTopViewGameLayerBehavior1; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; velocityProperties_Param : access VelocityProperties_Package.VelocityProperties'Class; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; x : Integer; y : Integer) return Boolean is
      velocityProperties : constant VelocityProperties_Access := VelocityProperties_Access (velocityProperties_Param);
      layer : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layer_Param);
      geographicMapCellPosition : GeographicMapCellPosition_Access;
   begin
        geographicMapCellPosition := GeographicMapTopViewGameLayerBehavior1'Class (This).getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation (geographicMapInterfaceArray, geographicMapCellTypeArray, velocityProperties, layer, x, y);
        GeographicMapTopViewGameLayerBehavior1'Class (This).moveAndLand (geographicMapInterfaceArray, geographicMapCellTypeArray, geographicMapCellPosition, velocityProperties, layer, x, y);
        if (Java_Object_Access (geographicMapCellPosition)) = (Java_Object_Access (SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION)) then
            return False;
        else
            return True;
        end if;
   end move;

   --  throws Exception
   procedure left (This : in out GeographicMapTopViewGameLayerBehavior1; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; velocityProperties_Param : access VelocityProperties_Package.VelocityProperties'Class; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) is
      velocityProperties : constant VelocityProperties_Access := VelocityProperties_Access (velocityProperties_Param);
      layer : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layer_Param);
      geographicMapCellPosition : GeographicMapCellPosition_Access;
      possibleStepGeographicMapCellPosition : GeographicMapCellPosition_Access;
      hasSolidBlock : Boolean;
      topViewCharacterInterface : TopViewCharacterInterface_Access;
   begin
        geographicMapCellPosition := GeographicMapTopViewGameLayerBehavior1'Class (This).getLeftPosition (geographicMapInterfaceArray, layer);
        if (Java_Object_Access (geographicMapCellPosition)) /= (Java_Object_Access (SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION)) then
            possibleStepGeographicMapCellPosition := geographicMapInterfaceArray (0).getGeographicMapCellPositionFactory.getAt (geographicMapCellPosition.getColumn, (geographicMapCellPosition.getRow) - (1));
            This.geographicMapBehavior.getCellTypeAt (geographicMapInterfaceArray, geographicMapCellTypeArray, possibleStepGeographicMapCellPosition);
            hasSolidBlock := GeographicMapTopViewGameLayerBehavior1'Class (This).hasSolidBlock (geographicMapInterfaceArray, geographicMapCellTypeArray);
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
   procedure right (This : in out GeographicMapTopViewGameLayerBehavior1; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; velocityProperties_Param : access VelocityProperties_Package.VelocityProperties'Class; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) is
      velocityProperties : constant VelocityProperties_Access := VelocityProperties_Access (velocityProperties_Param);
      layer : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layer_Param);
      geographicMapCellPosition : GeographicMapCellPosition_Access;
      possibleStepGeographicMapCellPosition : GeographicMapCellPosition_Access;
      hasSolidBlock : Boolean;
      topViewCharacterInterface : TopViewCharacterInterface_Access;
   begin
        geographicMapCellPosition := GeographicMapTopViewGameLayerBehavior1'Class (This).getRightPosition (geographicMapInterfaceArray, layer);
        if (Java_Object_Access (geographicMapCellPosition)) /= (Java_Object_Access (SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION)) then
            possibleStepGeographicMapCellPosition := geographicMapInterfaceArray (0).getGeographicMapCellPositionFactory.getAt (geographicMapCellPosition.getColumn, (geographicMapCellPosition.getRow) - (1));
            This.geographicMapBehavior.getCellTypeAt (geographicMapInterfaceArray, geographicMapCellTypeArray, possibleStepGeographicMapCellPosition);
            hasSolidBlock := GeographicMapTopViewGameLayerBehavior1'Class (This).hasSolidBlock (geographicMapInterfaceArray, geographicMapCellTypeArray);
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

   procedure getPosition (This : in out GeographicMapTopViewGameLayerBehavior1; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; x : Integer; y : Integer) is
      Java_Result : constant GeographicMapCellPosition_Access := GeographicMapTopViewGameLayerBehavior1'Class (This).getPosition (geographicMapInterfaceArray => geographicMapInterfaceArray, layer_Param => layer_Param, x => x, y => y);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPosition;

   procedure getLeftPosition (This : in out GeographicMapTopViewGameLayerBehavior1; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) is
      Java_Result : constant GeographicMapCellPosition_Access := GeographicMapTopViewGameLayerBehavior1'Class (This).getLeftPosition (geographicMapInterfaceArray => geographicMapInterfaceArray, layer_Param => layer_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getLeftPosition;

   procedure getRightPosition (This : in out GeographicMapTopViewGameLayerBehavior1; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) is
      Java_Result : constant GeographicMapCellPosition_Access := GeographicMapTopViewGameLayerBehavior1'Class (This).getRightPosition (geographicMapInterfaceArray => geographicMapInterfaceArray, layer_Param => layer_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRightPosition;

   procedure getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation (This : in out GeographicMapTopViewGameLayerBehavior1; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; velocityProperties_Param : access VelocityProperties_Package.VelocityProperties'Class; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; x : Integer; y : Integer) is
      Java_Result : constant GeographicMapCellPosition_Access := GeographicMapTopViewGameLayerBehavior1'Class (This).getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation (geographicMapInterfaceArray => geographicMapInterfaceArray, geographicMapCellTypeArray => geographicMapCellTypeArray, velocityProperties_Param => velocityProperties_Param, layer_Param => layer_Param, x => x, y => y);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation;

   procedure move (This : in out GeographicMapTopViewGameLayerBehavior1; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; velocityProperties_Param : access VelocityProperties_Package.VelocityProperties'Class; layer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; x : Integer; y : Integer) is
      Java_Result : constant Boolean := GeographicMapTopViewGameLayerBehavior1'Class (This).move (geographicMapInterfaceArray => geographicMapInterfaceArray, geographicMapCellTypeArray => geographicMapCellTypeArray, velocityProperties_Param => velocityProperties_Param, layer_Param => layer_Param, x => x, y => y);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end move;

end org.allbinary.game.behavior.topview.GeographicMapTopViewGameLayerBehavior1_Package;


