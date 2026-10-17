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


package body org.allbinary.game.midlet.DemoGameMidletStateFactory_Package is

   procedure Initialize_Fields (This : in out DemoGameMidletStateFactory'Class) is
   begin
      null;
      This.NONE := DemoGameMidletState_Package.Create;
      This.START_DEMO := DemoGameMidletState_Package.Create;
      This.START_GAME := DemoGameMidletState_Package.Create;
      This.START_INPUT_MAPPING := DemoGameMidletState_Package.Create;
   end Initialize_Fields;


   procedure Initialize (This : in out DemoGameMidletStateFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return DemoGameMidletStateFactory_Access is
      This : constant DemoGameMidletStateFactory_Access := new DemoGameMidletStateFactory;
   begin
      DemoGameMidletStateFactory_Package.Initialize (This.all);
      return This;
   end Create;

   function getInstance return DemoGameMidletStateFactory_Access is
   begin
        return DemoGameMidletStateFactory_Package.STATE;
   end getInstance;

begin
   null;
   STATE := DemoGameMidletStateFactory_Package.Create;

end org.allbinary.game.midlet.DemoGameMidletStateFactory_Package;


