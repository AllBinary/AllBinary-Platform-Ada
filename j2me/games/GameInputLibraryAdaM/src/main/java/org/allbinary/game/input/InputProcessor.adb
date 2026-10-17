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


package body org.allbinary.game.input.InputProcessor_Package is

   procedure Initialize_Fields (This : in out InputProcessor'Class) is
   begin
      null;
      This.gameInputStrings := GameInputStrings_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out InputProcessor'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return InputProcessor_Access is
      This : constant InputProcessor_Access := new InputProcessor;
   begin
      InputProcessor_Package.Initialize (This.all);
      return This;
   end Create;


   procedure keyPressedByDevice (This : in out InputProcessor; keyCode : Integer; deviceId : Integer) is
   begin
        null;
   end keyPressedByDevice;

   procedure keyReleasedByDevice (This : in out InputProcessor; canvas : Canvas_Access; keyCode : Integer; deviceId : Integer) is
   begin
        null;
   end keyReleasedByDevice;

end org.allbinary.game.input.InputProcessor_Package;


