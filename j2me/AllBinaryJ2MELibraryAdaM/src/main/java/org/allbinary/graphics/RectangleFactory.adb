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

package body org.allbinary.graphics.RectangleFactory_Package is

   procedure Initialize_Fields (This : in out RectangleFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out RectangleFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return RectangleFactory_Access is
      This : constant RectangleFactory_Access := new RectangleFactory;
   begin
      RectangleFactory_Package.Initialize (This.all);
      return This;
   end Create;


begin
   null;
   SINGLETON := Rectangle_Package.Create (PointFactory_Package.getInstance.ZERO_ZERO, 0, 0);
   ARRAY_OF_ARRAYS := new Rectangle_Access_Array_Access_Array'(0 .. (0) - 1 => new Rectangle_Access_Array'(0 .. (0) - 1 => null));

end org.allbinary.graphics.RectangleFactory_Package;


