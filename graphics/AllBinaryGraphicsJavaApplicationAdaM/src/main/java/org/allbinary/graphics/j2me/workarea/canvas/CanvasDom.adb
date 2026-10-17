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


package body org.allbinary.graphics.j2me.workarea.canvas.CanvasDom_Package is

   procedure Initialize_Fields (This : in out CanvasDom'Class) is
   begin
      null;
      This.graphicsStrings := GraphicsStrings_Package.getInstance;
      
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out CanvasDom'Class; canvasNode : Node_Access) is
      name : Unbounded_String;
      angleNode : Node_Access;
      angleTextNode : Node_Access;
      angle : Long_Float;
      sizeNode : Node_Access;
      xNode : Node_Access;
      xTextNode : Node_Access;
      x_Case : Integer;
      yNode : Node_Access;
      yTextNode : Node_Access;
      y_Case : Integer;
      zoomNode : Node_Access;
      zoomTextNode : Node_Access;
      gridNode : Node_Access;
      gridSizeNode : Node_Access;
      gridXNode : Node_Access;
      gridXTextNode : Node_Access;
      gridX : Integer;
      gridYNode : Node_Access;
      gridYTextNode : Node_Access;
      gridY : Integer;
      enableNode : Node_Access;
      enableTextNode : Node_Access;
      possibleNode : Node_Access;
      possibleTextNode : Node_Access;
      graphicItemNodeList : BasicArrayList_Access;
   begin
      Initialize_Fields (This);
        This.grid_Case := Grid_Package.Create;
        This.grid_Case.grid_Case := PointFactory_Package.getInstance.createXY (0, 0);
        This.dimension := IntegerDimension_Package.Create (0, 0);
        name := canvasNode.getNodeName;
        if (name.compareTo (CanvasDom_Package.FRAME)) = (0) then
            This.graphicItemHashMap := StdUtil_Package.getInstance.createHashMap;
            angleNode := DomHelper_Package.getInstance.searchNodeList (ROTATE, canvasNode.getChildNodes);
            angleTextNode := angleNode.getFirstChild;
            angle := angleTextNode.getNodeValue.doubleValue;
            This.setAngle (angle);
            sizeNode := DomHelper_Package.getInstance.searchNodeList (SIZE, canvasNode.getChildNodes);
            xNode := DomHelper_Package.getInstance.searchNodeList (X, sizeNode.getChildNodes);
            xTextNode := xNode.getFirstChild;
            x_Case := xTextNode.getNodeValue.intValue;
            yNode := DomHelper_Package.getInstance.searchNodeList (Y, sizeNode.getChildNodes);
            yTextNode := yNode.getFirstChild;
            y_Case := yTextNode.getNodeValue.intValue;
            This.setWorkArea (x_Case, y_Case);
            zoomNode := DomHelper_Package.getInstance.searchNodeList (ZOOM, canvasNode.getChildNodes);
            zoomTextNode := zoomNode.getFirstChild;
            This.grid_Case.setZoom (zoomTextNode.getNodeValue.intValue);
            gridNode := DomHelper_Package.getInstance.searchNodeList (GRID, canvasNode.getChildNodes);
            gridSizeNode := DomHelper_Package.getInstance.searchNodeList (SIZE, gridNode.getChildNodes);
            gridXNode := DomHelper_Package.getInstance.searchNodeList (X, gridSizeNode.getChildNodes);
            gridXTextNode := gridXNode.getFirstChild;
            gridX := gridXTextNode.getNodeValue.intValue;
            gridYNode := DomHelper_Package.getInstance.searchNodeList (Y, gridSizeNode.getChildNodes);
            gridYTextNode := gridYNode.getFirstChild;
            gridY := gridYTextNode.getNodeValue.intValue;
            This.setGrid (gridX, gridY);
            enableNode := DomHelper_Package.getInstance.searchNodeList (ENABLED, gridNode.getChildNodes);
            enableTextNode := enableNode.getFirstChild;
            This.grid_Case.showGrid (enableTextNode.getNodeValue.booleanValue);
            possibleNode := DomHelper_Package.getInstance.searchNodeList (POSSIBLE, gridNode.getChildNodes);
            possibleTextNode := possibleNode.getFirstChild;
            This.grid_Case.isGridPossible := possibleTextNode.getNodeValue.booleanValue;
            graphicItemNodeList := DomHelper_Package.getInstance.getChildrenWithoutTextNodes (GRAPHICITEMS, canvasNode.getChildNodes);
            if (graphicItemNodeList) /= (null) then
                This.graphicItemHashMap := GraphicItemFactory_Package.getInstance.getInstance (graphicItemNodeList);
            end if;
        else
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Frame Element Not Found but Found: ") & name));
        end if;
   end Initialize;

   function Create (canvasNode : Node_Access) return CanvasDom_Access is
      This : constant CanvasDom_Access := new CanvasDom;
   begin
      Initialize (This.all, canvasNode);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out CanvasDom'Class; canvasJPanel : CanvasJPanel_Access) is
   begin
      Initialize_Fields (This);
        This.angle := canvasJPanel.getAngle;
        This.graphicItemHashMap := canvasJPanel.getGraphicItemHashMap;
        This.dimension := canvasJPanel.getCanvasDimension;
        This.grid_Case := Grid_Package.Create (canvasJPanel.getGrid);
        This.angle := canvasJPanel.getAngle;
   end Initialize;

   function Create (canvasJPanel : CanvasJPanel_Access) return CanvasDom_Access is
      This : constant CanvasDom_Access := new CanvasDom;
   begin
      Initialize (This.all, canvasJPanel);
      return This;
   end Create;

   function getAngle (This : in out CanvasDom) return Long_Float is
   begin
        return This.angle;
   end getAngle;

   function getGraphicItemHashMap (This : in out CanvasDom) return HashMap_Access is
   begin
        return This.graphicItemHashMap;
   end getGraphicItemHashMap;

   procedure setAngle (This : in out CanvasDom; angle : Long_Float) is
   begin
        This.angle := angle;
   end setAngle;

   --  throws Exception
   procedure setWorkArea (This : in out CanvasDom; x_Case : Integer; y_Case : Integer) is
   begin
        This.setDimension (IntegerDimension_Package.Create (x_Case, y_Case));
   end setWorkArea;

   --  throws Exception
   procedure setGrid (This : in out CanvasDom; gridX : Integer; gridY : Integer) is
   begin
        This.grid_Case.grid_Case := PointFactory_Package.getInstance.createXY (gridX, gridY);
   end setGrid;

   function getPointNode (This : in out CanvasDom; point : GPoint_Access; pointName : Unbounded_String) return Node_Access is
      document : Document_Access;
      pointNode : Node_Access;
      xNode : Node_Access;
      xTextNode : Node_Access;
      yNode : Node_Access;
      yTextNode : Node_Access;
   begin
        document := WorkAreaJPanel_Package.getDocument;
        pointNode := Node_Access (document.createElement (pointName));
        xNode := Node_Access (document.createElement (X));
        xTextNode := Node_Access (document.createTextNode (To_Unbounded_String (Java_Image (point.getX))));
        xNode.appendChild (xTextNode);
        yNode := Node_Access (document.createElement (Y));
        yTextNode := Node_Access (document.createTextNode (To_Unbounded_String (Java_Image (point.getY))));
        yNode.appendChild (yTextNode);
        pointNode.appendChild (xNode);
        pointNode.appendChild (yNode);
        return pointNode;
   end getPointNode;

   --  throws Exception
   function toDom (This : in out CanvasDom) return Node_Access is
      document : Document_Access;
      frameNode : Node_Access;
      angleNode : Node_Access;
      angleTextNode : Node_Access;
      sizeNode : Node_Access;
      zoomNode : Node_Access;
      zoomTextNode : Node_Access;
      gridNode : Node_Access;
      gridSizeNode : Node_Access;
      enableNode : Node_Access;
      enableTextNode : Node_Access;
      possibleNode : Node_Access;
      possibleTextNode : Node_Access;
      realSizeNode : Node_Access;
      vectorCenterGenerator : VectorCenterGenerator_Access;
      widthNode : Node_Access;
      widthTextNode : Node_Access;
      heightNode : Node_Access;
      heightTextNode : Node_Access;
      graphicItemNode : Node_Access;
      graphicItemArray : Java_Object_Access_Array_Access;
      size_Case : Integer;
      item : GraphicItemInterface_Access;
      index : Integer;
   begin
        document := WorkAreaJPanel_Package.getDocument;
        frameNode := Node_Access (document.createElement (FRAME));
        angleNode := Node_Access (document.createElement (ROTATE));
        angleTextNode := Node_Access (document.createTextNode (This.getAngle.toString));
        angleNode.appendChild (angleTextNode);
        sizeNode := Node_Access (This.getPointNode (PointFactory_Package.getInstance.createXY (This.getDimension.getWidth, This.getDimension.getHeight), SIZE));
        zoomNode := Node_Access (document.createElement (ZOOM));
        zoomTextNode := Node_Access (document.createTextNode (This.getGrid.getZoom.toString));
        zoomNode.appendChild (zoomTextNode);
        gridNode := Node_Access (document.createElement (GRID));
        gridSizeNode := Node_Access (This.getPointNode (This.getGrid.grid_Case, SIZE));
        gridNode.appendChild (gridSizeNode);
        enableNode := Node_Access (document.createElement (ENABLED));
        enableTextNode := Node_Access (document.createTextNode (This.getGrid.isGridOn.toString));
        enableNode.appendChild (enableTextNode);
        gridNode.appendChild (enableNode);
        possibleNode := Node_Access (document.createElement (POSSIBLE));
        possibleTextNode := Node_Access (document.createTextNode (This.getGrid.isGridPossible.toString));
        possibleNode.appendChild (possibleTextNode);
        gridNode.appendChild (possibleNode);
        realSizeNode := Node_Access (document.createElement (REAL_SIZE));
        vectorCenterGenerator := VectorCenterGenerator_Package.Create;
        vectorCenterGenerator.calculate (This.getGraphicItemHashMap);
        widthNode := Node_Access (document.createElement (This.graphicsStrings.WIDTH));
        widthTextNode := Node_Access (document.createTextNode (To_Unbounded_String (Java_Image (vectorCenterGenerator.getWidth))));
        widthNode.appendChild (widthTextNode);
        realSizeNode.appendChild (widthNode);
        heightNode := Node_Access (document.createElement (This.graphicsStrings.HEIGHT));
        heightTextNode := Node_Access (document.createTextNode (To_Unbounded_String (Java_Image (vectorCenterGenerator.getHeight))));
        heightNode.appendChild (heightTextNode);
        realSizeNode.appendChild (heightNode);
        frameNode.appendChild (angleNode);
        frameNode.appendChild (sizeNode);
        frameNode.appendChild (zoomNode);
        frameNode.appendChild (gridNode);
        frameNode.appendChild (realSizeNode);
        graphicItemNode := Node_Access (document.createElement (GRAPHICITEMS));
        graphicItemArray := This.getGraphicItemHashMap.keySet.toArray;
        size_Case := graphicItemArray'Length;
        for index in 0 .. (size_Case) - 1 loop
            item := GraphicItemInterface_Access (This.graphicItemHashMap.get (graphicItemArray (index)));
            if (item.getName) = (LinesGraphicItem_Package.getStaticName) then
                if item.isValid then
                    graphicItemNode.appendChild (item.toDom (This'Unchecked_Access));
                end if;
            end if;
        end loop;
        frameNode.appendChild (graphicItemNode);
        return frameNode;
   end toDom;

   function getDimension (This : in out CanvasDom) return IntegerDimension_Access is
   begin
        return This.dimension;
   end getDimension;

   procedure setDimension (This : in out CanvasDom; dimension : IntegerDimension_Access) is
   begin
        This.dimension := dimension;
   end setDimension;

   function getGrid (This : in out CanvasDom) return Grid_Access is
   begin
        return This.grid_Case;
   end getGrid;

   procedure getAngle (This : in out CanvasDom) is
      Java_Result : constant Long_Float := CanvasDom'Class (This).getAngle;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAngle;

   procedure getGraphicItemHashMap (This : in out CanvasDom) is
      Java_Result : constant HashMap_Access := CanvasDom'Class (This).getGraphicItemHashMap;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getGraphicItemHashMap;

   procedure getPointNode (This : in out CanvasDom; point : GPoint_Access; pointName : Unbounded_String) is
      Java_Result : constant Node_Access := CanvasDom'Class (This).getPointNode (point, pointName);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPointNode;

   procedure toDom (This : in out CanvasDom) is
      Java_Result : constant Node_Access := CanvasDom'Class (This).toDom;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toDom;

   procedure getDimension (This : in out CanvasDom) is
      Java_Result : constant IntegerDimension_Access := CanvasDom'Class (This).getDimension;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDimension;

   procedure getGrid (This : in out CanvasDom) is
      Java_Result : constant Grid_Access := CanvasDom'Class (This).getGrid;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getGrid;

begin
   null;
   FRAME := To_Unbounded_String ("frame");
   ROTATE := To_Unbounded_String ("rotate");
   SIZE := To_Unbounded_String ("size");
   X := To_Unbounded_String ("X");
   Y := To_Unbounded_String ("Y");
   ZOOM := To_Unbounded_String ("zoom");
   GRID := To_Unbounded_String ("grid");
   ENABLED := To_Unbounded_String ("enabled");
   POSSIBLE := To_Unbounded_String ("possible");
   GRAPHICITEMS := To_Unbounded_String ("graphicItems");
   REAL_SIZE := To_Unbounded_String ("realSize");

end org.allbinary.graphics.j2me.workarea.canvas.CanvasDom_Package;


