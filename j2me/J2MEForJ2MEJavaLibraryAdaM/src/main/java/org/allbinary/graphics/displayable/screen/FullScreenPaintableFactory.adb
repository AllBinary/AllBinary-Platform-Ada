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


package body org.allbinary.graphics.displayable.screen.FullScreenPaintableFactory_Package is

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
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return FullScreenPaintableFactory_Access is
   begin
        return FullScreenPaintableFactory_Package.instance;
   end getInstance;

   procedure getInstance is
      Java_Result : constant FullScreenPaintableFactory_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := FullScreenPaintableFactory_Package.Create;

end org.allbinary.graphics.displayable.screen.FullScreenPaintableFactory_Package;


