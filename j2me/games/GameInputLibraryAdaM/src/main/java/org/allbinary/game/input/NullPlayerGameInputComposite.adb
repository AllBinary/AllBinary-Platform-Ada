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


with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.game.input.NoPlayerGameInput_Package; use org.allbinary.game.input.NoPlayerGameInput_Package;
with org.allbinary.game.input.PlayerGameInput_Package; use org.allbinary.game.input.PlayerGameInput_Package;
with org.allbinary.game.input.event.DownGameKeyEventListenerInterface_Package;
with org.allbinary.game.input.GameInput_Package;
with org.allbinary.game.input.GameInputInterface_Package;
with org.allbinary.game.input.GameInputStrings_Package;
with org.allbinary.game.input.event.GameKeyEvent_Package;
with org.allbinary.game.input.event.GameKeyEventListenerInterface_Package;
with org.allbinary.game.input.NoPlayerGameInput_Package;
with org.allbinary.game.input.PlayerGameInput_Package;
with org.allbinary.game.input.PlayerGameInputCompositeInterface_Package;
with org.allbinary.game.input.event.PressGameKeyEventListenerInterface_Package;
with org.allbinary.game.input.event.UpGameKeyEventListenerInterface_Package;

package body org.allbinary.game.input.NullPlayerGameInputComposite_Package is

   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   subtype AllBinaryLayerManager_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access;
   function "=" (Left, Right : AllBinaryLayerManager_Access) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype AllBinaryLayerManager_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array;
   function "=" (Left, Right : AllBinaryLayerManager_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype AllBinaryLayerManager_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayerManager_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype AllBinaryLayerManager_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryLayerManager_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype AllBinaryLayerManager_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayerManager_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype PlayerGameInput_Access is org.allbinary.game.input.PlayerGameInput_Package_References.PlayerGameInput_Access;
   function "=" (Left, Right : PlayerGameInput_Access) return Boolean renames org.allbinary.game.input.PlayerGameInput_Package_References."=";
   subtype PlayerGameInput_Access_Array is org.allbinary.game.input.PlayerGameInput_Package_References.PlayerGameInput_Access_Array;
   function "=" (Left, Right : PlayerGameInput_Access_Array) return Boolean renames org.allbinary.game.input.PlayerGameInput_Package_References."=";
   subtype PlayerGameInput_Access_Array_Access is org.allbinary.game.input.PlayerGameInput_Package_References.PlayerGameInput_Access_Array_Access;
   function "=" (Left, Right : PlayerGameInput_Access_Array_Access) return Boolean renames org.allbinary.game.input.PlayerGameInput_Package_References."=";
   subtype PlayerGameInput_Access_Array_Access_Array is org.allbinary.game.input.PlayerGameInput_Package_References.PlayerGameInput_Access_Array_Access_Array;
   function "=" (Left, Right : PlayerGameInput_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.PlayerGameInput_Package_References."=";
   subtype PlayerGameInput_Access_Array_Access_Array_Access is org.allbinary.game.input.PlayerGameInput_Package_References.PlayerGameInput_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PlayerGameInput_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.PlayerGameInput_Package_References."=";
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
      NullPlayerGameInputComposite_Package.Initialize (This.all);
      return This;
   end Create;


   function getName (This : in out NullPlayerGameInputComposite) return Unbounded_String is
   begin
        return StringUtil_Package.getInstance.EMPTY_STRING;
   end getName;

   --  throws Exception
   procedure processInput (This : in out NullPlayerGameInputComposite; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class) is
      layerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (layerManager_Param);
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

begin
   null;
   NULL_PLAYER_GAME_INPUT_COMPOSITE := NullPlayerGameInputComposite_Package.Create;

end org.allbinary.game.input.NullPlayerGameInputComposite_Package;


