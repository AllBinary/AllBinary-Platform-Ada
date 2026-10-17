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


package body org.allbinary.graphics.j2me.workarea.tools.SelectionTool_Package is

   procedure Initialize_Fields (This : in out SelectionTool'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      
      This.active := True;
      This.controlIdDown := False;
      This.rectColor := Color_Package.Create (BasicColorFactory_Package.getInstance.RED.intValue);
      This.startPoint := PointFactory_Package.getInstance.ZERO_ZERO;
      This.endPoint := This.startPoint;
   end Initialize_Fields;


   procedure Initialize (This : in out SelectionTool'Class; canvasJPanel_Param : access CanvasJPanel_Package.CanvasJPanel'Class) is
      canvasJPanel : constant CanvasJPanel_Access := CanvasJPanel_Access (canvasJPanel_Param);
   begin
      Initialize_Fields (This);
        This.canvasJPanel := canvasJPanel;
   end Initialize;

   function Create (canvasJPanel_Param : access CanvasJPanel_Package.CanvasJPanel'Class) return SelectionTool_Access is
      This : constant SelectionTool_Access := new SelectionTool;
   begin
      SelectionTool_Package.Initialize (This.all, canvasJPanel_Param);
      return This;
   end Create;

   procedure setColor (This : in out SelectionTool; color_Param : access Color_Package.Color'Class) is
      color : constant Color_Access := Color_Access (color_Param);
   begin
        null;
   end setColor;

   function getTreeNode (This : in out SelectionTool) return MutableTreeNode_Access is
   begin
        return null;
   end getTreeNode;

   function getPointsInterface (This : in out SelectionTool) return Points_Access is
   begin
        return null;
   end getPointsInterface;

   procedure setPointsInterface (This : in out SelectionTool; points_Param : access Points_Package.Points'Class) is
      points : constant Points_Access := Points_Access (points_Param);
   begin
        null;
   end setPointsInterface;

   function isValid (This : in out SelectionTool) return Boolean is
   begin
        return True;
   end isValid;

   function isActive (This : in out SelectionTool) return Boolean is
   begin
        return This.active;
   end isActive;

   procedure deactivate (This : in out SelectionTool) is
   begin
        null;
   end deactivate;

   procedure activate (This : in out SelectionTool) is
   begin
        null;
   end activate;

   procedure setFulcrumPoint (This : in out SelectionTool; point_Param : access GPoint_Package.GPoint'Class) is
      point : constant GPoint_Access := GPoint_Access (point_Param);
   begin
        null;
   end setFulcrumPoint;

   --  throws Exception
   procedure translate (This : in out SelectionTool; x : Integer; y : Integer) is
   begin
        null;
   end translate;

   procedure setRotate (This : in out SelectionTool; theta : Long_Float) is
   begin
        null;
   end setRotate;

   procedure addRotate (This : in out SelectionTool; theta : Long_Float) is
   begin
        null;
   end addRotate;

   procedure setAngle (This : in out SelectionTool; angle : Long_Float) is
   begin
        null;
   end setAngle;

   procedure addAngle (This : in out SelectionTool; angle : Long_Float) is
   begin
        null;
   end addAngle;

   function getAngle (This : in out SelectionTool) return Long_Float is
   begin
        return 0.0;
   end getAngle;

   procedure makeSelection (This : in out SelectionTool) is
      xRect : Integer;
      xRect2 : Integer;
      yRect : Integer;
      yRect2 : Integer;
      hashMap : HashMap_Access;
      graphicItemArray : Java_Object_Access_Array_Access;
      size : Integer;
      item : GraphicItemInterface_Access;
      index : Integer;
   begin
        xRect := This.getXRect;
        xRect2 := (abs ((This.endPoint.getX) - (This.startPoint.getX))) + (xRect);
        yRect := This.getYRect;
        yRect2 := (abs ((This.endPoint.getY) - (This.startPoint.getY))) + (yRect);
        hashMap := This.canvasJPanel.getGraphicItemHashMap;
        graphicItemArray := hashMap.keySet.toArray;
        size := graphicItemArray'Length;
        for index in 0 .. (size) - 1 loop
            item := GraphicItemInterface_Access (hashMap.get (graphicItemArray (index)));
            if (item.getName) = (LinesGraphicItem_Package.getStaticName) then
                if RectangleCollisionPointUtil_Package.allPointsInsideCell (xRect, yRect, xRect2, yRect2, item.getPointsInterface.getPoints, This.canvasJPanel.getXPixelsPerWorkAreaPixel, This.canvasJPanel.getYPixelsPerWorkAreaPixel) then
                    item.setColor (Color_Package.YELLOW);
                    item.activate;
                elsif not (This.controlIdDown) then
                    item.setColor (Color_Package.WHITE);
                    item.deactivate;
                end if;
            end if;
        end loop;
   end makeSelection;

   function getXRect (This : in out SelectionTool) return Integer is
      xDiff : Integer;
      xRect : Integer;
   begin
        xDiff := (This.endPoint.getX) - (This.startPoint.getX);
        xRect := This.startPoint.getX;
        if (xDiff) < (0) then
            xRect := This.endPoint.getX;
        end if;
        return xRect;
   end getXRect;

   function getYRect (This : in out SelectionTool) return Integer is
      yDiff : Integer;
      yRect : Integer;
   begin
        yDiff := (This.endPoint.getY) - (This.startPoint.getY);
        yRect := This.startPoint.getY;
        if (yDiff) < (0) then
            yRect := This.endPoint.getY;
        end if;
        return yRect;
   end getYRect;

   procedure paint (This : in out SelectionTool; g_Param : access Graphics_Package.Graphics'Class; canvasAngle : Long_Float; dimension_Param : access IntegerDimension_Package.IntegerDimension'Class; x : Integer; y : Integer) is
      g : constant Graphics_Access := Graphics_Access (g_Param);
      dimension : constant IntegerDimension_Access := IntegerDimension_Access (dimension_Param);
      xRect : Integer;
      width : Integer;
      yRect : Integer;
      height : Integer;
   begin
        g.setColor (This.rectColor);
        xRect := This.getXRect;
        width := abs ((This.endPoint.getX) - (This.startPoint.getX));
        yRect := This.getYRect;
        height := abs ((This.endPoint.getY) - (This.startPoint.getY));
        g.drawRect (xRect, yRect, width, height);
   end paint;

   --  throws Exception
   function toDom (This : in out SelectionTool; canvasDom_Param : access CanvasDom_Package.CanvasDom'Class) return Node_Access is
      canvasDom : constant CanvasDom_Access := CanvasDom_Access (canvasDom_Param);
   begin
        return null;
   end toDom;

   function removePoint (This : in out SelectionTool) return GPoint_Access is
   begin
        return null;
   end removePoint;

   procedure addPoint (This : in out SelectionTool; point_Param : access GPoint_Package.GPoint'Class) is
      point : constant GPoint_Access := GPoint_Access (point_Param);
   begin
        null;
   end addPoint;

   function getName (This : in out SelectionTool) return Unbounded_String is
   begin
        return SelectionTool_Package.NAME;
   end getName;

   function getStaticName return Unbounded_String is
   begin
        return SelectionTool_Package.NAME;
   end getStaticName;

   procedure mouseClicked (This : in out SelectionTool; mouseEvent_Param : access MouseEvent_Package.MouseEvent'Class; xPixelsPerCell : Integer; yPixelsPerCell : Integer) is
      mouseEvent : constant MouseEvent_Access := MouseEvent_Access (mouseEvent_Param);
   begin
        null;
   end mouseClicked;

   procedure mouseMoved (This : in out SelectionTool; mouseEvent_Param : access MouseEvent_Package.MouseEvent'Class; xPixelsPerCell : Integer; yPixelsPerCell : Integer) is
      mouseEvent : constant MouseEvent_Access := MouseEvent_Access (mouseEvent_Param);
   begin
        null;
   end mouseMoved;

   procedure mouseEntered (This : in out SelectionTool; mouseEvent_Param : access MouseEvent_Package.MouseEvent'Class) is
      mouseEvent : constant MouseEvent_Access := MouseEvent_Access (mouseEvent_Param);
   begin
        null;
   end mouseEntered;

   procedure mouseExited (This : in out SelectionTool; mouseEvent_Param : access MouseEvent_Package.MouseEvent'Class) is
      mouseEvent : constant MouseEvent_Access := MouseEvent_Access (mouseEvent_Param);
   begin
        null;
   end mouseExited;

   procedure mousePressed (This : in out SelectionTool; mouseEvent_Param : access MouseEvent_Package.MouseEvent'Class; xPixelsPerCell : Integer; yPixelsPerCell : Integer) is
      mouseEvent : constant MouseEvent_Access := MouseEvent_Access (mouseEvent_Param);
   begin
        This.logUtil.putF (This.commonStrings.START, SelectionTool_Access'(This'Unchecked_Access), MouseStrings_Package.getInstance.MOUSE_PRESSED);
        This.startPoint := PointFactory_Package.getInstance.createXY (mouseEvent.getX, mouseEvent.getY);
        This.endPoint := This.startPoint;
   end mousePressed;

   procedure mouseReleased (This : in out SelectionTool; mouseEvent_Param : access MouseEvent_Package.MouseEvent'Class; xPixelsPerCell : Integer; yPixelsPerCell : Integer) is
      mouseEvent : constant MouseEvent_Access := MouseEvent_Access (mouseEvent_Param);
   begin
        This.logUtil.putF (This.commonStrings.START, SelectionTool_Access'(This'Unchecked_Access), MouseStrings_Package.getInstance.MOUSE_RELEASED);
        This.endPoint := PointFactory_Package.getInstance.createXY (mouseEvent.getX, mouseEvent.getY);
        This.active := False;
        This.makeSelection;
   end mouseReleased;

   procedure mouseDragged (This : in out SelectionTool; mouseEvent_Param : access MouseEvent_Package.MouseEvent'Class; xPixelsPerCell : Integer; yPixelsPerCell : Integer) is
      mouseEvent : constant MouseEvent_Access := MouseEvent_Access (mouseEvent_Param);
   begin
        This.endPoint := PointFactory_Package.getInstance.createXY (mouseEvent.getX, mouseEvent.getY);
   end mouseDragged;

   procedure keyPressed (This : in out SelectionTool; keyEvent_Param : access KeyEvent_Package.KeyEvent'Class) is
      keyEvent : constant KeyEvent_Access := KeyEvent_Access (keyEvent_Param);
   begin
        if (keyEvent.getKeyCode) = (keyEvent.VK_CONTROL) then
            This.controlIdDown := True;
        end if;
   end keyPressed;

   procedure keyReleased (This : in out SelectionTool; keyEvent_Param : access KeyEvent_Package.KeyEvent'Class) is
      keyEvent : constant KeyEvent_Access := KeyEvent_Access (keyEvent_Param);
   begin
        if (keyEvent.getKeyCode) = (keyEvent.VK_CONTROL) then
            This.controlIdDown := False;
        end if;
   end keyReleased;

   procedure keyTyped (This : in out SelectionTool; keyEvent_Param : access KeyEvent_Package.KeyEvent'Class) is
      keyEvent : constant KeyEvent_Access := KeyEvent_Access (keyEvent_Param);
   begin
        null;
   end keyTyped;

   --  throws Exception
   function duplicate (This : in out SelectionTool) return GraphicItemInterface_Access is
   begin
        return null;
   end duplicate;

   procedure toDom (This : in out SelectionTool; canvasDom_Param : access CanvasDom_Package.CanvasDom'Class) is
      Java_Result : constant Node_Access := SelectionTool'Class (This).toDom (canvasDom_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toDom;

begin
   null;
   NAME := To_Unbounded_String ("Selection Tool");

end org.allbinary.graphics.j2me.workarea.tools.SelectionTool_Package;


