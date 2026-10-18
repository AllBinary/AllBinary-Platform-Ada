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


package body org.allbinary.graphics.j2me.workarea.canvas.CanvasJPanel_Package is

   procedure Initialize_Fields (This : in out CanvasJPanel'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.guiLog := GuiLog_Package.getInstance;
      This.gameInputStrings := GameInputStrings_Package.getInstance;
      This.selectedTool := null;
      This.graphicItemHashMap := null;
      This.canvasDimension := null;
      This.angle := 0.0;
      This.canvasTreeNode := null;
      This.frameLabel := null;
      This.workAreaJTreeJPanel := null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out CanvasJPanel'Class; workAreaJTreeJPanel_Param : access WorkAreaJTreeJPanel_Package.WorkAreaJTreeJPanel'Class; dimension_Param : access Dimension_Package.Dimension'Class; x : Integer; y : Integer) is
      workAreaJTreeJPanel : constant WorkAreaJTreeJPanel_Access := WorkAreaJTreeJPanel_Access (workAreaJTreeJPanel_Param);
      dimension : constant Dimension_Access := Dimension_Access (dimension_Param);
   begin
      JPanel_Package.Initialize (This);
      Initialize_Fields (This);
        This.grid := Grid_Package.Create;
        begin
            This.workAreaJTreeJPanel := workAreaJTreeJPanel;
            CanvasJPanel'Class (This).initComponents;
            CanvasJPanel'Class (This).initMyComponents;
            CanvasJPanel'Class (This).setSize (dimension);
            CanvasJPanel'Class (This).setCanvasSize (x, y);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if LOGGING.contains (LOGGING.GRAPHICSCREATION) then
                This.guiLog.put (To_Unbounded_String ("Constructor Error"), CanvasJPanel_Access'(This'Unchecked_Access), To_Unbounded_String ("contructor"), e);
            end if;
                end;
        end;
   end Initialize;

   function Create (workAreaJTreeJPanel_Param : access WorkAreaJTreeJPanel_Package.WorkAreaJTreeJPanel'Class; dimension_Param : access Dimension_Package.Dimension'Class; x : Integer; y : Integer) return CanvasJPanel_Access is
      This : constant CanvasJPanel_Access := new CanvasJPanel;
   begin
      CanvasJPanel_Package.Initialize (This.all, workAreaJTreeJPanel_Param, dimension_Param, x, y);
      return This;
   end Create;

   procedure Initialize (This : in out CanvasJPanel'Class; workAreaJTreeJPanel_Param : access WorkAreaJTreeJPanel_Package.WorkAreaJTreeJPanel'Class; dimension_Param : access Dimension_Package.Dimension'Class; canvasDom_Param : access CanvasDom_Package.CanvasDom'Class) is
      workAreaJTreeJPanel : constant WorkAreaJTreeJPanel_Access := WorkAreaJTreeJPanel_Access (workAreaJTreeJPanel_Param);
      dimension : constant Dimension_Access := Dimension_Access (dimension_Param);
      canvasDom : constant CanvasDom_Access := CanvasDom_Access (canvasDom_Param);
      graphicItemArray : Java_Object_Access_Array_Access;
      size : Integer;
      graphicItemTreeNode : MutableTreeNode_Access;
      index : Integer;
   begin
      JPanel_Package.Initialize (This);
      Initialize_Fields (This);
        This.grid := Grid_Package.Create (canvasDom.getGrid);
        begin
            This.workAreaJTreeJPanel := workAreaJTreeJPanel;
            CanvasJPanel'Class (This).initComponents;
            CanvasJPanel'Class (This).initMyComponents;
            CanvasJPanel'Class (This).setSize (dimension);
            CanvasJPanel'Class (This).setCanvasSize (canvasDom.getDimension.getWidth, canvasDom.getDimension.getHeight);
            This.graphicItemHashMap := canvasDom.getGraphicItemHashMap;
            graphicItemArray := This.graphicItemHashMap.keySet.toArray;
            size := graphicItemArray'Length;
            for index in 0 .. (size) - 1 loop
                graphicItemTreeNode := MutableTreeNode_Access (graphicItemArray (index));
                This.canvasTreeNode.add (graphicItemTreeNode);
            end loop;
            CanvasJPanel'Class (This).repaint;
            CanvasJPanel'Class (This).setAngle (canvasDom.getAngle);
            This.workAreaJTreeJPanel.updateTree;
            This.workAreaJTreeJPanel.expand;
            This.workAreaJTreeJPanel.repaint;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if LOGGING.contains (LOGGING.GRAPHICSCREATION) then
                This.guiLog.put (To_Unbounded_String ("Constructor Error"), CanvasJPanel_Access'(This'Unchecked_Access), To_Unbounded_String ("contructor"), e);
            end if;
                end;
        end;
   end Initialize;

   function Create (workAreaJTreeJPanel_Param : access WorkAreaJTreeJPanel_Package.WorkAreaJTreeJPanel'Class; dimension_Param : access Dimension_Package.Dimension'Class; canvasDom_Param : access CanvasDom_Package.CanvasDom'Class) return CanvasJPanel_Access is
      This : constant CanvasJPanel_Access := new CanvasJPanel;
   begin
      CanvasJPanel_Package.Initialize (This.all, workAreaJTreeJPanel_Param, dimension_Param, canvasDom_Param);
      return This;
   end Create;

   --  throws Exception
   procedure initMyComponents (This : in out CanvasJPanel) is
   begin
        This.frameLabel := CanvasTreeLabel_Package.Create (To_Unbounded_String ("FrameLabel") & CanvasJPanel_Package.frame.toString);
        This.canvasTreeNode := DefaultMutableTreeNode_Package.Create (This.frameLabel);
        CanvasJPanel_Package.frame := CanvasJPanel_Package.frame + 1;
        This.workAreaJTreeJPanel.add (CanvasJPanel'Class (This).getTreeNode);
        This.graphicItemHashMap := StdUtil_Package.getInstance.createHashMap;
        This.grid.grid := PointFactory_Package.getInstance.createXY (0, 0);
        CanvasJPanel'Class (This).setCanvasDimension (IntegerDimension_Package.Create (0, 0));
        This.selectedTool := null;
        CanvasJPanel'Class (This).addKeyListener (CanvasJPanel_Access'(This'Unchecked_Access));
        CanvasJPanel'Class (This).addMouseListener (CanvasJPanel_Access'(This'Unchecked_Access));
        CanvasJPanel'Class (This).addMouseMotionListener (CanvasJPanel_Access'(This'Unchecked_Access));
        MyGraphicItemEventService_Package.addListener (CanvasJPanel_Access'(This'Unchecked_Access));
   end initMyComponents;

   function getTreeNode (This : in out CanvasJPanel) return MutableTreeNode_Access is
   begin
        return This.canvasTreeNode;
   end getTreeNode;

   procedure initComponents (This : in out CanvasJPanel) is
   begin
        CanvasJPanel'Class (This).setLayout (GridLayout_Package.Create (1, 1));
   end initComponents;

   --  throws Exception
   procedure setCanvasSize (This : in out CanvasJPanel; x : Integer; y : Integer) is
   begin
        This.grid.isGridPossible := True;
        if (x) <= (0) then
            This.grid.isGridPossible := False;
            Java_Throw (Java_New_Exception ("GraphicsException", To_Unbounded_String ("X Size Error: ") & Java_Image (x), CanvasJPanel_Access'(This'Unchecked_Access), To_Unbounded_String ("setWorkAreaSize")));
        end if;
        if (y) <= (0) then
            This.grid.isGridPossible := False;
            Java_Throw (Java_New_Exception ("GraphicsException", To_Unbounded_String ("Y Size Error: ") & Java_Image (y), CanvasJPanel_Access'(This'Unchecked_Access), To_Unbounded_String ("setWorkAreaSize")));
        end if;
        if (x) > (CanvasJPanel'Class (This).getWidth) then
            This.grid.isGridPossible := False;
        end if;
        if (y) > (CanvasJPanel'Class (This).getHeight) then
            This.grid.isGridPossible := False;
        end if;
        CanvasJPanel'Class (This).setCanvasDimension (IntegerDimension_Package.Create (x, y));
        This.grid.isChanged := True;
   end setCanvasSize;

   procedure setGrid (This : in out CanvasJPanel; point_Param : access GPoint_Package.GPoint'Class) is
      point : constant GPoint_Access := GPoint_Access (point_Param);
   begin
        CanvasJPanel'Class (This).setGrid (point.getX, point.getY);
   end setGrid;

   procedure setGrid (This : in out CanvasJPanel; xSize : Integer; ySize : Integer) is
   begin
        begin
            if ((xSize) >= ((CanvasJPanel'Class (This).getCanvasDimension.getWidth) / (2))) or else ((xSize) < (1)) then
                Java_Throw (Java_New_Exception ("GraphicsException", To_Unbounded_String ("X Size Error: ") & Java_Image (xSize) & To_Unbounded_String (" WorkArea X: ") & Java_Image (CanvasJPanel'Class (This).getCanvasDimension.getWidth), CanvasJPanel_Access'(This'Unchecked_Access), To_Unbounded_String ("setGrid")));
            end if;
            if ((ySize) >= ((CanvasJPanel'Class (This).getCanvasDimension.getHeight) / (2))) or else ((ySize) < (1)) then
                Java_Throw (Java_New_Exception ("GraphicsException", To_Unbounded_String ("Y Size Error") & Java_Image (ySize) & To_Unbounded_String (" WorkArea Y: ") & Java_Image (CanvasJPanel'Class (This).getCanvasDimension.getHeight), CanvasJPanel_Access'(This'Unchecked_Access), To_Unbounded_String ("setGrid")));
            end if;
            This.grid.grid := PointFactory_Package.getInstance.createXY (xSize, ySize);
            This.grid.isChanged := True;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            null;
                end;
        end;
   end setGrid;

   --  throws Exception
   procedure setDefaultGrid (This : in out CanvasJPanel) is
      xPixelsPerWorkAreaPixel : Integer;
      yPixelsPerWorkAreaPixel : Integer;
   begin
        xPixelsPerWorkAreaPixel := (CanvasJPanel'Class (This).getWidth) / (CanvasJPanel'Class (This).getCanvasDimension.getWidth);
        yPixelsPerWorkAreaPixel := (CanvasJPanel'Class (This).getHeight) / (CanvasJPanel'Class (This).getCanvasDimension.getHeight);
        CanvasJPanel'Class (This).setGrid (1, 1);
        This.grid.isChanged := True;
   end setDefaultGrid;

   function getAngle (This : in out CanvasJPanel) return Long_Float is
   begin
        return This.angle;
   end getAngle;

   procedure setAngle (This : in out CanvasJPanel; angle : Long_Float) is
   begin
        This.angle := angle;
   end setAngle;

   procedure addAngle (This : in out CanvasJPanel; angle : Long_Float) is
   begin
        CanvasJPanel'Class (This).setAngle ((This.angle) + (angle));
   end addAngle;

   procedure explodeAll (This : in out CanvasJPanel) is
      newPoints : BasicArrayList_Access;
      graphicItemArray : Java_Object_Access_Array_Access;
      size : Integer;
      graphicItemNode : MutableTreeNode_Access;
      graphicItem : GraphicItemInterface_Access;
      newGraphicItem : GraphicItemInterface_Access;
      pointOne : GPoint_Access;
      pointTwo : GPoint_Access;
      index : Integer;
      size2 : Integer;
   begin
        newPoints := BasicArrayListD_Package.Create;
        graphicItemArray := CanvasJPanel'Class (This).getGraphicItemHashMap.keySet.toArray;
        size := graphicItemArray'Length;
        for index in 0 .. (size) - 1 loop
            graphicItemNode := MutableTreeNode_Access (graphicItemArray (index));
            graphicItem := GraphicItemInterface_Access (CanvasJPanel'Class (This).getGraphicItemHashMap.get (graphicItemNode));
            if (graphicItem.getName) = (LinesGraphicItem_Package.getStaticName) then
                while (graphicItem.getPointsInterface.getSize) > (2) loop
                    newGraphicItem := GraphicItemFactory_Package.getInstance.getInstance (graphicItem.getName).getInstance (CanvasJPanel_Access'(This'Unchecked_Access));
                    pointOne := GPoint_Package.getInstance (graphicItem.removePoint);
                    pointTwo := GPoint_Package.getInstance (graphicItem.removePoint);
                    if ((pointOne) /= (null)) and then ((pointTwo) /= (null)) then
                        newGraphicItem.addPoint (pointOne);
                        newGraphicItem.addPoint (pointTwo);
                    end if;
                    newPoints.add (newGraphicItem);
                end loop;
            end if;
        end loop;
        size2 := newPoints.size;
        for index in 0 .. (size2) - 1 loop
            newGraphicItem := GraphicItemInterface_Access (newPoints.get (index));
            This.canvasTreeNode.add (newGraphicItem.getTreeNode);
            CanvasJPanel'Class (This).getGraphicItemHashMap.put (newGraphicItem.getTreeNode, newGraphicItem);
        end loop;
        This.workAreaJTreeJPanel.updateTree;
        This.workAreaJTreeJPanel.expand;
        This.workAreaJTreeJPanel.repaint;
   end explodeAll;

   --  throws Exception
   procedure explode (This : in out CanvasJPanel; howMuch : Integer; explosionType : Integer) is
      graphicItemArray : Java_Object_Access_Array_Access;
      size : Integer;
      item : GraphicItemInterface_Access;
      basicArrayList : BasicArrayList_Access;
      newPoints : Points_Access;
      angleDelta : Integer;
      index : Integer;
   begin
        graphicItemArray := CanvasJPanel'Class (This).getGraphicItemHashMap.keySet.toArray;
        size := graphicItemArray'Length;
        for index in 0 .. (size) - 1 loop
            item := GraphicItemInterface_Access (CanvasJPanel'Class (This).getGraphicItemHashMap.get (graphicItemArray (index)));
            basicArrayList := VectorExplosionGenerator_Package.getInstance.createList (item.getPointsInterface.getPoints, howMuch, VectorExplosionGenerator_Package.getInstance.RANDOM);
            newPoints := Points_Package.Create;
            newPoints.addPoints (basicArrayList);
            item.setPointsInterface (newPoints);
            angleDelta := RandomRotationFactory_Package.getInstance.getNextRandomAngle (howMuch);
            item.setAngle (angleDelta);
        end loop;
        CanvasJPanel'Class (This).repaint;
   end explode;

   --  throws Exception
   procedure mirror (This : in out CanvasJPanel) is
      width : Integer;
      graphicItemArray : Java_Object_Access_Array_Access;
      size : Integer;
      item : GraphicItemInterface_Access;
      basicArrayList : BasicArrayList_Access;
      newPoints : Points_Access;
      index : Integer;
   begin
        width := CanvasJPanel'Class (This).getCanvasDimension.getWidth;
        graphicItemArray := CanvasJPanel'Class (This).getGraphicItemHashMap.keySet.toArray;
        size := graphicItemArray'Length;
        for index in 0 .. (size) - 1 loop
            item := GraphicItemInterface_Access (CanvasJPanel'Class (This).getGraphicItemHashMap.get (graphicItemArray (index)));
            basicArrayList := VectorMirrorGenerator_Package.getInstance.getInstance (item.getPointsInterface.getPoints, width);
            newPoints := Points_Package.Create;
            newPoints.addPoints (basicArrayList);
            item.setPointsInterface (newPoints);
        end loop;
        CanvasJPanel'Class (This).repaint;
   end mirror;

   --  throws Exception
   procedure center (This : in out CanvasJPanel) is
   begin
        VectorCenterGenerator_Package.Create.transform (CanvasJPanel'Class (This).getGraphicItemHashMap);
        CanvasJPanel'Class (This).repaint;
   end center;

   procedure setNewTool (This : in out CanvasJPanel) is
      newNode : MutableTreeNode_Access;
   begin
        begin
            StatusFactory_Package.getInstance.setStatus (To_Unbounded_String ("Tool Selected"));
            This.selectedTool := ToolFactory_Package.getInstance.getSelectedToolFactory.getInstance (CanvasJPanel_Access'(This'Unchecked_Access));
            newNode := This.selectedTool.getTreeNode;
            CanvasJPanel'Class (This).getGraphicItemHashMap.put (newNode, This.selectedTool);
            This.canvasTreeNode.add (newNode);
            if (CanvasJPanel'Class (This).getSelectedTool) = (null) then
                Java_Throw (Java_New_Exception ("GraphicsException", To_Unbounded_String ("No Tool Selected"), CanvasJPanel_Access'(This'Unchecked_Access), To_Unbounded_String ("setSelectedTool")));
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            null;
                end;
        end;
   end setNewTool;

   --  throws Exception
   procedure duplicateGraphicItem (This : in out CanvasJPanel; graphicItem_Param : access GraphicItemInterface_Package.GraphicItemInterface'Class) is
      graphicItem : constant GraphicItemInterface_Access := GraphicItemInterface_Access (graphicItem_Param);
      graphicItemClone : GraphicItemInterface_Access;
   begin
        graphicItemClone := graphicItem.duplicate;
        CanvasJPanel'Class (This).getGraphicItemHashMap.put (graphicItemClone.getTreeNode, graphicItemClone);
        This.canvasTreeNode.add (graphicItemClone.getTreeNode);
   end duplicateGraphicItem;

   --  throws Exception
   procedure duplicateGraphicItemHashMap (This : in out CanvasJPanel; hashMap_Param : access HashMap_Package.HashMap'Class) is
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
      mutableTreeNodeArray : Java_Object_Access_Array_Access;
      size : Integer;
      treeNode : MutableTreeNode_Access;
      graphicItem : GraphicItemInterface_Access;
      index : Integer;
   begin
        mutableTreeNodeArray := hashMap.keySet.toArray;
        size := mutableTreeNodeArray'Length;
        for index in 0 .. (size) - 1 loop
            treeNode := MutableTreeNode_Access (mutableTreeNodeArray (index));
            graphicItem := GraphicItemInterface_Access (hashMap.get (treeNode));
            CanvasJPanel'Class (This).duplicateGraphicItem (graphicItem);
        end loop;
   end duplicateGraphicItemHashMap;

   function getGraphicItemHashMap (This : in out CanvasJPanel) return HashMap_Access is
   begin
        return This.graphicItemHashMap;
   end getGraphicItemHashMap;

   function getXPixelsPerWorkAreaPixel (This : in out CanvasJPanel) return Integer is
      x : Integer;
   begin
        x := ((CanvasJPanel'Class (This).getGrid.grid.getX) * (((CanvasJPanel'Class (This).getWidth) - (10)))) / (CanvasJPanel'Class (This).getCanvasDimension.getWidth);
        if (CanvasJPanel'Class (This).getGrid.getZoom) = (1) then
            return 1;
        else
            return x;
        end if;
   end getXPixelsPerWorkAreaPixel;

   function getYPixelsPerWorkAreaPixel (This : in out CanvasJPanel) return Integer is
      y : Integer;
   begin
        y := ((CanvasJPanel'Class (This).getGrid.grid.getY) * (((CanvasJPanel'Class (This).getHeight) - (10)))) / (CanvasJPanel'Class (This).getCanvasDimension.getHeight);
        if (CanvasJPanel'Class (This).getGrid.getZoom) = (1) then
            return 1;
        else
            return y;
        end if;
   end getYPixelsPerWorkAreaPixel;

   function getSelectedTool (This : in out CanvasJPanel) return GraphicItemInterface_Access is
   begin
        return This.selectedTool;
   end getSelectedTool;

   procedure drawItems (This : in out CanvasJPanel; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      angleDouble : Long_Float;
      graphicItemArray : Java_Object_Access_Array_Access;
      size : Integer;
      item : GraphicItemInterface_Access;
      index : Integer;
   begin
        angleDouble := This.angle;
        graphicItemArray := CanvasJPanel'Class (This).getGraphicItemHashMap.keySet.toArray;
        size := graphicItemArray'Length;
        for index in 0 .. (size) - 1 loop
            item := GraphicItemInterface_Access (CanvasJPanel'Class (This).getGraphicItemHashMap.get (graphicItemArray (index)));
            item.paint (graphics, angleDouble, CanvasJPanel'Class (This).getCanvasDimension, CanvasJPanel'Class (This).getXPixelsPerWorkAreaPixel, CanvasJPanel'Class (This).getYPixelsPerWorkAreaPixel);
        end loop;
   end drawItems;

   procedure drawGrid (This : in out CanvasJPanel; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      xAdjust : Integer;
      yAdjust : Integer;
      xLeft : Integer;
      yUpper : Integer;
      xRight : Integer;
      yLower : Integer;
      value : Integer;
   begin
        xAdjust := (((CanvasJPanel'Class (This).getWidth) rem (CanvasJPanel'Class (This).getXPixelsPerWorkAreaPixel))) / (2);
        yAdjust := (((CanvasJPanel'Class (This).getHeight) rem (CanvasJPanel'Class (This).getYPixelsPerWorkAreaPixel))) / (2);
        xLeft := xAdjust;
        yUpper := yAdjust;
        xRight := (CanvasJPanel'Class (This).getWidth) - (xAdjust);
        yLower := (CanvasJPanel'Class (This).getHeight) - (yAdjust);
        graphics.setColor (CanvasJPanel_Package.gridColor);
        value := yAdjust;
        while (value) <= ((CanvasJPanel'Class (This).getHeight) - (yAdjust)) loop
            graphics.drawLine (xLeft, value, xRight, value);
            value := (value) + (CanvasJPanel'Class (This).getYPixelsPerWorkAreaPixel);
        end loop;
        value := xAdjust;
        while (value) <= ((CanvasJPanel'Class (This).getWidth) - (xAdjust)) loop
            graphics.drawLine (value, yUpper, value, yLower);
            value := (value) + (CanvasJPanel'Class (This).getYPixelsPerWorkAreaPixel);
        end loop;
   end drawGrid;

   procedure paint (This : in out CanvasJPanel; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        begin
            if CanvasJPanel'Class (This).getGrid.isChanged then
                graphics.setColor (CanvasJPanel_Package.backgroundColor);
                graphics.fillRect (0, 0, CanvasJPanel'Class (This).getWidth, CanvasJPanel'Class (This).getHeight);
                if (((CanvasJPanel'Class (This).getGrid.getZoom) > (2)) and then (CanvasJPanel'Class (This).getGrid.isGridOn)) and then (CanvasJPanel'Class (This).getGrid.isGridPossible) then
                    CanvasJPanel'Class (This).setDefaultGrid;
                    CanvasJPanel'Class (This).drawGrid (graphics);
                end if;
                CanvasJPanel'Class (This).drawItems (graphics);
                graphics.drawString (CanvasJPanel'Class (This).getAngle.toString, (CanvasJPanel'Class (This).getWidth) - (75), (CanvasJPanel'Class (This).getHeight) - (15));
                This.grid.isChanged := False;
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            null;
                end;
        end;
   end paint;

   procedure repaint (This : in out CanvasJPanel) is
   begin
        if (This.grid) /= (null) then
            This.grid.isChanged := True;
        end if;
        JPanel (This).repaint;
   end repaint;

   --  throws Exception
   function toDom (This : in out CanvasJPanel) return Node_Access is
   begin
        return CanvasDom_Package.Create (CanvasJPanel_Access'(This'Unchecked_Access)).toDom;
   end toDom;

   procedure changed (This : in out CanvasJPanel) is
   begin
        This.grid.isChanged := True;
   end changed;

   procedure mouseClicked (This : in out CanvasJPanel; mouseEvent_Param : access MouseEvent_Package.MouseEvent'Class) is
      mouseEvent : constant MouseEvent_Access := MouseEvent_Access (mouseEvent_Param);
      graphicItem : GraphicItemInterface_Access;
   begin
        StatusFactory_Package.getInstance.setStatusNoLog ((MouseStrings_Package.getInstance.MOUSE_CLICKED_LABEL) + (CanvasJPanel'Class (This).logMouseEvent (mouseEvent)));
        if ((CanvasJPanel'Class (This).getSelectedTool) /= (null)) and then (CanvasJPanel'Class (This).getSelectedTool.isActive) then
            graphicItem := CanvasJPanel'Class (This).getSelectedTool;
            graphicItem.mouseClicked (mouseEvent, CanvasJPanel'Class (This).getXPixelsPerWorkAreaPixel, CanvasJPanel'Class (This).getYPixelsPerWorkAreaPixel);
        else
            CanvasJPanel'Class (This).setNewTool;
            graphicItem := CanvasJPanel'Class (This).getSelectedTool;
            if (graphicItem) /= (null) then
                graphicItem.mouseClicked (mouseEvent, CanvasJPanel'Class (This).getXPixelsPerWorkAreaPixel, CanvasJPanel'Class (This).getYPixelsPerWorkAreaPixel);
            end if;
        end if;
        This.grid.isChanged := True;
        CanvasJPanel'Class (This).repaint;
        This.workAreaJTreeJPanel.updateTree;
        This.workAreaJTreeJPanel.expand;
        This.workAreaJTreeJPanel.repaint;
   end mouseClicked;

   procedure mouseEntered (This : in out CanvasJPanel; mouseEvent_Param : access MouseEvent_Package.MouseEvent'Class) is
      mouseEvent : constant MouseEvent_Access := MouseEvent_Access (mouseEvent_Param);
   begin
        StatusFactory_Package.getInstance.setStatusNoLog (CanvasJPanel'Class (This).logMouseEvent (mouseEvent));
   end mouseEntered;

   procedure mouseExited (This : in out CanvasJPanel; mouseEvent_Param : access MouseEvent_Package.MouseEvent'Class) is
      mouseEvent : constant MouseEvent_Access := MouseEvent_Access (mouseEvent_Param);
   begin
        StatusFactory_Package.getInstance.setStatusNoLog (CanvasJPanel'Class (This).logMouseEvent (mouseEvent));
   end mouseExited;

   procedure mousePressed (This : in out CanvasJPanel; mouseEvent_Param : access MouseEvent_Package.MouseEvent'Class) is
      mouseEvent : constant MouseEvent_Access := MouseEvent_Access (mouseEvent_Param);
      graphicItem : GraphicItemInterface_Access;
   begin
        StatusFactory_Package.getInstance.setStatusNoLog ((MouseStrings_Package.getInstance.MOUSE_PRESSED_LABEL) + (CanvasJPanel'Class (This).logMouseEvent (mouseEvent)));
        if (CanvasJPanel'Class (This).getSelectedTool) /= (null) then
            graphicItem := CanvasJPanel'Class (This).getSelectedTool;
            graphicItem.mousePressed (mouseEvent, CanvasJPanel'Class (This).getXPixelsPerWorkAreaPixel, CanvasJPanel'Class (This).getYPixelsPerWorkAreaPixel);
        end if;
        CanvasJPanel'Class (This).requestFocus;
        This.grid.isChanged := True;
        CanvasJPanel'Class (This).repaint;
   end mousePressed;

   procedure mouseReleased (This : in out CanvasJPanel; mouseEvent_Param : access MouseEvent_Package.MouseEvent'Class) is
      mouseEvent : constant MouseEvent_Access := MouseEvent_Access (mouseEvent_Param);
      graphicItem : GraphicItemInterface_Access;
   begin
        StatusFactory_Package.getInstance.setStatusNoLog ((MouseStrings_Package.getInstance.MOUSE_RELEASED_LABEL) + (CanvasJPanel'Class (This).logMouseEvent (mouseEvent)));
        graphicItem := CanvasJPanel'Class (This).getSelectedTool;
        if (graphicItem) /= (null) then
            graphicItem.mouseReleased (mouseEvent, CanvasJPanel'Class (This).getXPixelsPerWorkAreaPixel, CanvasJPanel'Class (This).getYPixelsPerWorkAreaPixel);
        end if;
        CanvasJPanel'Class (This).requestFocus;
        This.grid.isChanged := True;
        CanvasJPanel'Class (This).repaint;
   end mouseReleased;

   procedure mouseDragged (This : in out CanvasJPanel; mouseEvent_Param : access MouseEvent_Package.MouseEvent'Class) is
      mouseEvent : constant MouseEvent_Access := MouseEvent_Access (mouseEvent_Param);
      graphicItem : GraphicItemInterface_Access;
   begin
        StatusFactory_Package.getInstance.setStatusNoLog ((MouseStrings_Package.getInstance.MOUSE_DRAGGED_LABEL) + (CanvasJPanel'Class (This).logMouseEvent (mouseEvent)));
        graphicItem := CanvasJPanel'Class (This).getSelectedTool;
        if (graphicItem) /= (null) then
            graphicItem.mouseDragged (mouseEvent, CanvasJPanel'Class (This).getXPixelsPerWorkAreaPixel, CanvasJPanel'Class (This).getYPixelsPerWorkAreaPixel);
        end if;
        CanvasJPanel'Class (This).requestFocus;
        This.grid.isChanged := True;
        CanvasJPanel'Class (This).repaint;
   end mouseDragged;

   procedure mouseMoved (This : in out CanvasJPanel; mouseEvent_Param : access MouseEvent_Package.MouseEvent'Class) is
      mouseEvent : constant MouseEvent_Access := MouseEvent_Access (mouseEvent_Param);
      graphicItem : GraphicItemInterface_Access;
   begin
        StatusFactory_Package.getInstance.setStatusNoLog ((MouseStrings_Package.getInstance.MOUSE_MOVED_LABEL) + (CanvasJPanel'Class (This).logMouseEvent (mouseEvent)));
        if ((CanvasJPanel'Class (This).getSelectedTool) /= (null)) and then (CanvasJPanel'Class (This).getSelectedTool.isActive) then
            graphicItem := CanvasJPanel'Class (This).getSelectedTool;
            graphicItem.mouseMoved (mouseEvent, CanvasJPanel'Class (This).getXPixelsPerWorkAreaPixel, CanvasJPanel'Class (This).getYPixelsPerWorkAreaPixel);
        end if;
        CanvasJPanel'Class (This).requestFocus;
        This.grid.isChanged := True;
        CanvasJPanel'Class (This).repaint;
   end mouseMoved;

   function logMouseEvent (This : in out CanvasJPanel; mouseEvent_Param : access MouseEvent_Package.MouseEvent'Class) return Unbounded_String is
      mouseEvent : constant MouseEvent_Access := MouseEvent_Access (mouseEvent_Param);
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (PositionStrings_Package.getInstance.X_LABEL);
        stringBuffer.appendint (Integer ((mouseEvent.getX) / (CanvasJPanel'Class (This).getXPixelsPerWorkAreaPixel)));
        stringBuffer.append (CommonSeps_Package.getInstance.SPACE);
        stringBuffer.append (PositionStrings_Package.getInstance.Y_LABEL);
        stringBuffer.appendint (Integer ((mouseEvent.getY) / (CanvasJPanel'Class (This).getYPixelsPerWorkAreaPixel)));
        return stringBuffer.toString;
   end logMouseEvent;

   procedure keyPressed (This : in out CanvasJPanel; keyEvent_Param : access KeyEvent_Package.KeyEvent'Class) is
      keyEvent : constant KeyEvent_Access := KeyEvent_Access (keyEvent_Param);
      graphicItemArray : Java_Object_Access_Array_Access;
      size : Integer;
      graphicItemInterface : GraphicItemInterface_Access;
      keyCode : Integer;
      index : Integer;
      commonStrings : CommonStrings_Access;
      graphicItem : GraphicItemInterface_Access;
   begin
        StatusFactory_Package.getInstance.setStatus (To_Unbounded_String ("Key Pressed"));
        begin
            graphicItemArray := This.graphicItemHashMap.keySet.toArray;
            size := graphicItemArray'Length;
            for index in 0 .. (size) - 1 loop
                graphicItemInterface := GraphicItemInterface_Access (This.graphicItemHashMap.get (graphicItemArray (index)));
                keyCode := keyEvent.getKeyCode;
                if graphicItemInterface.isActive then
                    if (keyCode) = (keyEvent.VK_UP) then
                        graphicItemInterface.translate (0, -(1));
                    elsif (keyCode) = (keyEvent.VK_DOWN) then
                        graphicItemInterface.translate (0, 1);
                    elsif (keyCode) = (keyEvent.VK_LEFT) then
                        graphicItemInterface.translate (-(1), 0);
                    elsif (keyCode) = (keyEvent.VK_RIGHT) then
                        graphicItemInterface.translate (1, 0);
                    end if;
                end if;
            end loop;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.put (commonStrings.EXCEPTION_Id, CanvasJPanel_Access'(This'Unchecked_Access), This.gameInputStrings.KEY_PRESSED, e);
                end;
        end;
        if ((CanvasJPanel'Class (This).getSelectedTool) /= (null)) and then (CanvasJPanel'Class (This).getSelectedTool.isActive) then
            StatusFactory_Package.getInstance.setStatus (To_Unbounded_String ("Key Pressed for Tool"));
            graphicItem := CanvasJPanel'Class (This).getSelectedTool;
            graphicItem.keyPressed (keyEvent);
        else
            CanvasJPanel'Class (This).setNewTool;
        end if;
        This.grid.isChanged := True;
        CanvasJPanel'Class (This).repaint;
   end keyPressed;

   procedure keyReleased (This : in out CanvasJPanel; keyEvent_Param : access KeyEvent_Package.KeyEvent'Class) is
      keyEvent : constant KeyEvent_Access := KeyEvent_Access (keyEvent_Param);
   begin
        null;
   end keyReleased;

   procedure keyTyped (This : in out CanvasJPanel; keyEvent_Param : access KeyEvent_Package.KeyEvent'Class) is
      keyEvent : constant KeyEvent_Access := KeyEvent_Access (keyEvent_Param);
   begin
        null;
   end keyTyped;

   procedure delete (This : in out CanvasJPanel; evt_Param : access MyGraphicItemEvent_Package.MyGraphicItemEvent'Class) is
      evt : constant MyGraphicItemEvent_Access := MyGraphicItemEvent_Access (evt_Param);
   begin
        CanvasJPanel'Class (This).getGraphicItemHashMap.remove (evt.getTreeNode);
        This.workAreaJTreeJPanel.updateTree;
        This.workAreaJTreeJPanel.expand;
        This.workAreaJTreeJPanel.repaint;
   end delete;

   procedure deselect (This : in out CanvasJPanel; evt_Param : access MyGraphicItemEvent_Package.MyGraphicItemEvent'Class) is
      evt : constant MyGraphicItemEvent_Access := MyGraphicItemEvent_Access (evt_Param);
      graphicItemInterface : GraphicItemInterface_Access;
   begin
        graphicItemInterface := GraphicItemInterface_Access (CanvasJPanel'Class (This).getGraphicItemHashMap.get (evt.getTreeNode));
        if (graphicItemInterface) /= (null) then
            graphicItemInterface.setColor (Color_Package.WHITE);
            graphicItemInterface.deactivate;
            This.workAreaJTreeJPanel.repaint;
        end if;
   end deselect;

   procedure highlight (This : in out CanvasJPanel; evt_Param : access MyGraphicItemEvent_Package.MyGraphicItemEvent'Class) is
      evt : constant MyGraphicItemEvent_Access := MyGraphicItemEvent_Access (evt_Param);
      graphicItemInterface : GraphicItemInterface_Access;
   begin
        graphicItemInterface := GraphicItemInterface_Access (CanvasJPanel'Class (This).getGraphicItemHashMap.get (evt.getTreeNode));
        if (graphicItemInterface) /= (null) then
            graphicItemInterface.setColor (Color_Package.YELLOW);
            graphicItemInterface.activate;
            This.workAreaJTreeJPanel.repaint;
        end if;
   end highlight;

   --  throws Exception
   function duplicate (This : in out CanvasJPanel) return CanvasJPanel_Access is
      newCanvasJPanel : CanvasJPanel_Access;
   begin
        newCanvasJPanel := CanvasJPanel_Package.Create (This.workAreaJTreeJPanel, CanvasJPanel'Class (This).getSize, CanvasJPanel'Class (This).getCanvasDimension.getWidth, CanvasJPanel'Class (This).getCanvasDimension.getHeight);
        newCanvasJPanel.setGrid (CanvasJPanel'Class (This).getGrid.getGrid);
        newCanvasJPanel.setAngle (CanvasJPanel'Class (This).getAngle);
        newCanvasJPanel.duplicateGraphicItemHashMap (CanvasJPanel'Class (This).getGraphicItemHashMap);
        This.workAreaJTreeJPanel.updateTree;
        This.workAreaJTreeJPanel.expand;
        This.workAreaJTreeJPanel.repaint;
        return newCanvasJPanel;
   end duplicate;

   --  throws Exception
   procedure duplicate (This : in out CanvasJPanel; event_Param : access MyGraphicItemEvent_Package.MyGraphicItemEvent'Class) is
      event : constant MyGraphicItemEvent_Access := MyGraphicItemEvent_Access (event_Param);
      treeNode : MutableTreeNode_Access;
      graphicItem : GraphicItemInterface_Access;
   begin
        treeNode := event.getTreeNode;
        graphicItem := GraphicItemInterface_Access (CanvasJPanel'Class (This).getGraphicItemHashMap.get (treeNode));
        if (graphicItem) /= (null) then
            CanvasJPanel'Class (This).duplicateGraphicItem (graphicItem);
            This.workAreaJTreeJPanel.updateTree;
            This.workAreaJTreeJPanel.expand;
            This.workAreaJTreeJPanel.repaint;
        end if;
   end duplicate;

   procedure rotate (This : in out CanvasJPanel; event_Param : access MyGraphicItemEvent_Package.MyGraphicItemEvent'Class) is
      event : constant MyGraphicItemEvent_Access := MyGraphicItemEvent_Access (event_Param);
      treeNode : MutableTreeNode_Access;
      graphicItem : GraphicItemInterface_Access;
   begin
        treeNode := event.getTreeNode;
        graphicItem := GraphicItemInterface_Access (CanvasJPanel'Class (This).getGraphicItemHashMap.get (treeNode));
        if (graphicItem) /= (null) then
            graphicItem.addAngle (event.getAngle);
        end if;
   end rotate;

   function getCanvasDimension (This : in out CanvasJPanel) return IntegerDimension_Access is
   begin
        return This.canvasDimension;
   end getCanvasDimension;

   procedure setCanvasDimension (This : in out CanvasJPanel; canvasDimension_Param : access IntegerDimension_Package.IntegerDimension'Class) is
      canvasDimension : constant IntegerDimension_Access := IntegerDimension_Access (canvasDimension_Param);
   begin
        This.canvasDimension := canvasDimension;
   end setCanvasDimension;

   function getGrid (This : in out CanvasJPanel) return Grid_Access is
   begin
        return This.grid;
   end getGrid;

   procedure logMouseEvent (This : in out CanvasJPanel; mouseEvent_Param : access MouseEvent_Package.MouseEvent'Class) is
      Java_Result : constant Unbounded_String := CanvasJPanel'Class (This).logMouseEvent (mouseEvent_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end logMouseEvent;

begin
   null;
   frame := 0;
   gridColor := Color_Package.Create (BasicColorFactory_Package.getInstance.WHITE.intValue);
   backgroundColor := Color_Package.Create (BasicColorFactory_Package.getInstance.CLEAR_COLOR.intValue);

end org.allbinary.graphics.j2me.workarea.canvas.CanvasJPanel_Package;


