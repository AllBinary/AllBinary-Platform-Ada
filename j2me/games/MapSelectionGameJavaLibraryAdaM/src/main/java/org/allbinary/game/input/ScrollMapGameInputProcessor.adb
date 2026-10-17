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


package body org.allbinary.game.input.ScrollMapGameInputProcessor_Package is

   procedure Initialize_Fields (This : in out ScrollMapGameInputProcessor'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out ScrollMapGameInputProcessor'Class; scrollMapPlayerGameInput : ScrollMapPlayerGameInput_Access) is
   begin
      GameInputProcessor_Package.Initialize (This);
      Initialize_Fields (This);
        This.scrollMapPlayerGameInput := scrollMapPlayerGameInput;
   end Initialize;

   function Create (scrollMapPlayerGameInput : ScrollMapPlayerGameInput_Access) return ScrollMapGameInputProcessor_Access is
      This : constant ScrollMapGameInputProcessor_Access := new ScrollMapGameInputProcessor;
   begin
      ScrollMapGameInputProcessor_Package.Initialize (This.all, scrollMapPlayerGameInput);
      return This;
   end Create;

end org.allbinary.game.input.ScrollMapGameInputProcessor_Package;


