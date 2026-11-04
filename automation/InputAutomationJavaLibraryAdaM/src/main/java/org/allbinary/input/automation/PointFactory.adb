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


with org.allbinary.input.automation.Point_Package; use org.allbinary.input.automation.Point_Package;

package body org.allbinary.input.automation.PointFactory_Package is

   subtype Point_Access is org.allbinary.input.automation.Point_Package_References.Point_Access;
   function "=" (Left, Right : Point_Access) return Boolean renames org.allbinary.input.automation.Point_Package_References."=";
   subtype Point_Access_Array is org.allbinary.input.automation.Point_Package_References.Point_Access_Array;
   function "=" (Left, Right : Point_Access_Array) return Boolean renames org.allbinary.input.automation.Point_Package_References."=";
   subtype Point_Access_Array_Access is org.allbinary.input.automation.Point_Package_References.Point_Access_Array_Access;
   function "=" (Left, Right : Point_Access_Array_Access) return Boolean renames org.allbinary.input.automation.Point_Package_References."=";
   subtype Point_Access_Array_Access_Array is org.allbinary.input.automation.Point_Package_References.Point_Access_Array_Access_Array;
   function "=" (Left, Right : Point_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.Point_Package_References."=";
   subtype Point_Access_Array_Access_Array_Access is org.allbinary.input.automation.Point_Package_References.Point_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Point_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.Point_Package_References."=";
   procedure Initialize_Fields (This : in out PointFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out PointFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return PointFactory_Access is
      This : constant PointFactory_Access := new PointFactory;
   begin
      PointFactory_Package.Initialize (This.all);
      return This;
   end Create;

   function getInstance (x : Integer; y : Integer) return Point_Access is
      point : Point_Access;
   begin
        point := PointFactory_Package.pointArray (x) (y);
        if (point) = (null) then
            PointFactory_Package.pointArray (x) (y) := Point_Package.Create (x, y);
            point := PointFactory_Package.pointArray (x) (y);
        end if;
        return point;
   end getInstance;

   procedure getInstance (x : Integer; y : Integer) is
      Java_Result : constant Point_Access := getInstance (x => x, y => y);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   pointArray := new Point_Access_Array_Access_Array'(0 .. (3000) - 1 => new Point_Access_Array'(0 .. (3000) - 1 => null));

end org.allbinary.input.automation.PointFactory_Package;


