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


package body org.allbinary.input.automation.PointHelper_Package is

   procedure Initialize_Fields (This : in out PointHelper'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out PointHelper'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return PointHelper_Access is
      This : constant PointHelper_Access := new PointHelper;
   begin
      PointHelper_Package.Initialize (This.all);
      return This;
   end Create;

   function getCenterPoint (rectangle : Rectangle_Access) return Point_Access is
      x : Long_Float;
      y : Long_Float;
   begin
        x := (rectangle.getX) + ((rectangle.getWidth) / (PointHelper_Package.two));
        y := (rectangle.getY) + ((rectangle.getHeight) / (PointHelper_Package.two));
        return PointFactory_Package.getInstance (Integer (x), Integer (y));
   end getCenterPoint;

   procedure getCenterPoint (rectangle : Rectangle_Access) is
      Java_Result : constant Point_Access := getCenterPoint (rectangle);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCenterPoint;

begin
   null;
   two := 2.0;

end org.allbinary.input.automation.PointHelper_Package;


