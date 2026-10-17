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


package body org.allbinary.game.input.PlayerGameInput_Package is

   procedure Initialize_Fields (This : in out PlayerGameInput'Class) is
   begin
      null;
      This.gameInputStrings := GameInputStrings_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out PlayerGameInput'Class; gameKeyEventList : BasicArrayList_Access; removalGameKeyEventList : BasicArrayList_Access; playerInputId : Integer) is
   begin
        GameInput_Package.Initialize (This, gameKeyEventList, removalGameKeyEventList);
        Initialize_Fields (This);
        This.playerInputId := playerInputId;
   end Initialize;

   function Create (gameKeyEventList : BasicArrayList_Access; removalGameKeyEventList : BasicArrayList_Access; playerInputId : Integer) return PlayerGameInput_Access is
      This : constant PlayerGameInput_Access := new PlayerGameInput;
   begin
      Initialize (This.all, gameKeyEventList, removalGameKeyEventList, playerInputId);
      return This;
   end Create;

   procedure onPressGameKeyEvent (This : in out PlayerGameInput; gameKeyEvent : GameKeyEvent_Access) is
   begin
        This.add (gameKeyEvent);
        This.addForRemoval (gameKeyEvent);
   end onPressGameKeyEvent;

   procedure onDownGameKeyEvent (This : in out PlayerGameInput; gameKeyEvent : GameKeyEvent_Access) is
   begin
        This.add (gameKeyEvent);
   end onDownGameKeyEvent;

   procedure onDownKeyEvent (This : in out PlayerGameInput; gameKeyEvent : GameKeyEvent_Access) is
   begin
        This.add (gameKeyEvent);
        This.addForRemoval (gameKeyEvent);
   end onDownKeyEvent;

   procedure onDownKey (This : in out PlayerGameInput; gameKeyEvent : Integer) is
   begin
        PreLogUtil_Package.put (StringMaker_Package.Create.append (CommonLabels_Package.getInstance.START_LABEL).append (gameKeyEvent.toString).toString, This'Unchecked_Access, This.gameInputStrings.ON_DOWN_GAME_KEY);
   end onDownKey;

   procedure onUpGameKeyEvent (This : in out PlayerGameInput; gameKeyEvent : GameKeyEvent_Access) is
   begin
        This.addForRemoval (gameKeyEvent);
   end onUpGameKeyEvent;

   procedure onUpKeyEvent (This : in out PlayerGameInput; gameKeyEvent : Integer) is
   begin
        null;
   end onUpKeyEvent;

   procedure onEvent (This : in out PlayerGameInput; eventObject : AllBinaryEventObject_Access) is
   begin
        ForcedLogUtil_Package.log (EventStrings_Package.getInstance.PERFORMANCE_MESSAGE, This'Unchecked_Access);
   end onEvent;

   function getPlayerInputId (This : in out PlayerGameInput) return Integer is
   begin
        return This.playerInputId;
   end getPlayerInputId;

   procedure getPlayerInputId (This : in out PlayerGameInput) is
      Java_Result : constant Integer := PlayerGameInput'Class (This).getPlayerInputId;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPlayerInputId;

end org.allbinary.game.input.PlayerGameInput_Package;


