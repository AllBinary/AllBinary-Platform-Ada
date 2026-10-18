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


with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.logic.communication.log.ForcedLogUtil_Package; use org.allbinary.logic.communication.log.ForcedLogUtil_Package;
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.PointFactory_Package; use org.allbinary.graphics.PointFactory_Package;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.graphics.color.ColorCompositeInterface_Package; use org.allbinary.graphics.color.ColorCompositeInterface_Package;
with org.allbinary.logic.util.event.EventStrings_Package; use org.allbinary.logic.util.event.EventStrings_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventHandler_Package; use org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventHandler_Package;

package body org.allbinary.game.layer.geographic.map.MiniMapLayer_Package is

   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package ForcedLogUtil_Package renames Standard.org.allbinary.logic.communication.log.ForcedLogUtil_Package;
   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package PointFactory_Package renames Standard.org.allbinary.graphics.PointFactory_Package;
   package Rectangle_Package renames Standard.org.allbinary.graphics.Rectangle_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   package ColorCompositeInterface_Package renames Standard.org.allbinary.graphics.color.ColorCompositeInterface_Package;
   package EventStrings_Package renames Standard.org.allbinary.logic.util.event.EventStrings_Package;
   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   package GeographicMapCellPositionEventHandler_Package renames Standard.org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventHandler_Package;
   procedure Initialize_Fields (This : in out MiniMapLayer'Class) is
   begin
      null;
      
      
      
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out MiniMapLayer'Class; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; viewPosition_Param : access ViewPositionBase_Package.ViewPositionBase'Class) is
      geographicMapInterface : constant BasicGeographicMap_Access := BasicGeographicMap_Access (geographicMapInterface_Param);
      viewPosition : constant ViewPositionBase_Access := ViewPositionBase_Access (viewPosition_Param);
   begin
        AllBinaryLayer_Package.Initialize (This, StringUtil_Package.getInstance.EMPTY_STRING, Rectangle_Package.Create (PointFactory_Package.getInstance.createXY (0, viewPosition.getY), geographicMapInterface.getAllBinaryTiledLayer.getWidth, geographicMapInterface.getAllBinaryTiledLayer.getHeight), viewPosition);
        Initialize_Fields (This);
        This.allBinaryTiledLayer := geographicMapInterface.getAllBinaryTiledLayer;
        This.geographicMapCellPositionFactory := geographicMapInterface.getGeographicMapCellPositionFactory;
        This.animationInterface := CircleFilledAnimation_Package.Create (This.allBinaryTiledLayer.getCellWidth, This.allBinaryTiledLayer.getCellHeight, BasicColorFactory_Package.getInstance.WHITE);
        This.list := BasicArrayList_Access (BasicArrayListD_Package.Create);
        This.basicColorList := BasicArrayList_Access (BasicArrayListD_Package.Create);
        This.positionList := BasicArrayList_Access (BasicArrayListD_Package.Create);
        GeographicMapCellPositionEventHandler_Package.getInstance.addListener (MiniMapLayer_Access'(This'Unchecked_Access));
        MiniMapLayer'Class (This).init;
   end Initialize;

   function Create (geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; viewPosition_Param : access ViewPositionBase_Package.ViewPositionBase'Class) return MiniMapLayer_Access is
      This : constant MiniMapLayer_Access := new MiniMapLayer;
   begin
      MiniMapLayer_Package.Initialize (This.all, geographicMapInterface_Param, viewPosition_Param);
      return This;
   end Create;

   --  throws Exception
   procedure init (This : in out MiniMapLayer) is
   begin
        This.allBinaryTiledLayer.setPosition (This.x, This.y, This.z);
   end init;

   procedure onEvent (This : in out MiniMapLayer; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class) is
      eventObject : constant AllBinaryEventObject_Access := AllBinaryEventObject_Access (eventObject_Param);
   begin
        ForcedLogUtil_Package.log (EventStrings_Package.getInstance.PERFORMANCE_MESSAGE, MiniMapLayer_Access'(This'Unchecked_Access));
   end onEvent;

   --  throws Exception
   procedure onRemoveGeographicMapCellPositionEvent (This : in out MiniMapLayer; geographicMapCellPositionEvent_Param : access GeographicMapCellPositionEvent_Package.GeographicMapCellPositionEvent'Class) is
      geographicMapCellPositionEvent : constant GeographicMapCellPositionEvent_Access := GeographicMapCellPositionEvent_Access (geographicMapCellPositionEvent_Param);
      colorCompositeInterface : ColorCompositeInterface_Access;
      index : Integer;
   begin
        colorCompositeInterface := ColorCompositeInterface_Access (geographicMapCellPositionEvent.getSource);
        index := This.list.indexOf (Java_Object_Access (colorCompositeInterface));
        if (index) >= (0) then
            This.list.removeAt (index);
            This.basicColorList.removeAt (index);
            This.positionList.removeAt (index);
        end if;
   end onRemoveGeographicMapCellPositionEvent;

   --  throws Exception
   procedure onGeographicMapCellPositionEvent (This : in out MiniMapLayer; geographicMapCellPositionEvent_Param : access GeographicMapCellPositionEvent_Package.GeographicMapCellPositionEvent'Class) is
      geographicMapCellPositionEvent : constant GeographicMapCellPositionEvent_Access := GeographicMapCellPositionEvent_Access (geographicMapCellPositionEvent_Param);
      colorCompositeInterface : ColorCompositeInterface_Access;
      layerIndex : Integer;
      size : Integer;
      nextColorCompositeInterface : ColorCompositeInterface_Access;
      index : Integer;
      geographicMapCellPosition : GeographicMapCellPosition_Access;
      point : GPoint_Access;
      basicColor : BasicColor_Access;
   begin
        colorCompositeInterface := ColorCompositeInterface_Access (geographicMapCellPositionEvent.getSource);
        layerIndex := -(1);
        size := This.list.size;
        nextColorCompositeInterface := null;
        for index in 0 .. (size) - 1 loop
            nextColorCompositeInterface := ColorCompositeInterface_Access (This.list.get (index));
            if (nextColorCompositeInterface) = (colorCompositeInterface) then
                layerIndex := index;
                exit;
            end if;
        end loop;
        geographicMapCellPosition := This.geographicMapCellPositionFactory.getInstance (geographicMapCellPositionEvent.getGeographicMapCellPosition);
        point := geographicMapCellPosition.getPoint;
        if (layerIndex) = (-(1)) then
            This.list.add (Java_Object_Access (colorCompositeInterface));
            basicColor := colorCompositeInterface.getBasicColorP;
            This.basicColorList.add (Java_Object_Access (basicColor));
            This.positionList.add (Java_Object_Access (point));
            layerIndex := (This.basicColorList.size) - (1);
        else
            This.positionList.set (layerIndex, Java_Object_Access (point));
        end if;
   end onGeographicMapCellPositionEvent;

   procedure paintDots (This : in out MiniMapLayer; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      localPositionList : BasicArrayList_Access;
      localBasicColorList : BasicArrayList_Access;
      length : Integer;
      point : GPoint_Access;
      basicColor : BasicColor_Access;
      index : Integer;
   begin
        localPositionList := This.positionList;
        localBasicColorList := This.basicColorList;
        length := localPositionList.size;
        point := null;
        basicColor := null;
        index := length;
        while (Java_Pre_Decrement (index)) >= (0) loop
            point := GPoint_Access (localPositionList.get (index));
            basicColor := BasicColor_Access (localBasicColorList.get (index));
            graphics.setColor (basicColor.intValue);
            This.animationInterface.setBasicColorP (basicColor);
            This.animationInterface.paintXY (graphics, (point.getX) + (This.x), (point.getY) + (This.y));
        end loop;
   end paintDots;

   procedure paint (This : in out MiniMapLayer; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        This.allBinaryTiledLayer.paint (graphics);
        MiniMapLayer'Class (This).paintDots (graphics);
   end paint;

end org.allbinary.game.layer.geographic.map.MiniMapLayer_Package;


