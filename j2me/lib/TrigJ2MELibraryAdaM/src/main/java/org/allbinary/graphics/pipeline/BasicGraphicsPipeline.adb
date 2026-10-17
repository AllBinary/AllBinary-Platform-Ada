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


package body org.allbinary.graphics.pipeline.BasicGraphicsPipeline_Package is

   procedure Initialize_Fields (This : in out BasicGraphicsPipeline'Class) is
   begin
      null;
      
      This.noDecimalTrigTable := NoDecimalTrigTable_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out BasicGraphicsPipeline'Class; points_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      points : constant BasicArrayList_Access := BasicArrayList_Access (points_Param);
   begin
      Initialize_Fields (This);
        This.pointBasicArrayList := points;
   end Initialize;

   function Create (points_Param : access BasicArrayList_Package.BasicArrayList'Class) return BasicGraphicsPipeline_Access is
      This : constant BasicGraphicsPipeline_Access := new BasicGraphicsPipeline;
   begin
      BasicGraphicsPipeline_Package.Initialize (This.all, points_Param);
      return This;
   end Create;

   procedure setInitMatrix (This : in out BasicGraphicsPipeline; points_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      points : constant BasicArrayList_Access := BasicArrayList_Access (points_Param);
   begin
        This.pointBasicArrayList := points;
   end setInitMatrix;

   procedure createMatrix (This : in out BasicGraphicsPipeline) is
   begin
        null;
   end createMatrix;

   --  throws Exception
   procedure translate (This : in out BasicGraphicsPipeline; x : Integer; y : Integer) is
      newBasicArrayList : BasicArrayList_Access;
      size : Integer;
      pointFactory : PointFactory_Access;
      secondPoint : GPoint_Access;
      index : Integer;
   begin
        newBasicArrayList := BasicArrayListD_Package.Create;
        size := This.pointBasicArrayList.size;
        pointFactory := PointFactory_Package.getInstance;
        secondPoint := null;
        for index in 0 .. (size) - 1 loop
            secondPoint := GPoint_Access (This.pointBasicArrayList.objectArray (index));
            if (secondPoint.getX) /= (1000) then
                newBasicArrayList.add (pointFactory.createXY ((secondPoint.getX) + (x), (secondPoint.getY) + (y)));
            else
                newBasicArrayList.add (secondPoint);
            end if;
        end loop;
        This.pointBasicArrayList := newBasicArrayList;
   end translate;

   --  throws Exception
   procedure rotateToAngle (This : in out BasicGraphicsPipeline; angle_Param : access Angle_Package.Angle'Class) is
      angle : constant Angle_Access := Angle_Access (angle_Param);
   begin
        This.rotate (Integer (angle.getValue));
   end rotateToAngle;

   --  throws Exception
   procedure rotate (This : in out BasicGraphicsPipeline; angle : Integer) is
      newBasicArrayList : BasicArrayList_Access;
      secondPoint : GPoint_Access;
      y : Long_Long_Integer;
      secondX : Long_Long_Integer;
      secondY : Long_Long_Integer;
      point : GPoint_Access;
      pointFactory : PointFactory_Access;
      size : Integer;
      sin : Long_Long_Integer;
      cos : Long_Long_Integer;
      index : Integer;
   begin
        newBasicArrayList := BasicArrayListD_Package.Create;
        secondPoint := null;
        y := 0;
        secondX := 0;
        secondY := 0;
        point := null;
        pointFactory := PointFactory_Package.getInstance;
        size := This.pointBasicArrayList.size;
        sin := 0;
        cos := 0;
        for index in 0 .. (size) - 1 loop
            secondPoint := GPoint_Access (This.pointBasicArrayList.objectArray (index));
            if (secondPoint.getX) /= (1000) then
                sin := This.noDecimalTrigTable.sin (angle);
                cos := This.noDecimalTrigTable.cos (angle);
                y := (secondPoint.getY) * (sin);
                secondX := (((secondPoint.getX) * (cos))) - (y);
                secondY := (((secondPoint.getX) * (sin))) + (((secondPoint.getY) * (cos)));
                point := pointFactory.createXY ((Integer (secondX)) / (10000), (Integer (secondY)) / (10000));
                newBasicArrayList.add (point);
            else
                newBasicArrayList.add (secondPoint);
            end if;
        end loop;
        This.pointBasicArrayList := newBasicArrayList;
   end rotate;

   --  throws Exception
   procedure mirror (This : in out BasicGraphicsPipeline; width : Integer) is
      pointFactory : PointFactory_Access;
      halfWidth : Integer;
      newBasicArrayList : BasicArrayList_Access;
      secondPoint : GPoint_Access;
      newX : Integer;
      point : GPoint_Access;
      size : Integer;
      index : Integer;
   begin
        pointFactory := PointFactory_Package.getInstance;
        halfWidth := (Java_Shift_Right_Arithmetic (width, 1));
        newBasicArrayList := BasicArrayListD_Package.Create;
        secondPoint := null;
        newX := 0;
        point := null;
        size := This.pointBasicArrayList.size;
        for index in 0 .. (size) - 1 loop
            secondPoint := GPoint_Access (This.pointBasicArrayList.objectArray (index));
            if (secondPoint.getX) /= (1000) then
                newX := 0;
                if (secondPoint.getX) > (halfWidth) then
                    newX := (halfWidth) - (((secondPoint.getX) - (halfWidth)));
                else
                    newX := (halfWidth) + (((halfWidth) - (secondPoint.getX)));
                end if;
                point := pointFactory.createXY (newX, secondPoint.getY);
                newBasicArrayList.add (point);
            else
                newBasicArrayList.add (secondPoint);
            end if;
        end loop;
        This.pointBasicArrayList := newBasicArrayList;
   end mirror;

   function getMatrix (This : in out BasicGraphicsPipeline) return BasicArrayList_Access is
   begin
        return This.pointBasicArrayList;
   end getMatrix;

end org.allbinary.graphics.pipeline.BasicGraphicsPipeline_Package;


