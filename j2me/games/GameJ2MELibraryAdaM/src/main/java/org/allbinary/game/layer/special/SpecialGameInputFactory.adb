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


package body org.allbinary.game.layer.special.SpecialGameInputFactory_Package is

   procedure Initialize_Fields (This : in out SpecialGameInputFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out SpecialGameInputFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return SpecialGameInputFactory_Access is
      This : constant SpecialGameInputFactory_Access := new SpecialGameInputFactory;
   begin
      SpecialGameInputFactory_Package.Initialize (This.all);
      return This;
   end Create;


begin
   null;
   NO_SPECIAL_GAME_INPUT := SpecialGameInput_Package.Create;

end org.allbinary.game.layer.special.SpecialGameInputFactory_Package;


