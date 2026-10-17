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


package body org.allbinary.graphics.j2me.workarea.tools.PointsUtil_Package is

   procedure Initialize_Fields (This : in out PointsUtil'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out PointsUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return PointsUtil_Access is
      This : constant PointsUtil_Access := new PointsUtil;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return PointsUtil_Access is
   begin
        return PointsUtil_Package.instance;
   end getInstance;

   --  throws Exception
   function doTransforms (This : in out PointsUtil; pointVector : BasicArrayList_Access; angle : Long_Float; fulcrumPoint : GPoint_Access) return BasicArrayList_Access is
   begin
        return VectorRotationGenerator_Package.getInstance.getListAtAngle (fulcrumPoint.getX, fulcrumPoint.getY, pointVector, AngleFactory_Package.getInstance.getAt (angle.intValue));
   end doTransforms;

   procedure getInstance is
      Java_Result : constant PointsUtil_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure doTransforms (This : in out PointsUtil; pointVector : BasicArrayList_Access; angle : Long_Float; fulcrumPoint : GPoint_Access) is
      Java_Result : constant BasicArrayList_Access := PointsUtil'Class (This).doTransforms (pointVector, angle, fulcrumPoint);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end doTransforms;

begin
   null;
   instance := PointsUtil_Package.Create;

end org.allbinary.graphics.j2me.workarea.tools.PointsUtil_Package;


