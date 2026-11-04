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


with org.allbinary.animation.VectorRotationGenerator_Package; use org.allbinary.animation.VectorRotationGenerator_Package;
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.GPoint_Package_References;
with org.allbinary.math.AngleFactory_Package; use org.allbinary.math.AngleFactory_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;

package body org.allbinary.graphics.j2me.workarea.tools.PointsUtil_Package is

   package VectorRotationGenerator_Package renames Standard.org.allbinary.animation.VectorRotationGenerator_Package;
   package AngleFactory_Package renames Standard.org.allbinary.math.AngleFactory_Package;
   subtype GPoint_Access is org.allbinary.graphics.GPoint_Package_References.GPoint_Access;
   function "=" (Left, Right : GPoint_Access) return Boolean renames org.allbinary.graphics.GPoint_Package_References."=";
   subtype GPoint_Access_Array is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array;
   function "=" (Left, Right : GPoint_Access_Array) return Boolean renames org.allbinary.graphics.GPoint_Package_References."=";
   subtype GPoint_Access_Array_Access is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array_Access;
   function "=" (Left, Right : GPoint_Access_Array_Access) return Boolean renames org.allbinary.graphics.GPoint_Package_References."=";
   subtype GPoint_Access_Array_Access_Array is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array_Access_Array;
   function "=" (Left, Right : GPoint_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.GPoint_Package_References."=";
   subtype GPoint_Access_Array_Access_Array_Access is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GPoint_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.GPoint_Package_References."=";
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   function "=" (Left, Right : BasicArrayList_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
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
      PointsUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return PointsUtil_Access is
   begin
        return PointsUtil_Access (PointsUtil_Package.instance);
   end getInstance;

   --  throws Exception
   function doTransforms (This : in out PointsUtil; pointVector_Param : access BasicArrayList_Package.BasicArrayList'Class; angle : Long_Float; fulcrumPoint_Param : access GPoint_Package.GPoint'Class) return BasicArrayList_Access is
      pointVector : constant BasicArrayList_Access := BasicArrayList_Access (pointVector_Param);
      fulcrumPoint : constant GPoint_Access := GPoint_Access (fulcrumPoint_Param);
   begin
        return VectorRotationGenerator_Package.getInstance.getListAtAngle (fulcrumPoint.getX, fulcrumPoint.getY, pointVector, AngleFactory_Package.getInstance.getAt (Integer (angle)));
   end doTransforms;

   procedure doTransforms (This : in out PointsUtil; pointVector_Param : access BasicArrayList_Package.BasicArrayList'Class; angle : Long_Float; fulcrumPoint_Param : access GPoint_Package.GPoint'Class) is
      Java_Result : constant BasicArrayList_Access := PointsUtil'Class (This).doTransforms (pointVector_Param => pointVector_Param, angle => angle, fulcrumPoint_Param => fulcrumPoint_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end doTransforms;

begin
   null;
   instance := PointsUtil_Package.Create;

end org.allbinary.graphics.j2me.workarea.tools.PointsUtil_Package;


