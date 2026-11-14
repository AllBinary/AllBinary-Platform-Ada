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



package body org.allbinary.game.graphics.hud.BasicHudFactory_Package is

   procedure Initialize_Fields (This : in out BasicHudFactory'Class) is
   begin
      null;
      This.DIRECTION_EXCEPTION := To_Unbounded_String ("Only Horizontal Direction is Allowed Currently");
      This.VERTICAL := 0;
      This.HORIZONTAL := 1;
      This.BOTTOMLEFT := 0;
      This.BOTTOMRIGHT := 1;
      This.TOPLEFT := 2;
      This.TOPRIGHT := 3;
      This.BOTTOMCENTER := 4;
      This.TOPCENTER := 5;
      This.ABSOLUTE := 6;
   end Initialize_Fields;


   function getInstance return BasicHudFactory_Access is
   begin
        return BasicHudFactory_Package.instance;
   end getInstance;

   procedure Initialize (This : in out BasicHudFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return BasicHudFactory_Access is
      This : constant BasicHudFactory_Access := new BasicHudFactory;
   begin
      BasicHudFactory_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   instance := BasicHudFactory_Package.Create;

end org.allbinary.game.graphics.hud.BasicHudFactory_Package;


