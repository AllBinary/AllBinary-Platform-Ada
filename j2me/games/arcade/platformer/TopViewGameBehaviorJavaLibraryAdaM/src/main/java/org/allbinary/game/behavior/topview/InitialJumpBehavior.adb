-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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



package body org.allbinary.game.behavior.topview.InitialJumpBehavior_Package is

   procedure Initialize_Fields (This : in out InitialJumpBehavior'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out InitialJumpBehavior'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return InitialJumpBehavior_Access is
      This : constant InitialJumpBehavior_Access := new InitialJumpBehavior;
   begin
      InitialJumpBehavior_Package.Initialize (This.all);
      return This;
   end Create;


   procedure process (This : in out InitialJumpBehavior) is
   begin
        null;
   end process;

end org.allbinary.game.behavior.topview.InitialJumpBehavior_Package;


