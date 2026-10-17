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


package body org.allbinary.game.layer.geographic.map.MiniMapLayer_Package is

   procedure Initialize_Fields (This : in out MiniMapLayer'Class) is
   begin
      null;
      
      
      
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out MiniMapLayer'Class; geographicMapInterface : BasicGeographicMap_Access; viewPosition : ViewPositionBase_Access) is
   begin
        AllBinaryLayer_Package.Initialize (This, StringUtil_Package.getInstance.EMPTY_STRING, Rectangle_Package.Create (PointFactory_Package.getInstance.createXY (0, viewPosition.getY), geographicMapInterface.getAllBinaryTiledLayer.getWidth, geographicMapInterface.getAllBinaryTiledLayer.getHeight), viewPosition);
        Initialize_Fields (This);
        This.allBinaryTiledLayer := geographicMapInterface.getAllBinaryTiledLayer;
        This.geographicMapCellPositionFactory := geographicMapInterface.getGeographicMapCellPositionFactory;
        This.animationInterface := CircleFilledAnimation_Package.Create (This.allBinaryTiledLayer.getCellWidth, This.allBinaryTiledLayer.getCellHeight, BasicColorFactory_Package.getInstance.WHITE);
        This.list := BasicArrayListD_Package.Create;
        This.basicColorList := BasicArrayListD_Package.Create;
        This.positionList := BasicArrayListD_Package.Create;
        GeographicMapCellPositionEventHandler_Package.getInstance.addListener (This'Unchecked_Access);
        This.init;
   end Initialize;

   function Create (geographicMapInterface : BasicGeographicMap_Access; viewPosition : ViewPositionBase_Access) return MiniMapLayer_Access is
      This : constant MiniMapLayer_Access := new MiniMapLayer;
   begin
      MiniMapLayer_Package.Initialize (This.all, geographicMapInterface, viewPosition);
      return This;
   end Create;

   --  throws Exception
   procedure init (This : in out MiniMapLayer) is
   begin
        This.allBinaryTiledLayer.setPosition (This.x, This.y, This.z);
   end init;

   procedure onEvent (This : in out MiniMapLayer; eventObject : AllBinaryEventObject_Access) is
   begin
        ForcedLogUtil_Package.log (EventStrings_Package.getInstance.PERFORMANCE_MESSAGE, This'Unchecked_Access);
   end onEvent;

   --  throws Exception
   procedure onRemoveGeographicMapCellPositionEvent (This : in out MiniMapLayer; geographicMapCellPositionEvent : GeographicMapCellPositionEvent_Access) is
      colorCompositeInterface : ColorCompositeInterface_Access;
      index : Integer;
   begin
        colorCompositeInterface := ColorCompositeInterface_Access (geographicMapCellPositionEvent.getSource);
        index := This.list.indexOf (colorCompositeInterface);
        if (index) >= (0) then
            This.list.removeAt (index);
            This.basicColorList.removeAt (index);
            This.positionList.removeAt (index);
        end if;
   end onRemoveGeographicMapCellPositionEvent;

   --  throws Exception
   procedure onGeographicMapCellPositionEvent (This : in out MiniMapLayer; geographicMapCellPositionEvent : GeographicMapCellPositionEvent_Access) is
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
            This.list.add (colorCompositeInterface);
            basicColor := colorCompositeInterface.getBasicColorP;
            This.basicColorList.add (basicColor);
            This.positionList.add (point);
            layerIndex := (This.basicColorList.size) - (1);
        else
            This.positionList.set (layerIndex, point);
        end if;
   end onGeographicMapCellPositionEvent;

   procedure paintDots (This : in out MiniMapLayer; graphics : Graphics_Access) is
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

   procedure paint (This : in out MiniMapLayer; graphics : Graphics_Access) is
   begin
        This.allBinaryTiledLayer.paint (graphics);
        This.paintDots (graphics);
   end paint;

end org.allbinary.game.layer.geographic.map.MiniMapLayer_Package;


