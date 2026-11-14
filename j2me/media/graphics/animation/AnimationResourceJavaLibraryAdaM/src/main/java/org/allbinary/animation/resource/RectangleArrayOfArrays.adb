-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2026 AllBinary 
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


with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.Rectangle_Package_References;
with org.allbinary.graphics.GPoint_Package;

package body org.allbinary.animation.resource.RectangleArrayOfArrays_Package is

   subtype Rectangle_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access;
   function "=" (Left, Right : Rectangle_Access) return Boolean renames org.allbinary.graphics.Rectangle_Package_References."=";
   subtype Rectangle_Access_Array is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array;
   function "=" (Left, Right : Rectangle_Access_Array) return Boolean renames org.allbinary.graphics.Rectangle_Package_References."=";
   subtype Rectangle_Access_Array_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access;
   function "=" (Left, Right : Rectangle_Access_Array_Access) return Boolean renames org.allbinary.graphics.Rectangle_Package_References."=";
   subtype Rectangle_Access_Array_Access_Array is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access_Array;
   function "=" (Left, Right : Rectangle_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.Rectangle_Package_References."=";
   subtype Rectangle_Access_Array_Access_Array_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Rectangle_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.Rectangle_Package_References."=";
   procedure Initialize_Fields (This : in out RectangleArrayOfArrays'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out RectangleArrayOfArrays'Class; rectangles : Rectangle_Access_Array_Access_Array_Access) is
   begin
      Initialize_Fields (This);
        This.rectangles := rectangles;
   end Initialize;

   function Create (rectangles : Rectangle_Access_Array_Access_Array_Access) return RectangleArrayOfArrays_Access is
      This : constant RectangleArrayOfArrays_Access := new RectangleArrayOfArrays;
   begin
      RectangleArrayOfArrays_Package.Initialize (This.all, rectangles);
      return This;
   end Create;

end org.allbinary.animation.resource.RectangleArrayOfArrays_Package;


