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


with org.allbinary.game.input.event.GameKeyEvent_Package; use org.allbinary.game.input.event.GameKeyEvent_Package;
with org.allbinary.game.input.event.GameKeyEventListenerInterface_Package; use org.allbinary.game.input.event.GameKeyEventListenerInterface_Package;
with org.allbinary.logic.communication.log.ForcedLogUtil_Package; use org.allbinary.logic.communication.log.ForcedLogUtil_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.EventStrings_Package; use org.allbinary.logic.util.event.EventStrings_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.game.input.GameInputStrings_Package; use org.allbinary.game.input.GameInputStrings_Package;
with org.allbinary.game.input.event.DownGameKeyEventListenerInterface_Package;
with org.allbinary.game.input.GameInput_Package;
with org.allbinary.game.input.GameInputStrings_Package;
with org.allbinary.game.input.event.GameKeyEvent_Package;
with org.allbinary.game.input.event.GameKeyEventListenerInterface_Package;
with org.allbinary.game.input.event.PressGameKeyEventListenerInterface_Package;
with org.allbinary.game.input.event.UpGameKeyEventListenerInterface_Package;

package body org.allbinary.game.input.PlayerGameInput_Package is

   package ForcedLogUtil_Package renames Standard.org.allbinary.logic.communication.log.ForcedLogUtil_Package;
   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package EventStrings_Package renames Standard.org.allbinary.logic.util.event.EventStrings_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   subtype GameKeyEvent_Access is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access;
   function "=" (Left, Right : GameKeyEvent_Access) return Boolean renames org.allbinary.game.input.event.GameKeyEvent_Package_References."=";
   subtype GameKeyEvent_Access_Array is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access_Array;
   function "=" (Left, Right : GameKeyEvent_Access_Array) return Boolean renames org.allbinary.game.input.event.GameKeyEvent_Package_References."=";
   subtype GameKeyEvent_Access_Array_Access is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access_Array_Access;
   function "=" (Left, Right : GameKeyEvent_Access_Array_Access) return Boolean renames org.allbinary.game.input.event.GameKeyEvent_Package_References."=";
   subtype GameKeyEvent_Access_Array_Access_Array is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access_Array_Access_Array;
   function "=" (Left, Right : GameKeyEvent_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.event.GameKeyEvent_Package_References."=";
   subtype GameKeyEvent_Access_Array_Access_Array_Access is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameKeyEvent_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.event.GameKeyEvent_Package_References."=";
   subtype AllBinaryEventObject_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access;
   function "=" (Left, Right : AllBinaryEventObject_Access) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References."=";
   subtype AllBinaryEventObject_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array;
   function "=" (Left, Right : AllBinaryEventObject_Access_Array) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References."=";
   subtype AllBinaryEventObject_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access;
   function "=" (Left, Right : AllBinaryEventObject_Access_Array_Access) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References."=";
   subtype AllBinaryEventObject_Access_Array_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryEventObject_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References."=";
   subtype AllBinaryEventObject_Access_Array_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryEventObject_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References."=";
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   function "=" (Left, Right : BasicArrayList_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype GameInputStrings_Access is org.allbinary.game.input.GameInputStrings_Package_References.GameInputStrings_Access;
   function "=" (Left, Right : GameInputStrings_Access) return Boolean renames org.allbinary.game.input.GameInputStrings_Package_References."=";
   subtype GameInputStrings_Access_Array is org.allbinary.game.input.GameInputStrings_Package_References.GameInputStrings_Access_Array;
   function "=" (Left, Right : GameInputStrings_Access_Array) return Boolean renames org.allbinary.game.input.GameInputStrings_Package_References."=";
   subtype GameInputStrings_Access_Array_Access is org.allbinary.game.input.GameInputStrings_Package_References.GameInputStrings_Access_Array_Access;
   function "=" (Left, Right : GameInputStrings_Access_Array_Access) return Boolean renames org.allbinary.game.input.GameInputStrings_Package_References."=";
   subtype GameInputStrings_Access_Array_Access_Array is org.allbinary.game.input.GameInputStrings_Package_References.GameInputStrings_Access_Array_Access_Array;
   function "=" (Left, Right : GameInputStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.GameInputStrings_Package_References."=";
   subtype GameInputStrings_Access_Array_Access_Array_Access is org.allbinary.game.input.GameInputStrings_Package_References.GameInputStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameInputStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.GameInputStrings_Package_References."=";
   procedure Initialize_Fields (This : in out PlayerGameInput'Class) is
   begin
      null;
      This.gameInputStrings := GameInputStrings_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out PlayerGameInput'Class; gameKeyEventList_Param : access BasicArrayList_Package.BasicArrayList'Class; removalGameKeyEventList_Param : access BasicArrayList_Package.BasicArrayList'Class; playerInputId : Integer) is
      gameKeyEventList : constant BasicArrayList_Access := BasicArrayList_Access (gameKeyEventList_Param);
      removalGameKeyEventList : constant BasicArrayList_Access := BasicArrayList_Access (removalGameKeyEventList_Param);
   begin
        GameInput_Package.Initialize (This, gameKeyEventList, removalGameKeyEventList);
        Initialize_Fields (This);
        This.playerInputId := playerInputId;
   end Initialize;

   function Create (gameKeyEventList_Param : access BasicArrayList_Package.BasicArrayList'Class; removalGameKeyEventList_Param : access BasicArrayList_Package.BasicArrayList'Class; playerInputId : Integer) return PlayerGameInput_Access is
      This : constant PlayerGameInput_Access := new PlayerGameInput;
   begin
      PlayerGameInput_Package.Initialize (This.all, gameKeyEventList_Param, removalGameKeyEventList_Param, playerInputId);
      return This;
   end Create;

   procedure onPressGameKeyEvent (This : in out PlayerGameInput; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class) is
      gameKeyEvent : constant GameKeyEvent_Access := GameKeyEvent_Access (gameKeyEvent_Param);
   begin
        PlayerGameInput'Class (This).add (gameKeyEvent);
        PlayerGameInput'Class (This).addForRemoval (gameKeyEvent);
   end onPressGameKeyEvent;

   procedure onDownGameKeyEvent (This : in out PlayerGameInput; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class) is
      gameKeyEvent : constant GameKeyEvent_Access := GameKeyEvent_Access (gameKeyEvent_Param);
   begin
        PlayerGameInput'Class (This).add (gameKeyEvent);
   end onDownGameKeyEvent;

   procedure onDownKeyEvent (This : in out PlayerGameInput; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class) is
      gameKeyEvent : constant GameKeyEvent_Access := GameKeyEvent_Access (gameKeyEvent_Param);
   begin
        PlayerGameInput'Class (This).add (gameKeyEvent);
        PlayerGameInput'Class (This).addForRemoval (gameKeyEvent);
   end onDownKeyEvent;

   procedure onDownKey (This : in out PlayerGameInput; gameKeyEvent : Integer) is
   begin
        PreLogUtil_Package.put (StringMaker_Package.Create.append (CommonLabels_Package.getInstance.START_LABEL).append (gameKeyEvent.toString).toString, PlayerGameInput_Access'(This'Unchecked_Access), This.gameInputStrings.ON_DOWN_GAME_KEY);
   end onDownKey;

   procedure onUpGameKeyEvent (This : in out PlayerGameInput; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class) is
      gameKeyEvent : constant GameKeyEvent_Access := GameKeyEvent_Access (gameKeyEvent_Param);
   begin
        PlayerGameInput'Class (This).addForRemoval (gameKeyEvent);
   end onUpGameKeyEvent;

   procedure onUpKeyEvent (This : in out PlayerGameInput; gameKeyEvent : Integer) is
   begin
        null;
   end onUpKeyEvent;

   procedure onEvent (This : in out PlayerGameInput; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class) is
      eventObject : constant AllBinaryEventObject_Access := AllBinaryEventObject_Access (eventObject_Param);
   begin
        ForcedLogUtil_Package.log (EventStrings_Package.getInstance.PERFORMANCE_MESSAGE, PlayerGameInput_Access'(This'Unchecked_Access));
   end onEvent;

   function getPlayerInputId (This : in out PlayerGameInput) return Integer is
   begin
        return This.playerInputId;
   end getPlayerInputId;

end org.allbinary.game.input.PlayerGameInput_Package;


