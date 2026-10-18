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


with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.math.RectangleCollisionUtil_Package; use org.allbinary.math.RectangleCollisionUtil_Package;

package body org.allbinary.math.RectangleCollisionPointUtil_Package is

   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   procedure Initialize_Fields (This : in out RectangleCollisionPointUtil'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out RectangleCollisionPointUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return RectangleCollisionPointUtil_Access is
      This : constant RectangleCollisionPointUtil_Access := new RectangleCollisionPointUtil;
   begin
      RectangleCollisionPointUtil_Package.Initialize (This.all);
      return This;
   end Create;

   function allPointsInside (rectX1 : Integer; rectY1 : Integer; rectX2 : Integer; rectY2 : Integer; list_Param : access BasicArrayList_Package.BasicArrayList'Class) return Boolean is
      list : constant BasicArrayList_Access := BasicArrayList_Access (list_Param);
      rectangleCollisionUtil : RectangleCollisionUtil_Access;
      point : GPoint_Access;
      index : Integer;
   begin
        rectangleCollisionUtil := RectangleCollisionUtil_Package.getInstance;
        point := null;
        index := list.size;
        while (Java_Pre_Decrement (index)) >= (0) loop
            point := GPoint_Access (list.objectArray (index));
            if not (rectangleCollisionUtil.isInside (rectX1, rectY1, rectX2, rectY2, point.getX, point.getY)) then
                return False;
            end if;
        end loop;
        return True;
   end allPointsInside;

   function allPointsInsideCell (rectX1 : Integer; rectY1 : Integer; rectX2 : Integer; rectY2 : Integer; list_Param : access BasicArrayList_Package.BasicArrayList'Class; xCellSize : Integer; yCellSize : Integer) return Boolean is
      list : constant BasicArrayList_Access := BasicArrayList_Access (list_Param);
      rectangleCollisionUtil : RectangleCollisionUtil_Access;
      point : GPoint_Access;
      index : Integer;
   begin
        rectangleCollisionUtil := RectangleCollisionUtil_Package.getInstance;
        point := null;
        index := list.size;
        while (Java_Pre_Decrement (index)) >= (0) loop
            point := GPoint_Access (list.objectArray (index));
            if not (rectangleCollisionUtil.isInside (rectX1, rectY1, rectX2, rectY2, (point.getX) * (xCellSize), (point.getY) * (yCellSize))) then
                return False;
            end if;
        end loop;
        return True;
   end allPointsInsideCell;

   procedure allPointsInside (rectX1 : Integer; rectY1 : Integer; rectX2 : Integer; rectY2 : Integer; list_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      Java_Result : constant Boolean := allPointsInside (rectX1, rectY1, rectX2, rectY2, list_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end allPointsInside;

   procedure allPointsInsideCell (rectX1 : Integer; rectY1 : Integer; rectX2 : Integer; rectY2 : Integer; list_Param : access BasicArrayList_Package.BasicArrayList'Class; xCellSize : Integer; yCellSize : Integer) is
      Java_Result : constant Boolean := allPointsInsideCell (rectX1, rectY1, rectX2, rectY2, list_Param, xCellSize, yCellSize);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end allPointsInsideCell;

end org.allbinary.math.RectangleCollisionPointUtil_Package;


