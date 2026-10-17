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


package body org.allbinary.game.displayable.canvas.TitleResource_Package is

   procedure Initialize_Fields (This : in out TitleResource'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out TitleResource'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return TitleResource_Access is
      This : constant TitleResource_Access := new TitleResource;
   begin
      TitleResource_Package.Initialize (This.all);
      return This;
   end Create;


begin
   null;
   RESOURCE_TITLE := To_Unbounded_String ("/title_sprite_100_by_100.png");

end org.allbinary.game.displayable.canvas.TitleResource_Package;


