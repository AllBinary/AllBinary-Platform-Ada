-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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


package body org.allbinary.game.displayable.canvas.NullDemoPaintable_Package is

   procedure Initialize_Fields (This : in out NullDemoPaintable'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out NullDemoPaintable'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return NullDemoPaintable_Access is
      This : constant NullDemoPaintable_Access := new NullDemoPaintable;
   begin
      NullDemoPaintable_Package.Initialize (This.all);
      return This;
   end Create;


   procedure showGamePaintable (This : in out NullDemoPaintable) is
   begin
        null;
   end showGamePaintable;

begin
   null;
   NULL_DEMO_PAINTABLE := NullDemoPaintable_Package.Create;

end org.allbinary.game.displayable.canvas.NullDemoPaintable_Package;


