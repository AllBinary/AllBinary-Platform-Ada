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


package body org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package is

   procedure Initialize_Fields (This : in out GeographicMapCellPosition'Class) is
   begin
      null;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out GeographicMapCellPosition'Class; column : Integer; row : Integer; columns : Integer; rows : Integer; width : Integer; height : Integer) is
      x : Integer;
      y : Integer;
      pointFactory : PointFactory_Access;
   begin
        CellPosition_Package.Initialize (This, column, row, columns, rows);
        Initialize_Fields (This);
        x := (This.getColumn) * (width);
        y := (This.getRow) * (height);
        pointFactory := PointFactory_Package.getInstance;
        This.point := pointFactory.createXY (x, y);
        This.midPoint := pointFactory.createXY ((x) + ((Java_Shift_Right_Arithmetic (width, 1))), (y) + ((Java_Shift_Right_Arithmetic (height, 1))));
   end Initialize;

   function Create (column : Integer; row : Integer; columns : Integer; rows : Integer; width : Integer; height : Integer) return GeographicMapCellPosition_Access is
      This : constant GeographicMapCellPosition_Access := new GeographicMapCellPosition;
   begin
      GeographicMapCellPosition_Package.Initialize (This.all, column, row, columns, rows, width, height);
      return This;
   end Create;

   function getPoint (This : in out GeographicMapCellPosition) return GPoint_Access is
   begin
        return This.point;
   end getPoint;

   function getMidPoint (This : in out GeographicMapCellPosition) return GPoint_Access is
   begin
        return This.midPoint;
   end getMidPoint;

   procedure setMidPoint (This : in out GeographicMapCellPosition; midPoint_Param : access GPoint_Package.GPoint'Class) is
      midPoint : constant GPoint_Access := GPoint_Access (midPoint_Param);
   begin
        This.midPoint := midPoint;
   end setMidPoint;

end org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;


