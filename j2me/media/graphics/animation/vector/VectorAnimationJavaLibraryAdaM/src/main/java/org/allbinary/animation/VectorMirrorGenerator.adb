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
with org.allbinary.graphics.pipeline.BasicGraphicsPipeline_Package; use org.allbinary.graphics.pipeline.BasicGraphicsPipeline_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.BasicArrayListS_Package; use org.allbinary.util.BasicArrayListS_Package;

package body org.allbinary.animation.VectorMirrorGenerator_Package is

   package PointFactory_Package renames Standard.org.allbinary.graphics.PointFactory_Package;
   package BasicGraphicsPipeline_Package renames Standard.org.allbinary.graphics.pipeline.BasicGraphicsPipeline_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayListS_Package renames Standard.org.allbinary.util.BasicArrayListS_Package;
   procedure Initialize_Fields (This : in out VectorMirrorGenerator'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.vectorAnimationUtil := VectorAnimationUtil_Package.getInstance;
   end Initialize_Fields;


   function getInstance return VectorMirrorGenerator_Access is
   begin
        return VectorMirrorGenerator_Package.instance;
   end getInstance;

   procedure Initialize (This : in out VectorMirrorGenerator'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return VectorMirrorGenerator_Access is
      This : constant VectorMirrorGenerator_Access := new VectorMirrorGenerator;
   begin
      VectorMirrorGenerator_Package.Initialize (This.all);
      return This;
   end Create;

   function getInstance (This : in out VectorMirrorGenerator; points : Integer_Array_Access_Array_Access_Array_Access; width : Integer) return Integer_Array_Access_Array_Access_Array_Access is
      pointFactory : PointFactory_Access;
      pointBasicArrayList : BasicArrayList_Access;
      nextPoints : Integer_Array_Access_Array_Access;
      size2 : Integer;
      size : Integer;
      pointsBasicArrayList : BasicArrayList_Access;
      index : Integer;
      frame : Integer;
      newPoints : Integer_Array_Access_Array_Access_Array_Access;
      commonStrings : CommonStrings_Access;
   begin
        begin
            pointFactory := PointFactory_Package.getInstance;
            pointBasicArrayList := null;
            nextPoints := null;
            size2 := 0;
            size := points'Length;
            pointsBasicArrayList := BasicArrayList_Access (BasicArrayListS_Package.Create (size));
            for frame in 0 .. (size) - 1 loop
                nextPoints := points (frame);
                size2 := nextPoints'Length;
                pointBasicArrayList := BasicArrayList_Access (BasicArrayListS_Package.Create (size2));
                for index in 0 .. (size2) - 1 loop
                    pointBasicArrayList.add (pointFactory.createXY (nextPoints (index) (0), nextPoints (index) (1)));
                end loop;
                pointsBasicArrayList.add (Java_Object_Access (pointBasicArrayList));
            end loop;
            for index in 0 .. (points'Length) - 1 loop
                pointsBasicArrayList.add (VectorMirrorGenerator'Class (This).getInstance (BasicArrayList_Access (pointsBasicArrayList.objectArray (index)), width));
            end loop;
            newPoints := This.vectorAnimationUtil.toAnimationArrayFromListOfPointList (pointsBasicArrayList);
            return newPoints;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.put (commonStrings.EXCEPTION_Id, VectorMirrorGenerator_Access'(This'Unchecked_Access), commonStrings.GET_INSTANCE, e);
            return NullUtil_Package.getInstance.NULL_INT_ARRAY_ARRAY_ARRAY;
                end;
        end;
   end getInstance;

   --  throws Exception
   function getInstance (This : in out VectorMirrorGenerator; pointBasicArrayList_Param : access BasicArrayList_Package.BasicArrayList'Class; width : Integer) return BasicArrayList_Access is
      pointBasicArrayList : constant BasicArrayList_Access := BasicArrayList_Access (pointBasicArrayList_Param);
      graphicsPipe : BasicGraphicsPipeline_Access;
   begin
        graphicsPipe := BasicGraphicsPipeline_Package.Create (pointBasicArrayList);
        graphicsPipe.createMatrix;
        graphicsPipe.mirror (width);
        return graphicsPipe.getMatrix;
   end getInstance;

   procedure getInstance (This : in out VectorMirrorGenerator; points : Integer_Array_Access_Array_Access_Array_Access; width : Integer) is
      Java_Result : constant Integer_Array_Access_Array_Access_Array_Access := VectorMirrorGenerator'Class (This).getInstance (points, width);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstance (This : in out VectorMirrorGenerator; pointBasicArrayList_Param : access BasicArrayList_Package.BasicArrayList'Class; width : Integer) is
      Java_Result : constant BasicArrayList_Access := VectorMirrorGenerator'Class (This).getInstance (pointBasicArrayList_Param, width);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := VectorMirrorGenerator_Package.Create;

end org.allbinary.animation.VectorMirrorGenerator_Package;


