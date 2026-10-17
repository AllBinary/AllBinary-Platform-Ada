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


package body org.allbinary.game.behavior.topview.GeographicMapTopViewGameLayerBehavior2_Package is

   procedure Initialize_Fields (This : in out GeographicMapTopViewGameLayerBehavior2'Class) is
   begin
      null;
      This.gravityUtil := GravityUtil_Package.getInstance;
      This.geographicMapBehavior := MultiGeographicMapBehavior_Package.Create;
      
      
      This.previousGeographicMapCellPosition := SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION;
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
   procedure gravity (This : in out GeographicMapTopViewGameLayerBehavior2; velocityProperties_Param : access VelocityProperties'Class; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; geographicMapCellPosition_Param : access GeographicMapCellPosition'Class) is
      velocityProperties : VelocityProperties_Access := VelocityProperties_Access (velocityProperties_Param);
      geographicMapCellPosition : GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (geographicMapCellPosition_Param);
      hasSolidBlock : Boolean;
   begin
        if (geographicMapCellPosition) /= (SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION) then
            This.geographicMapBehavior.getCellTypeAt (geographicMapInterfaceArray, geographicMapCellTypeArray, geographicMapCellPosition);
            hasSolidBlock := This.hasSolidBlock (geographicMapInterfaceArray, geographicMapCellTypeArray);
            if not (hasSolidBlock) then
                This.gravityUtil.process (velocityProperties, This.gravityUtil.GAME_GRAVITY_VELOCITY);
                velocityProperties.limitXYToForwardAndReverseMaxVelocity;
                This.gravity;
            else
                null;
            end if;
        end if;
   end gravity;

   --  throws Exception
   function getPositionTopLeft (This : in out GeographicMapTopViewGameLayerBehavior2; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; layer_Param : access AllBinaryLayer'Class; x : Integer; y : Integer) return GeographicMapCellPosition_Access is
      layer : AllBinaryLayer_Access := AllBinaryLayer_Access (layer_Param);
      xCellPosition : Integer;
      yCellPosition : Integer;
   begin
        xCellPosition := (layer.getXP) + (-(x));
        yCellPosition := (layer.getYP) + (-(y));
        return geographicMapInterfaceArray (0).getCellPositionAtXYNoThrow (xCellPosition, yCellPosition);
   end getPositionTopLeft;

   --  throws Exception
   function getPositionTopRight (This : in out GeographicMapTopViewGameLayerBehavior2; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; layer_Param : access AllBinaryLayer'Class; x : Integer; y : Integer) return GeographicMapCellPosition_Access is
      layer : AllBinaryLayer_Access := AllBinaryLayer_Access (layer_Param);
      xCellPosition : Integer;
      yCellPosition : Integer;
   begin
        xCellPosition := ((layer.getXP) + (-(x))) + (layer.getWidth);
        yCellPosition := (layer.getYP) + (-(y));
        return geographicMapInterfaceArray (0).getCellPositionAtXYNoThrow (xCellPosition, yCellPosition);
   end getPositionTopRight;

   --  throws Exception
   function getPositionBottomLeft (This : in out GeographicMapTopViewGameLayerBehavior2; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; layer_Param : access AllBinaryLayer'Class; x : Integer; y : Integer) return GeographicMapCellPosition_Access is
      layer : AllBinaryLayer_Access := AllBinaryLayer_Access (layer_Param);
      xCellPosition : Integer;
      yCellPosition : Integer;
   begin
        xCellPosition := (layer.getXP) + (-(x));
        yCellPosition := ((layer.getYP) + (-(y))) + (layer.getHeight);
        return geographicMapInterfaceArray (0).getCellPositionAtXYNoThrow (xCellPosition, yCellPosition);
   end getPositionBottomLeft;

   --  throws Exception
   function getPositionBottomRight (This : in out GeographicMapTopViewGameLayerBehavior2; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; layer_Param : access AllBinaryLayer'Class; x : Integer; y : Integer) return GeographicMapCellPosition_Access is
      layer : AllBinaryLayer_Access := AllBinaryLayer_Access (layer_Param);
      xCellPosition : Integer;
      yCellPosition : Integer;
   begin
        xCellPosition := ((layer.getXP) + (-(x))) + (layer.getWidth);
        yCellPosition := ((layer.getYP) + (-(y))) + (layer.getHeight);
        return geographicMapInterfaceArray (0).getCellPositionAtXYNoThrow (xCellPosition, yCellPosition);
   end getPositionBottomRight;

   --  throws Exception
   function getLeftPosition (This : in out GeographicMapTopViewGameLayerBehavior2; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; layer_Param : access AllBinaryLayer'Class) return GeographicMapCellPosition_Access is
      layer : AllBinaryLayer_Access := AllBinaryLayer_Access (layer_Param);
      xCellPosition : Integer;
      yCellPosition : Integer;
   begin
        xCellPosition := layer.getXP;
        yCellPosition := (layer.getYP) + (layer.getHeight);
        return geographicMapInterfaceArray (0).getCellPositionAtXYNoThrow (xCellPosition, yCellPosition);
   end getLeftPosition;

   --  throws Exception
   function getRightPosition (This : in out GeographicMapTopViewGameLayerBehavior2; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; layer_Param : access AllBinaryLayer'Class) return GeographicMapCellPosition_Access is
      layer : AllBinaryLayer_Access := AllBinaryLayer_Access (layer_Param);
      xCellPosition : Integer;
      yCellPosition : Integer;
   begin
        xCellPosition := (layer.getXP) + (layer.getWidth);
        yCellPosition := (layer.getYP) + (layer.getHeight);
        return geographicMapInterfaceArray (0).getCellPositionAtXYNoThrow (xCellPosition, yCellPosition);
   end getRightPosition;

   --  throws Exception
   function getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation (This : in out GeographicMapTopViewGameLayerBehavior2; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; velocityProperties_Param : access VelocityProperties'Class; layer_Param : access AllBinaryLayer'Class; x : Integer; y : Integer) return GeographicMapCellPosition_Access is
      velocityProperties : VelocityProperties_Access := VelocityProperties_Access (velocityProperties_Param);
      layer : AllBinaryLayer_Access := AllBinaryLayer_Access (layer_Param);
      geographicMapCellPosition : GeographicMapCellPosition_Access;
      topLeftGeographicMapCellPosition : GeographicMapCellPosition_Access;
      topRightGeographicMapCellPosition : GeographicMapCellPosition_Access;
      bottomLeftGeographicMapCellPosition : GeographicMapCellPosition_Access;
      bottomRightGeographicMapCellPosition : GeographicMapCellPosition_Access;
   begin
        geographicMapCellPosition := SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION;
        topLeftGeographicMapCellPosition := This.getPositionTopLeft (geographicMapInterfaceArray, layer, x, y);
        geographicMapCellPosition := This.getGeographicMapCellPositionIfNotSolidBlockOrOffMap (geographicMapInterfaceArray, geographicMapCellTypeArray, topLeftGeographicMapCellPosition, velocityProperties, layer);
        if (geographicMapCellPosition) = (SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION) then
            return SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION;
        end if;
        topRightGeographicMapCellPosition := This.getPositionTopRight (geographicMapInterfaceArray, layer, x, y);
        geographicMapCellPosition := This.getGeographicMapCellPositionIfNotSolidBlockOrOffMap (geographicMapInterfaceArray, geographicMapCellTypeArray, topRightGeographicMapCellPosition, velocityProperties, layer);
        if (geographicMapCellPosition) = (SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION) then
            return SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION;
        end if;
        bottomLeftGeographicMapCellPosition := This.getPositionBottomLeft (geographicMapInterfaceArray, layer, x, y);
        geographicMapCellPosition := This.getGeographicMapCellPositionIfNotSolidBlockOrOffMap (geographicMapInterfaceArray, geographicMapCellTypeArray, bottomLeftGeographicMapCellPosition, velocityProperties, layer);
        if (geographicMapCellPosition) = (SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION) then
            return SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION;
        end if;
        bottomRightGeographicMapCellPosition := This.getPositionBottomRight (geographicMapInterfaceArray, layer, x, y);
        geographicMapCellPosition := This.getGeographicMapCellPositionIfNotSolidBlockOrOffMap (geographicMapInterfaceArray, geographicMapCellTypeArray, bottomRightGeographicMapCellPosition, velocityProperties, layer);
        if (geographicMapCellPosition) = (SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION) then
            null;
        else
            null;
        end if;
        return geographicMapCellPosition;
   end getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation;

   --  throws Exception
   function getGeographicMapCellPositionIfNotSolidBlockOrOffMap (This : in out GeographicMapTopViewGameLayerBehavior2; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; geographicMapCellPosition_Param : access GeographicMapCellPosition'Class; velocityProperties_Param : access VelocityProperties'Class; layer_Param : access AllBinaryLayer'Class) return GeographicMapCellPosition_Access is
      geographicMapCellPosition : GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (geographicMapCellPosition_Param);
      velocityProperties : VelocityProperties_Access := VelocityProperties_Access (velocityProperties_Param);
      layer : AllBinaryLayer_Access := AllBinaryLayer_Access (layer_Param);
      possibleStepGeographicMapCellPosition : GeographicMapCellPosition_Access;
      tiledLayer : AllBinaryTiledLayer_Access;
      hasSolidBlock : Boolean;
      hasOffMap : Boolean;
   begin
        if (geographicMapCellPosition) /= (SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION) then
            possibleStepGeographicMapCellPosition := geographicMapCellPosition;
            tiledLayer := geographicMapInterfaceArray (0).getAllBinaryTiledLayer;
            if ((((possibleStepGeographicMapCellPosition.getColumn) > (0)) and then ((possibleStepGeographicMapCellPosition.getRow) > (0))) and then ((possibleStepGeographicMapCellPosition.getColumn) < (tiledLayer.getColumns))) and then ((possibleStepGeographicMapCellPosition.getRow) < (tiledLayer.getRows)) then
                This.geographicMapBehavior.getCellTypeAt (geographicMapInterfaceArray, geographicMapCellTypeArray, possibleStepGeographicMapCellPosition);
                hasSolidBlock := This.hasSolidBlock (geographicMapInterfaceArray, geographicMapCellTypeArray);
                hasOffMap := This.isOffMap (geographicMapInterfaceArray, geographicMapCellTypeArray);
                if (hasSolidBlock) or else (hasOffMap) then
                    This.previousGeographicMapCellPosition := SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION;
                    return SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION;
                else
                    This.previousGeographicMapCellPosition := possibleStepGeographicMapCellPosition;
                    return possibleStepGeographicMapCellPosition;
                end if;
            end if;
        else
            null;
        end if;
        This.previousGeographicMapCellPosition := SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION;
        return SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION;
   end getGeographicMapCellPositionIfNotSolidBlockOrOffMap;

   --  throws Exception
   procedure moveAndLand (This : in out GeographicMapTopViewGameLayerBehavior2; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; geographicMapCellPosition_Param : access GeographicMapCellPosition'Class; velocityProperties_Param : access VelocityProperties'Class; layer_Param : access AllBinaryLayer'Class; x : Integer; y : Integer) is
      geographicMapCellPosition : GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (geographicMapCellPosition_Param);
      velocityProperties : VelocityProperties_Access := VelocityProperties_Access (velocityProperties_Param);
      layer : AllBinaryLayer_Access := AllBinaryLayer_Access (layer_Param);
      topViewCharacterInterface : TopViewCharacterInterface_Access;
   begin
        if (geographicMapCellPosition) /= (SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION) then
            topViewCharacterInterface := (TopViewCharacterInterface_Access (layer));
            topViewCharacterInterface.terrainMove (geographicMapInterfaceArray, geographicMapCellTypeArray, x, y);
        else
            null;
        end if;
   end moveAndLand;

   --  throws Exception
   function move (This : in out GeographicMapTopViewGameLayerBehavior2; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; velocityProperties_Param : access VelocityProperties'Class; layer_Param : access AllBinaryLayer'Class; x : Integer; y : Integer) return Boolean is
      velocityProperties : VelocityProperties_Access := VelocityProperties_Access (velocityProperties_Param);
      layer : AllBinaryLayer_Access := AllBinaryLayer_Access (layer_Param);
      geographicMapCellPosition : GeographicMapCellPosition_Access;
   begin
        geographicMapCellPosition := This.getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation (geographicMapInterfaceArray, geographicMapCellTypeArray, velocityProperties, layer, x, y);
        This.moveAndLand (geographicMapInterfaceArray, geographicMapCellTypeArray, geographicMapCellPosition, velocityProperties, layer, x, y);
        if (geographicMapCellPosition) = (SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION) then
            return False;
        else
            return True;
        end if;
   end move;

   --  throws Exception
   procedure left (This : in out GeographicMapTopViewGameLayerBehavior2; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; velocityProperties_Param : access VelocityProperties'Class; layer_Param : access AllBinaryLayer'Class) is
      velocityProperties : VelocityProperties_Access := VelocityProperties_Access (velocityProperties_Param);
      layer : AllBinaryLayer_Access := AllBinaryLayer_Access (layer_Param);
      geographicMapCellPosition : GeographicMapCellPosition_Access;
      possibleStepGeographicMapCellPosition : GeographicMapCellPosition_Access;
      hasSolidBlock : Boolean;
      topViewCharacterInterface : TopViewCharacterInterface_Access;
   begin
        geographicMapCellPosition := This.getLeftPosition (geographicMapInterfaceArray, layer);
        if (geographicMapCellPosition) /= (SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION) then
            possibleStepGeographicMapCellPosition := geographicMapInterfaceArray (0).getGeographicMapCellPositionFactory.getAt (geographicMapCellPosition.getColumn, (geographicMapCellPosition.getRow) - (1));
            This.geographicMapBehavior.getCellTypeAt (geographicMapInterfaceArray, geographicMapCellTypeArray, possibleStepGeographicMapCellPosition);
            hasSolidBlock := This.hasSolidBlock (geographicMapInterfaceArray, geographicMapCellTypeArray);
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
   procedure right (This : in out GeographicMapTopViewGameLayerBehavior2; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; velocityProperties_Param : access VelocityProperties'Class; layer_Param : access AllBinaryLayer'Class) is
      velocityProperties : VelocityProperties_Access := VelocityProperties_Access (velocityProperties_Param);
      layer : AllBinaryLayer_Access := AllBinaryLayer_Access (layer_Param);
      geographicMapCellPosition : GeographicMapCellPosition_Access;
      possibleStepGeographicMapCellPosition : GeographicMapCellPosition_Access;
      hasSolidBlock : Boolean;
      topViewCharacterInterface : TopViewCharacterInterface_Access;
   begin
        geographicMapCellPosition := This.getRightPosition (geographicMapInterfaceArray, layer);
        if (geographicMapCellPosition) /= (SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION) then
            possibleStepGeographicMapCellPosition := geographicMapInterfaceArray (0).getGeographicMapCellPositionFactory.getAt (geographicMapCellPosition.getColumn, (geographicMapCellPosition.getRow) - (1));
            This.geographicMapBehavior.getCellTypeAt (geographicMapInterfaceArray, geographicMapCellTypeArray, possibleStepGeographicMapCellPosition);
            hasSolidBlock := This.hasSolidBlock (geographicMapInterfaceArray, geographicMapCellTypeArray);
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

   procedure getPositionTopLeft (This : in out GeographicMapTopViewGameLayerBehavior2; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; layer_Param : access AllBinaryLayer'Class; x : Integer; y : Integer) is
      Java_Result : constant GeographicMapCellPosition_Access := GeographicMapTopViewGameLayerBehavior2'Class (This).getPositionTopLeft (geographicMapInterfaceArray, layer_Param, x, y);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPositionTopLeft;

   procedure getPositionTopRight (This : in out GeographicMapTopViewGameLayerBehavior2; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; layer_Param : access AllBinaryLayer'Class; x : Integer; y : Integer) is
      Java_Result : constant GeographicMapCellPosition_Access := GeographicMapTopViewGameLayerBehavior2'Class (This).getPositionTopRight (geographicMapInterfaceArray, layer_Param, x, y);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPositionTopRight;

   procedure getPositionBottomLeft (This : in out GeographicMapTopViewGameLayerBehavior2; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; layer_Param : access AllBinaryLayer'Class; x : Integer; y : Integer) is
      Java_Result : constant GeographicMapCellPosition_Access := GeographicMapTopViewGameLayerBehavior2'Class (This).getPositionBottomLeft (geographicMapInterfaceArray, layer_Param, x, y);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPositionBottomLeft;

   procedure getPositionBottomRight (This : in out GeographicMapTopViewGameLayerBehavior2; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; layer_Param : access AllBinaryLayer'Class; x : Integer; y : Integer) is
      Java_Result : constant GeographicMapCellPosition_Access := GeographicMapTopViewGameLayerBehavior2'Class (This).getPositionBottomRight (geographicMapInterfaceArray, layer_Param, x, y);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPositionBottomRight;

   procedure getLeftPosition (This : in out GeographicMapTopViewGameLayerBehavior2; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; layer_Param : access AllBinaryLayer'Class) is
      Java_Result : constant GeographicMapCellPosition_Access := GeographicMapTopViewGameLayerBehavior2'Class (This).getLeftPosition (geographicMapInterfaceArray, layer_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getLeftPosition;

   procedure getRightPosition (This : in out GeographicMapTopViewGameLayerBehavior2; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; layer_Param : access AllBinaryLayer'Class) is
      Java_Result : constant GeographicMapCellPosition_Access := GeographicMapTopViewGameLayerBehavior2'Class (This).getRightPosition (geographicMapInterfaceArray, layer_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRightPosition;

   procedure getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation (This : in out GeographicMapTopViewGameLayerBehavior2; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; velocityProperties_Param : access VelocityProperties'Class; layer_Param : access AllBinaryLayer'Class; x : Integer; y : Integer) is
      Java_Result : constant GeographicMapCellPosition_Access := GeographicMapTopViewGameLayerBehavior2'Class (This).getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation (geographicMapInterfaceArray, geographicMapCellTypeArray, velocityProperties_Param, layer_Param, x, y);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation;

   procedure getGeographicMapCellPositionIfNotSolidBlockOrOffMap (This : in out GeographicMapTopViewGameLayerBehavior2; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; geographicMapCellPosition_Param : access GeographicMapCellPosition'Class; velocityProperties_Param : access VelocityProperties'Class; layer_Param : access AllBinaryLayer'Class) is
      Java_Result : constant GeographicMapCellPosition_Access := GeographicMapTopViewGameLayerBehavior2'Class (This).getGeographicMapCellPositionIfNotSolidBlockOrOffMap (geographicMapInterfaceArray, geographicMapCellTypeArray, geographicMapCellPosition_Param, velocityProperties_Param, layer_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getGeographicMapCellPositionIfNotSolidBlockOrOffMap;

   procedure move (This : in out GeographicMapTopViewGameLayerBehavior2; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; velocityProperties_Param : access VelocityProperties'Class; layer_Param : access AllBinaryLayer'Class; x : Integer; y : Integer) is
      Java_Result : constant Boolean := GeographicMapTopViewGameLayerBehavior2'Class (This).move (geographicMapInterfaceArray, geographicMapCellTypeArray, velocityProperties_Param, layer_Param, x, y);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end move;

end org.allbinary.game.behavior.topview.GeographicMapTopViewGameLayerBehavior2_Package;


