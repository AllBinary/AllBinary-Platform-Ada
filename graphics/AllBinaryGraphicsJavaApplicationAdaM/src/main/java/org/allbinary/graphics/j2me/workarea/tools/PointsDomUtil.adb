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


with org.allbinary.graphics.PointFactory_Package; use org.allbinary.graphics.PointFactory_Package;
with org.allbinary.graphics.j2me.workarea.WorkAreaJPanel_Package; use org.allbinary.graphics.j2me.workarea.WorkAreaJPanel_Package;
with org.allbinary.math.PositionStrings_Package; use org.allbinary.math.PositionStrings_Package;
with org.allbinary.graphics.j2me.workarea.tools.PointsUtil_Package; use org.allbinary.graphics.j2me.workarea.tools.PointsUtil_Package;

package body org.allbinary.graphics.j2me.workarea.tools.PointsDomUtil_Package is

   package PointFactory_Package renames Standard.org.allbinary.graphics.PointFactory_Package;
   package WorkAreaJPanel_Package renames Standard.org.allbinary.graphics.j2me.workarea.WorkAreaJPanel_Package;
   package PositionStrings_Package renames Standard.org.allbinary.math.PositionStrings_Package;
   procedure Initialize_Fields (This : in out PointsDomUtil'Class) is
   begin
      null;
      This.LINES := To_Unbounded_String ("lines");
      This.POINTONE := To_Unbounded_String ("pointOne");
      This.POINTTWO := To_Unbounded_String ("pointTwo");
      This.ROTATEDPOINTONE := To_Unbounded_String ("rotatedPointOne");
      This.ROTATEDPOINTTWO := To_Unbounded_String ("rotatedPointTwo");
      This.LINE := To_Unbounded_String ("line");
   end Initialize_Fields;

   procedure Initialize (This : in out PointsDomUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return PointsDomUtil_Access is
      This : constant PointsDomUtil_Access := new PointsDomUtil;
   begin
      PointsDomUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return PointsDomUtil_Access is
   begin
        return PointsDomUtil_Package.instance;
   end getInstance;

   --  throws Exception
   function toDom (This : in out PointsDomUtil; canvasDom_Param : access CanvasDom_Package.CanvasDom'Class; pointVector_Param : access BasicArrayList_Package.BasicArrayList'Class) return Node_Access is
      canvasDom : constant CanvasDom_Access := CanvasDom_Access (canvasDom_Param);
      pointVector : constant BasicArrayList_Access := BasicArrayList_Access (pointVector_Param);
      tempPointVector : BasicArrayList_Access;
      document : Document_Access;
      linesNode : Node_Access;
      size2 : Integer;
      size : Integer;
      firstPoint : GPoint_Access;
      rotatedFirstPoint : GPoint_Access;
      index : Integer;
      lineNode : Node_Access;
      rotatedSecondPoint : GPoint_Access;
      secondPoint : GPoint_Access;
      pointOneNode : Node_Access;
      pointTwoNode : Node_Access;
      rotatedPointOneNode : Node_Access;
      rotatedPointTwoNode : Node_Access;
   begin
        tempPointVector := PointsUtil_Package.getInstance.doTransforms (pointVector, canvasDom.getAngle, PointFactory_Package.getInstance.createXY (canvasDom.getDimension.getWidth, canvasDom.getDimension.getHeight));
        document := WorkAreaJPanel_Package.getDocument;
        linesNode := Node_Access (document.createElement (This.LINES));
        size2 := tempPointVector.size;
        size := pointVector.size;
        firstPoint := null;
        rotatedFirstPoint := null;
        index := 0;
        if ((index) < (size)) and then ((index) < (size2)) then
            rotatedFirstPoint := GPoint_Access (tempPointVector.get (index));
            firstPoint := GPoint_Access (pointVector.get (index));
            index := index + 1;
        end if;
        while ((index) < (size)) and then ((index) < (size2)) loop
            lineNode := Node_Access (document.createElement (This.LINE));
            rotatedSecondPoint := GPoint_Access (tempPointVector.get (index));
            secondPoint := GPoint_Access (pointVector.get (index));
            pointOneNode := PointsDomUtil'Class (This).getPointNode (firstPoint, This.POINTONE);
            pointTwoNode := PointsDomUtil'Class (This).getPointNode (secondPoint, This.POINTTWO);
            rotatedPointOneNode := PointsDomUtil'Class (This).getPointNode (rotatedFirstPoint, This.ROTATEDPOINTONE);
            rotatedPointTwoNode := PointsDomUtil'Class (This).getPointNode (rotatedSecondPoint, This.ROTATEDPOINTTWO);
            lineNode.appendChild (pointOneNode);
            lineNode.appendChild (pointTwoNode);
            lineNode.appendChild (rotatedPointOneNode);
            lineNode.appendChild (rotatedPointTwoNode);
            firstPoint := secondPoint;
            rotatedFirstPoint := rotatedSecondPoint;
            linesNode.appendChild (lineNode);
            index := index + 1;
        end loop;
        return linesNode;
   end toDom;

   function getPointNode (This : in out PointsDomUtil; point_Param : access GPoint_Package.GPoint'Class; pointName : Unbounded_String) return Node_Access is
      point : constant GPoint_Access := GPoint_Access (point_Param);
      document : Document_Access;
      pointNode : Node_Access;
      xNode : Node_Access;
      xTextNode : Node_Access;
      yNode : Node_Access;
      yTextNode : Node_Access;
   begin
        document := WorkAreaJPanel_Package.getDocument;
        pointNode := Node_Access (document.createElement (pointName));
        xNode := Node_Access (document.createElement (PositionStrings_Package.getInstance.X));
        xTextNode := Node_Access (document.createTextNode (To_Unbounded_String (Java_Image (point.getX))));
        xNode.appendChild (xTextNode);
        yNode := Node_Access (document.createElement (PositionStrings_Package.getInstance.Y));
        yTextNode := Node_Access (document.createTextNode (To_Unbounded_String (Java_Image (point.getY))));
        yNode.appendChild (yTextNode);
        pointNode.appendChild (xNode);
        pointNode.appendChild (yNode);
        return pointNode;
   end getPointNode;

   procedure toDom (This : in out PointsDomUtil; canvasDom_Param : access CanvasDom_Package.CanvasDom'Class; pointVector_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      Java_Result : constant Node_Access := PointsDomUtil'Class (This).toDom (canvasDom_Param, pointVector_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toDom;

   procedure getPointNode (This : in out PointsDomUtil; point_Param : access GPoint_Package.GPoint'Class; pointName : Unbounded_String) is
      Java_Result : constant Node_Access := PointsDomUtil'Class (This).getPointNode (point_Param, pointName);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPointNode;

begin
   null;
   instance := PointsDomUtil_Package.Create;

end org.allbinary.graphics.j2me.workarea.tools.PointsDomUtil_Package;


