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


package body org.allbinary.game.input.NullPlayerGameInputComposite_Package is

   procedure Initialize_Fields (This : in out NullPlayerGameInputComposite'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out NullPlayerGameInputComposite'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return NullPlayerGameInputComposite_Access is
      This : constant NullPlayerGameInputComposite_Access := new NullPlayerGameInputComposite;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getName (This : in out NullPlayerGameInputComposite) return Unbounded_String is
   begin
        return StringUtil_Package.getInstance.EMPTY_STRING;
   end getName;

   --  throws Exception
   procedure processInput (This : in out NullPlayerGameInputComposite; layerManager : AllBinaryLayerManager_Access) is
   begin
        null;
   end processInput;

   procedure initInputProcessors (This : in out NullPlayerGameInputComposite) is
   begin
        null;
   end initInputProcessors;

   function getPlayerGameInput (This : in out NullPlayerGameInputComposite) return PlayerGameInput_Access is
   begin
        return NoPlayerGameInput_Package.getInstance;
   end getPlayerGameInput;

   procedure getName (This : in out NullPlayerGameInputComposite) is
      Java_Result : constant Unbounded_String := NullPlayerGameInputComposite'Class (This).getName;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getName;

   procedure getPlayerGameInput (This : in out NullPlayerGameInputComposite) is
      Java_Result : constant PlayerGameInput_Access := NullPlayerGameInputComposite'Class (This).getPlayerGameInput;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPlayerGameInput;

begin
   null;
   NULL_PLAYER_GAME_INPUT_COMPOSITE := NullPlayerGameInputComposite_Package.Create;

end org.allbinary.game.input.NullPlayerGameInputComposite_Package;


