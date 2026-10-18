-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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


with org.allbinary.graphics.paint.NullPaintable_Package; use org.allbinary.graphics.paint.NullPaintable_Package;

package body org.allbinary.graphics.displayable.screen.FullScreenPaintableFactory_Package is

   package NullPaintable_Package renames Standard.org.allbinary.graphics.paint.NullPaintable_Package;
   procedure Initialize_Fields (This : in out FullScreenPaintableFactory'Class) is
   begin
      null;
      This.paintable := NullPaintable_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out FullScreenPaintableFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return FullScreenPaintableFactory_Access is
      This : constant FullScreenPaintableFactory_Access := new FullScreenPaintableFactory;
   begin
      FullScreenPaintableFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return FullScreenPaintableFactory_Access is
   begin
        return FullScreenPaintableFactory_Package.instance;
   end getInstance;

begin
   null;
   instance := FullScreenPaintableFactory_Package.Create;

end org.allbinary.graphics.displayable.screen.FullScreenPaintableFactory_Package;


