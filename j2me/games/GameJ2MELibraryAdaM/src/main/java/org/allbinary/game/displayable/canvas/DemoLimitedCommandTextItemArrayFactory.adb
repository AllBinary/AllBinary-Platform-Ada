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


package body org.allbinary.game.displayable.canvas.DemoLimitedCommandTextItemArrayFactory_Package is

   procedure Initialize_Fields (This : in out DemoLimitedCommandTextItemArrayFactory'Class) is
   begin
      null;
      This.commandTextItemArrayFactory := CommandTextItemArrayFactory_Package.Create (LimitCommandsVisitor_Package.Create);
   end Initialize_Fields;

   procedure Initialize (This : in out DemoLimitedCommandTextItemArrayFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return DemoLimitedCommandTextItemArrayFactory_Access is
      This : constant DemoLimitedCommandTextItemArrayFactory_Access := new DemoLimitedCommandTextItemArrayFactory;
   begin
      DemoLimitedCommandTextItemArrayFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return DemoLimitedCommandTextItemArrayFactory_Access is
   begin
        return DemoLimitedCommandTextItemArrayFactory_Package.instance;
   end getInstance;

   function getCommandTextItemArrayFactory (This : in out DemoLimitedCommandTextItemArrayFactory) return CommandTextItemArrayFactory_Access is
   begin
        return This.commandTextItemArrayFactory;
   end getCommandTextItemArrayFactory;

begin
   null;
   instance := DemoLimitedCommandTextItemArrayFactory_Package.Create;

end org.allbinary.game.displayable.canvas.DemoLimitedCommandTextItemArrayFactory_Package;


