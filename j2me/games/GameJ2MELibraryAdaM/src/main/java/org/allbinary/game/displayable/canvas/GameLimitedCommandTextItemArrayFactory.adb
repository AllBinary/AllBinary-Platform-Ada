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


with org.allbinary.graphics.form.item.LimitCommandsVisitor_Package; use org.allbinary.graphics.form.item.LimitCommandsVisitor_Package;

package body org.allbinary.game.displayable.canvas.GameLimitedCommandTextItemArrayFactory_Package is

   package LimitCommandsVisitor_Package renames Standard.org.allbinary.graphics.form.item.LimitCommandsVisitor_Package;
   procedure Initialize_Fields (This : in out GameLimitedCommandTextItemArrayFactory'Class) is
   begin
      null;
      This.commandTextItemArrayFactory := CommandTextItemArrayFactory_Package.Create (LimitCommandsVisitor_Package.Create);
   end Initialize_Fields;

   procedure Initialize (This : in out GameLimitedCommandTextItemArrayFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return GameLimitedCommandTextItemArrayFactory_Access is
      This : constant GameLimitedCommandTextItemArrayFactory_Access := new GameLimitedCommandTextItemArrayFactory;
   begin
      GameLimitedCommandTextItemArrayFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return GameLimitedCommandTextItemArrayFactory_Access is
   begin
        return GameLimitedCommandTextItemArrayFactory_Package.instance;
   end getInstance;

   function getCommandTextItemArrayFactory (This : in out GameLimitedCommandTextItemArrayFactory) return CommandTextItemArrayFactory_Access is
   begin
        return This.commandTextItemArrayFactory;
   end getCommandTextItemArrayFactory;

begin
   null;
   instance := GameLimitedCommandTextItemArrayFactory_Package.Create;

end org.allbinary.game.displayable.canvas.GameLimitedCommandTextItemArrayFactory_Package;


