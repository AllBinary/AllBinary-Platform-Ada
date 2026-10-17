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


package body org.allbinary.graphics.paint.ProcessPaintable_Package is

   procedure Initialize_Fields (This : in out ProcessPaintable'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out ProcessPaintable'Class) is
   begin
      Paintable_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return ProcessPaintable_Access is
      This : constant ProcessPaintable_Access := new ProcessPaintable;
   begin
      Initialize (This.all);
      return This;
   end Create;


   procedure process (This : in out ProcessPaintable) is
   begin
        null;
   end process;

end org.allbinary.graphics.paint.ProcessPaintable_Package;


