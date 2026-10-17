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


package body org.allbinary.game.displayable.canvas.GameLimitedCommandTextItemArrayFactory_Package is

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
      Initialize (This.all);
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

   procedure getInstance is
      Java_Result : constant GameLimitedCommandTextItemArrayFactory_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getCommandTextItemArrayFactory (This : in out GameLimitedCommandTextItemArrayFactory) is
      Java_Result : constant CommandTextItemArrayFactory_Access := GameLimitedCommandTextItemArrayFactory'Class (This).getCommandTextItemArrayFactory;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCommandTextItemArrayFactory;

begin
   null;
   instance := GameLimitedCommandTextItemArrayFactory_Package.Create;

end org.allbinary.game.displayable.canvas.GameLimitedCommandTextItemArrayFactory_Package;


