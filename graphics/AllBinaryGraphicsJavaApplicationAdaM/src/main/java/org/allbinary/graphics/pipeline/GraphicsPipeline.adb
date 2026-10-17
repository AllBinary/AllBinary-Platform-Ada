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


package body org.allbinary.graphics.pipeline.GraphicsPipeline_Package is

   procedure Initialize_Fields (This : in out GraphicsPipeline'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out GraphicsPipeline'Class; points_Param : access BasicArrayList'Class) is
      points : BasicArrayList_Access := BasicArrayList_Access (points_Param);
   begin
        BasicGraphicsPipeline_Package.Initialize (This, points);
   end Initialize;

   function Create (points_Param : access BasicArrayList'Class) return GraphicsPipeline_Access is
      This : constant GraphicsPipeline_Access := new GraphicsPipeline;
   begin
      GraphicsPipeline_Package.Initialize (This.all, points_Param);
      return This;
   end Create;

   --  throws Exception
   procedure rotateTheta (This : in out GraphicsPipeline; aTheta : Long_Float) is
      newVector : BasicArrayList_Access;
      size : Integer;
      secondPoint : GPoint_Access;
      secondX : Long_Float;
      secondY : Long_Float;
      point : GPoint_Access;
      index : Integer;
   begin
        newVector := BasicArrayListD_Package.Create;
        size := This.pointBasicArrayList.size;
        for index in 0 .. (size) - 1 loop
            secondPoint := GPoint_Access (This.pointBasicArrayList.get (index));
            secondX := (((secondPoint.getX) * (Ada.Numerics.Long_Elementary_Functions.Cos (aTheta)))) - (((secondPoint.getY) * (Ada.Numerics.Long_Elementary_Functions.Sin (aTheta))));
            secondY := (((secondPoint.getX) * (Ada.Numerics.Long_Elementary_Functions.Sin (aTheta)))) + (((secondPoint.getY) * (Ada.Numerics.Long_Elementary_Functions.Cos (aTheta))));
            point := PointFactory_Package.getInstance.createXY ((Integer (secondX)), (Integer (secondY)));
            newVector.add (point);
        end loop;
        This.pointBasicArrayList := newVector;
   end rotateTheta;

end org.allbinary.graphics.pipeline.GraphicsPipeline_Package;


