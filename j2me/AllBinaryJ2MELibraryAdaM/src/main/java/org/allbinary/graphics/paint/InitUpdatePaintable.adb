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


package body org.allbinary.graphics.paint.InitUpdatePaintable_Package is

   procedure Initialize_Fields (This : in out InitUpdatePaintable'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out InitUpdatePaintable'Class) is
   begin
      Paintable_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return InitUpdatePaintable_Access is
      This : constant InitUpdatePaintable_Access := new InitUpdatePaintable;
   begin
      InitUpdatePaintable_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure init (This : in out InitUpdatePaintable) is
   begin
        null;
   end init;

   procedure update (This : in out InitUpdatePaintable) is
   begin
        null;
   end update;

end org.allbinary.graphics.paint.InitUpdatePaintable_Package;


