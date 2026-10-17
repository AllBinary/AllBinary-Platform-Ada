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


package body org.allbinary.graphics.paint.PaintableFactory_Package is

   procedure Initialize_Fields (This : in out PaintableFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out PaintableFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return PaintableFactory_Access is
      This : constant PaintableFactory_Access := new PaintableFactory;
   begin
      PaintableFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance (This : in out PaintableFactory) return Paintable_Access is
   begin
        return NullPaintable_Package.getInstance;
   end getInstance;

end org.allbinary.graphics.paint.PaintableFactory_Package;


