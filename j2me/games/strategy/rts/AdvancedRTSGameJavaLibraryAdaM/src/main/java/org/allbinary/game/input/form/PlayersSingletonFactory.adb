-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2006 AllBinary 
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


package body org.allbinary.game.input.form.PlayersSingletonFactory_Package is

   procedure Initialize_Fields (This : in out PlayersSingletonFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out PlayersSingletonFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return PlayersSingletonFactory_Access is
      This : constant PlayersSingletonFactory_Access := new PlayersSingletonFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;


begin
   null;
   total := 0;

end org.allbinary.game.input.form.PlayersSingletonFactory_Package;


