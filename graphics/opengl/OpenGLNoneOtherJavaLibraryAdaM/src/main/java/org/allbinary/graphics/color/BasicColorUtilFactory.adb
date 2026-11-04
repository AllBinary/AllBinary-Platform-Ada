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


with org.allbinary.graphics.color.BasicColorUtil_Package; use org.allbinary.graphics.color.BasicColorUtil_Package;

package body org.allbinary.graphics.color.BasicColorUtilFactory_Package is

   subtype BasicColorUtil_Access is org.allbinary.graphics.color.BasicColorUtil_Package_References.BasicColorUtil_Access;
   function "=" (Left, Right : BasicColorUtil_Access) return Boolean renames org.allbinary.graphics.color.BasicColorUtil_Package_References."=";
   subtype BasicColorUtil_Access_Array is org.allbinary.graphics.color.BasicColorUtil_Package_References.BasicColorUtil_Access_Array;
   function "=" (Left, Right : BasicColorUtil_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColorUtil_Package_References."=";
   subtype BasicColorUtil_Access_Array_Access is org.allbinary.graphics.color.BasicColorUtil_Package_References.BasicColorUtil_Access_Array_Access;
   function "=" (Left, Right : BasicColorUtil_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColorUtil_Package_References."=";
   subtype BasicColorUtil_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColorUtil_Package_References.BasicColorUtil_Access_Array_Access_Array;
   function "=" (Left, Right : BasicColorUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColorUtil_Package_References."=";
   subtype BasicColorUtil_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColorUtil_Package_References.BasicColorUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicColorUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColorUtil_Package_References."=";
   procedure Initialize_Fields (This : in out BasicColorUtilFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out BasicColorUtilFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return BasicColorUtilFactory_Access is
      This : constant BasicColorUtilFactory_Access := new BasicColorUtilFactory;
   begin
      BasicColorUtilFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return BasicColorUtil_Access is
   begin
        return BasicColorUtil_Package.getInstance;
   end getInstance;

end org.allbinary.graphics.color.BasicColorUtilFactory_Package;


