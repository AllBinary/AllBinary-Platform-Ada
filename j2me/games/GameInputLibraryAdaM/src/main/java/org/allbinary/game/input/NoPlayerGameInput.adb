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


package body org.allbinary.game.input.NoPlayerGameInput_Package is

   procedure Initialize_Fields (This : in out NoPlayerGameInput'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return NoPlayerGameInput_Access is
   begin
        return NoPlayerGameInput_Package.SINGLETON;
   end getInstance;

   procedure Initialize (This : in out NoPlayerGameInput'Class) is
   begin
        PlayerGameInput_Package.Initialize (This, BasicArrayListD_Package.Create, BasicArrayListD_Package.Create, -(1));
   end Initialize;

   function Create return NoPlayerGameInput_Access is
      This : constant NoPlayerGameInput_Access := new NoPlayerGameInput;
   begin
      Initialize (This.all);
      return This;
   end Create;

   procedure onDownGameKeyEvent (This : in out NoPlayerGameInput; gameKeyEvent : GameKeyEvent_Access) is
   begin
        null;
   end onDownGameKeyEvent;

   procedure onUpGameKeyEvent (This : in out NoPlayerGameInput; gameKeyEvent : GameKeyEvent_Access) is
   begin
        null;
   end onUpGameKeyEvent;

   procedure getInstance is
      Java_Result : constant NoPlayerGameInput_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   SINGLETON := NoPlayerGameInput_Package.Create;

end org.allbinary.game.input.NoPlayerGameInput_Package;


