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


with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.dom.DomHelper_Package; use org.allbinary.dom.DomHelper_Package;
with org.allbinary.graphics.PointFactory_Package; use org.allbinary.graphics.PointFactory_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.graphics.j2me.StatusFactory_Package; use org.allbinary.graphics.j2me.StatusFactory_Package;
with org.allbinary.graphics.pipeline.BasicGraphicsPipeline_Package; use org.allbinary.graphics.pipeline.BasicGraphicsPipeline_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.math.PositionStrings_Package; use org.allbinary.math.PositionStrings_Package;
with org.allbinary.graphics.j2me.workarea.tools.PointsDomUtil_Package; use org.allbinary.graphics.j2me.workarea.tools.PointsDomUtil_Package;
with org.allbinary.graphics.j2me.workarea.tools.Graphics2D_Package; use org.allbinary.graphics.j2me.workarea.tools.Graphics2D_Package;
with org.allbinary.graphics.j2me.workarea.tools.BasicStroke_Package; use org.allbinary.graphics.j2me.workarea.tools.BasicStroke_Package;
with org.allbinary.graphics.j2me.workarea.tools.PointsUtil_Package; use org.allbinary.graphics.j2me.workarea.tools.PointsUtil_Package;

package body org.allbinary.graphics.j2me.workarea.tools.LinesGraphicItem_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package DomHelper_Package renames Standard.org.allbinary.dom.DomHelper_Package;
   package PointFactory_Package renames Standard.org.allbinary.graphics.PointFactory_Package;
   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   package StatusFactory_Package renames Standard.org.allbinary.graphics.j2me.StatusFactory_Package;
   package BasicGraphicsPipeline_Package renames Standard.org.allbinary.graphics.pipeline.BasicGraphicsPipeline_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package PositionStrings_Package renames Standard.org.allbinary.math.PositionStrings_Package;
   procedure Initialize_Fields (This : in out LinesGraphicItem'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.gameInputStrings := GameInputStrings_Package.getInstance;
      This.treeNode := null;
      This.pointTreeNodeVector := null;
      This.currentMousePoint := null;
      This.fulcrumPoint := null;
      This.active := False;
      This.theta := 0.0;
      This.color := Color_Package.Create (BasicColorFactory_Package.getInstance.WHITE.intValue);
      
   end Initialize_Fields;


   procedure Initialize (This : in out LinesGraphicItem'Class) is
   begin
      Initialize_Fields (This);
        This.points := Points_Package.Create;
        begin
            LinesGraphicItem'Class (This).init;
            This.active := True;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, LinesGraphicItem_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR, e);
                end;
        end;
   end Initialize;

   function Create return LinesGraphicItem_Access is
      This : constant LinesGraphicItem_Access := new LinesGraphicItem;
   begin
      LinesGraphicItem_Package.Initialize (This.all);
      return This;
   end Create;

   procedure Initialize (This : in out LinesGraphicItem'Class; linesNode_Param : access Node_Package.Node'Class) is
      linesNode : constant Node_Access := Node_Access (linesNode_Param);
      lineNodes : BasicArrayList_Access;
      numberOfLines : Integer;
      lineNode : Node_Access;
      pointNodes : BasicArrayList_Access;
      pointOneNode : Node_Access;
      pointTwoNode : Node_Access;
      index : Integer;
   begin
      Initialize_Fields (This);
        This.points := Points_Package.Create;
        LinesGraphicItem'Class (This).init;
        This.active := False;
        lineNodes := DomHelper_Package.getInstance.getWithoutTextNodes (linesNode.getChildNodes);
        numberOfLines := lineNodes.size;
        for index in 0 .. (numberOfLines) - 1 loop
            lineNode := Node_Access (lineNodes.get (index));
            pointNodes := DomHelper_Package.getInstance.getWithoutTextNodes (lineNode.getChildNodes);
            pointOneNode := DomHelper_Package.getInstance.searchNodeList (PointsDomUtil_Package.getInstance.POINTONE, pointNodes);
            LinesGraphicItem'Class (This).addPoint (pointOneNode.getChildNodes);
            if (index) = ((numberOfLines) - (1)) then
                pointTwoNode := DomHelper_Package.getInstance.searchNodeList (PointsDomUtil_Package.getInstance.POINTTWO, pointNodes);
                LinesGraphicItem'Class (This).addPoint (pointTwoNode.getChildNodes);
            end if;
        end loop;
        if (numberOfLines) = (0) then
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Lines node does not contain a line")));
        end if;
   end Initialize;

   function Create (linesNode_Param : access Node_Package.Node'Class) return LinesGraphicItem_Access is
      This : constant LinesGraphicItem_Access := new LinesGraphicItem;
   begin
      LinesGraphicItem_Package.Initialize (This.all, linesNode_Param);
      return This;
   end Create;

   --  throws Exception
   procedure init (This : in out LinesGraphicItem) is
   begin
        This.treeNode := DefaultMutableTreeNode_Package.Create ((PointsDomUtil_Package.getInstance.LINES) + (LinesGraphicItem_Package.item));
        LinesGraphicItem_Package.item := LinesGraphicItem_Package.item + 1;
        This.points.init;
        This.pointTreeNodeVector := BasicArrayList_Access (BasicArrayListD_Package.Create);
        This.fulcrumPoint := PointFactory_Package.getInstance.createXY (0, 0);
   end init;

   --  throws Exception
   procedure translate (This : in out LinesGraphicItem; x : Integer; y : Integer) is
      basicGraphicsPipeline : BasicGraphicsPipeline_Access;
   begin
        StatusFactory_Package.getInstance.setStatus (To_Unbounded_String ("Translating: ") & Java_Image (This.points.getPoints));
        basicGraphicsPipeline := BasicGraphicsPipeline_Package.Create (This.points.getPoints);
        basicGraphicsPipeline.translate (x, y);
        This.points := Points_Package.Create;
        This.points.addPoints (basicGraphicsPipeline.getMatrix);
   end translate;

   procedure setRotate (This : in out LinesGraphicItem; theta_Param : Long_Float) is
      theta : Long_Float := theta_Param;
   begin
        while (theta) > ((2) * (Math_Package.PI)) loop
            theta := (theta) - ((2) * (Math_Package.PI));
        end loop;
        while (theta) < (0.0) loop
            theta := (theta) + ((2) * (Math_Package.PI));
        end loop;
        This.theta := theta;
   end setRotate;

   procedure addRotate (This : in out LinesGraphicItem; theta : Long_Float) is
   begin
        LinesGraphicItem'Class (This).setRotate ((This.theta) + (theta));
   end addRotate;

   procedure setAngle (This : in out LinesGraphicItem; angle : Long_Float) is
   begin
        LinesGraphicItem'Class (This).setRotate (Ada.Numerics.Long_Elementary_Functions.ToRadians (angle));
   end setAngle;

   procedure addAngle (This : in out LinesGraphicItem; angle : Long_Float) is
   begin
        LinesGraphicItem'Class (This).setRotate ((This.theta) + (Ada.Numerics.Long_Elementary_Functions.ToRadians (angle)));
   end addAngle;

   function getTreeNode (This : in out LinesGraphicItem) return MutableTreeNode_Access is
   begin
        return MutableTreeNode_Access (This.treeNode);
   end getTreeNode;

   function getName (This : in out LinesGraphicItem) return Unbounded_String is
   begin
        return LinesGraphicItem_Package.NAME;
   end getName;

   function getStaticName return Unbounded_String is
   begin
        return LinesGraphicItem_Package.NAME;
   end getStaticName;

   --  throws Exception
   procedure addPoint (This : in out LinesGraphicItem; pointNodes_Param : access NodeList_Package.NodeList'Class) is
      pointNodes : constant NodeList_Access := NodeList_Access (pointNodes_Param);
      list : BasicArrayList_Access;
      xNode : Node_Access;
      xTextNode : Node_Access;
      xInteger : Integer;
      yNode : Node_Access;
      yTextNode : Node_Access;
      yInteger : Integer;
      point : GPoint_Access;
   begin
        list := DomHelper_Package.getInstance.getWithoutTextNodes (pointNodes);
        xNode := DomHelper_Package.getInstance.searchNodeList (PositionStrings_Package.getInstance.X, list);
        xTextNode := xNode.getFirstChild;
        xInteger := xTextNode.getNodeValue;
        yNode := DomHelper_Package.getInstance.searchNodeList (PositionStrings_Package.getInstance.Y, list);
        yTextNode := yNode.getFirstChild;
        yInteger := yTextNode.getNodeValue;
        point := PointFactory_Package.getInstance.createXY (Integer (xInteger), Integer (yInteger));
        LinesGraphicItem'Class (This).addPoint (point);
   end addPoint;

   procedure addPoint (This : in out LinesGraphicItem; point_Param : access GPoint_Package.GPoint'Class) is
      point : constant GPoint_Access := GPoint_Access (point_Param);
   begin
        This.points.getPoints.add (point);
        This.logUtil.putF (point.toString, LinesGraphicItem_Access'(This'Unchecked_Access), To_Unbounded_String ("addPoint"));
        This.pointTreeNodeVector.add (Java_Object_Access (DefaultMutableTreeNode_Package.Create (point.toString)));
        This.treeNode.add (DefaultMutableTreeNode_Access (This.pointTreeNodeVector.get ((This.pointTreeNodeVector.size) - (1))));
   end addPoint;

   function removePoint (This : in out LinesGraphicItem) return GPoint_Access is
      point : GPoint_Access;
      lastPoint : Integer;
      index : Integer;
   begin
        point := null;
        if (This.points.getSize) > (0) then
            lastPoint := (This.points.getSize) - (1);
            point := GPoint_Access (This.points.getPoints.removeAt (lastPoint));
            index := (This.pointTreeNodeVector.size) - (1);
            if (index) > (0) then
                This.treeNode.remove (DefaultMutableTreeNode_Access (This.pointTreeNodeVector.get (index)));
                This.pointTreeNodeVector.remove (index);
            end if;
        end if;
        return point;
   end removePoint;

   function isActive (This : in out LinesGraphicItem) return Boolean is
   begin
        return This.active;
   end isActive;

   procedure deactivate (This : in out LinesGraphicItem) is
   begin
        This.active := False;
   end deactivate;

   procedure activate (This : in out LinesGraphicItem) is
   begin
        This.active := True;
   end activate;

   --  throws Exception
   procedure duplicatePoints (This : in out LinesGraphicItem; list_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      list : constant BasicArrayList_Access := BasicArrayList_Access (list_Param);
      size : Integer;
      point : GPoint_Access;
      index : Integer;
   begin
        size := list.size;
        for index in 0 .. (size) - 1 loop
            point := GPoint_Access (list.get (index));
            if (point) /= (null) then
                This.points.getPoints.add (PointFactory_Package.getInstance.createXY (point.getX, point.getY));
                This.pointTreeNodeVector.add (Java_Object_Access (DefaultMutableTreeNode_Package.Create (point.toString)));
                This.treeNode.add (DefaultMutableTreeNode_Access (This.pointTreeNodeVector.get ((This.pointTreeNodeVector.size) - (1))));
            end if;
        end loop;
   end duplicatePoints;

   --  throws Exception
   function duplicate (This : in out LinesGraphicItem) return GraphicItemInterface_Access is
      linesGraphicItem : LinesGraphicItem_Access;
   begin
        linesGraphicItem := LinesGraphicItem_Package.Create;
        linesGraphicItem.duplicatePoints (This.points.getPoints);
        linesGraphicItem.deactivate;
        return GraphicItemInterface_Access (linesGraphicItem);
   end duplicate;

   function getAngle (This : in out LinesGraphicItem) return Long_Float is
   begin
        return Ada.Numerics.Long_Elementary_Functions.ToDegrees (This.theta);
   end getAngle;

   procedure setFulcrumPoint (This : in out LinesGraphicItem; point_Param : access GPoint_Package.GPoint'Class) is
      point : constant GPoint_Access := GPoint_Access (point_Param);
   begin
        This.fulcrumPoint := point;
   end setFulcrumPoint;

   procedure paint (This : in out LinesGraphicItem; g_Param : access Graphics_Package.Graphics'Class; canvasAngle : Long_Float; dimension_Param : access IntegerDimension_Package.IntegerDimension'Class; x : Integer; y : Integer) is
      g : constant Graphics_Access := Graphics_Access (g_Param);
      dimension : constant IntegerDimension_Access := IntegerDimension_Access (dimension_Param);
      graphics : Graphics2D_Access;
      tempPointVector : BasicArrayList_Access;
      size : Integer;
      firstPoint : GPoint_Access;
      secondPoint : GPoint_Access;
      index : Integer;
   begin
        begin
            graphics := Graphics2D_Access (g);
            graphics.setColor (LinesGraphicItem'Class (This).getColor);
            graphics.setStroke (BasicStroke_Package.Create (x));
            if (LinesGraphicItem'Class (This).isActive) and then ((This.currentMousePoint) /= (null)) then
                This.points.getPoints.add (This.currentMousePoint);
            end if;
            tempPointVector := PointsUtil_Package.getInstance.doTransforms (This.points.getPoints, canvasAngle, PointFactory_Package.getInstance.createXY (dimension.getWidth, dimension.getHeight));
            if (LinesGraphicItem'Class (This).isActive) and then ((This.currentMousePoint) /= (null)) then
                This.currentMousePoint := GPoint_Access (This.points.getPoints.removeAt ((This.points.getSize) - (1)));
            end if;
            size := tempPointVector.size;
            firstPoint := null;
            if (size) > (0) then
                firstPoint := GPoint_Access (tempPointVector.get (0));
            end if;
            for index in 1 .. (size) - 1 loop
                secondPoint := GPoint_Access (tempPointVector.get (index));
                graphics.drawLine ((((firstPoint.getX) * (x))) - (((x) / (4))), (((firstPoint.getY) * (y))) - (((y) / (4))), (((secondPoint.getX) * (x))) - (((x) / (4))), (((secondPoint.getY) * (y))) - (((y) / (4))));
                firstPoint := secondPoint;
            end loop;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, LinesGraphicItem_Access'(This'Unchecked_Access), To_Unbounded_String ("mouseMoved"), e);
                end;
        end;
   end paint;

   --  throws Exception
   function toDom (This : in out LinesGraphicItem; canvasDom_Param : access CanvasDom_Package.CanvasDom'Class) return Node_Access is
      canvasDom : constant CanvasDom_Access := CanvasDom_Access (canvasDom_Param);
   begin
        return PointsDomUtil_Package.getInstance.toDom (canvasDom, This.points.getPoints);
   end toDom;

   function isValid (This : in out LinesGraphicItem) return Boolean is
   begin
        return This.points.isValid;
   end isValid;

   function getPointsInterface (This : in out LinesGraphicItem) return Points_Access is
   begin
        return This.points;
   end getPointsInterface;

   procedure setPointsInterface (This : in out LinesGraphicItem; points_Param : access Points_Package.Points'Class) is
      points : constant Points_Access := Points_Access (points_Param);
   begin
        This.points := points;
   end setPointsInterface;

   function getColor (This : in out LinesGraphicItem) return Color_Access is
   begin
        return This.color;
   end getColor;

   procedure setColor (This : in out LinesGraphicItem; color_Param : access Color_Package.Color'Class) is
      color : constant Color_Access := Color_Access (color_Param);
   begin
        This.color := color;
   end setColor;

   procedure mouseClicked (This : in out LinesGraphicItem; mouseEvent_Param : access MouseEvent_Package.MouseEvent'Class; x : Integer; y : Integer) is
      mouseEvent : constant MouseEvent_Access := MouseEvent_Access (mouseEvent_Param);
      mousePoint : GPoint_Access;
      point : GPoint_Access;
   begin
        begin
            mousePoint := PointFactory_Package.getInstance.createXY (mouseEvent.getPoint.x, mouseEvent.getPoint.y);
            if ((Java_And (mouseEvent.getModifiers, mouseEvent.BUTTON1_MASK))) = (mouseEvent.BUTTON1_MASK) then
                point := PointFactory_Package.getInstance.createXY ((mousePoint.getX) / (x), (mousePoint.getY) / (y));
                StatusFactory_Package.getInstance.setStatus (To_Unbounded_String ("Line Point Added: ") & point.toString);
                LinesGraphicItem'Class (This).addPoint (point);
            elsif ((Java_And (mouseEvent.getModifiers, mouseEvent.BUTTON3_MASK))) = (mouseEvent.BUTTON3_MASK) then
                StatusFactory_Package.getInstance.setStatus (To_Unbounded_String ("Line Point Removed"));
                declare Java_Result renames LinesGraphicItem'Class (This).removePoint; pragma Unreferenced (Java_Result); begin null; end;
            end if;
            This.currentMousePoint := mousePoint;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, LinesGraphicItem_Access'(This'Unchecked_Access), To_Unbounded_String ("mouseMoved"), e);
                end;
        end;
   end mouseClicked;

   procedure mouseEntered (This : in out LinesGraphicItem; mouseEvent_Param : access MouseEvent_Package.MouseEvent'Class) is
      mouseEvent : constant MouseEvent_Access := MouseEvent_Access (mouseEvent_Param);
   begin
        null;
   end mouseEntered;

   procedure mouseExited (This : in out LinesGraphicItem; mouseEvent_Param : access MouseEvent_Package.MouseEvent'Class) is
      mouseEvent : constant MouseEvent_Access := MouseEvent_Access (mouseEvent_Param);
   begin
        null;
   end mouseExited;

   procedure mousePressed (This : in out LinesGraphicItem; mouseEvent_Param : access MouseEvent_Package.MouseEvent'Class; xPixelsPerCell : Integer; yPixelsPerCell : Integer) is
      mouseEvent : constant MouseEvent_Access := MouseEvent_Access (mouseEvent_Param);
   begin
        null;
   end mousePressed;

   procedure mouseReleased (This : in out LinesGraphicItem; mouseEvent_Param : access MouseEvent_Package.MouseEvent'Class; xPixelsPerCell : Integer; yPixelsPerCell : Integer) is
      mouseEvent : constant MouseEvent_Access := MouseEvent_Access (mouseEvent_Param);
   begin
        null;
   end mouseReleased;

   procedure mouseDragged (This : in out LinesGraphicItem; mouseEvent_Param : access MouseEvent_Package.MouseEvent'Class; xPixelsPerCell : Integer; yPixelsPerCell : Integer) is
      mouseEvent : constant MouseEvent_Access := MouseEvent_Access (mouseEvent_Param);
   begin
        null;
   end mouseDragged;

   procedure mouseMoved (This : in out LinesGraphicItem; mouseEvent_Param : access MouseEvent_Package.MouseEvent'Class; x : Integer; y : Integer) is
      mouseEvent : constant MouseEvent_Access := MouseEvent_Access (mouseEvent_Param);
      mousePoint : GPoint_Access;
      point : GPoint_Access;
   begin
        begin
            mousePoint := PointFactory_Package.getInstance.createXY (mouseEvent.getPoint.x, mouseEvent.getPoint.y);
            point := PointFactory_Package.getInstance.createXY ((mousePoint.getX) / (x), (mousePoint.getY) / (y));
            This.currentMousePoint := point;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, LinesGraphicItem_Access'(This'Unchecked_Access), To_Unbounded_String ("mouseMoved"), e);
                end;
        end;
   end mouseMoved;

   procedure keyPressed (This : in out LinesGraphicItem; keyEvent_Param : access KeyEvent_Package.KeyEvent'Class) is
      keyEvent : constant KeyEvent_Access := KeyEvent_Access (keyEvent_Param);
      keyCode : Integer;
   begin
        begin
            keyCode := keyEvent.getKeyCode;
            if (keyCode) = (keyEvent.VK_ESCAPE) then
                StatusFactory_Package.getInstance.setStatus (To_Unbounded_String ("Deactivated"));
                LinesGraphicItem'Class (This).deactivate;
            elsif (keyCode) = (keyEvent.VK_UP) then
                LinesGraphicItem'Class (This).translate (0, -(1));
            elsif (keyCode) = (keyEvent.VK_DOWN) then
                LinesGraphicItem'Class (This).translate (0, 1);
            elsif (keyCode) = (keyEvent.VK_LEFT) then
                LinesGraphicItem'Class (This).translate (-(1), 0);
            elsif (keyCode) = (keyEvent.VK_RIGHT) then
                LinesGraphicItem'Class (This).translate (1, 0);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, LinesGraphicItem_Access'(This'Unchecked_Access), This.gameInputStrings.KEY_PRESSED, e);
                end;
        end;
   end keyPressed;

   procedure keyReleased (This : in out LinesGraphicItem; keyEvent_Param : access KeyEvent_Package.KeyEvent'Class) is
      keyEvent : constant KeyEvent_Access := KeyEvent_Access (keyEvent_Param);
   begin
        null;
   end keyReleased;

   procedure keyTyped (This : in out LinesGraphicItem; keyEvent_Param : access KeyEvent_Package.KeyEvent'Class) is
      keyEvent : constant KeyEvent_Access := KeyEvent_Access (keyEvent_Param);
   begin
        null;
   end keyTyped;

   procedure toDom (This : in out LinesGraphicItem; canvasDom_Param : access CanvasDom_Package.CanvasDom'Class) is
      Java_Result : constant Node_Access := LinesGraphicItem'Class (This).toDom (canvasDom_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toDom;

begin
   null;
   RECT := To_Unbounded_String ("rect");
   ARC := To_Unbounded_String ("arc");
   STRING_Id := To_Unbounded_String ("string");
   CHAR := To_Unbounded_String ("char");
   IMAGE := To_Unbounded_String ("image");
   item := 0;
   NAME := To_Unbounded_String ("Line Tool");

end org.allbinary.graphics.j2me.workarea.tools.LinesGraphicItem_Package;


