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


package body org.allbinary.game.displayable.canvas.GameInputMappingInstructionsCanvas_Package is

   procedure Initialize_Fields (This : in out GameInputMappingInstructionsCanvas'Class) is
   begin
      null;
      This.drawStringUtil := DrawStringUtil_Package.getInstance;
      This.TITLE := To_Unbounded_String ("Input Instructions");
      This.instructions := new Unbounded_String_Array'(To_Unbounded_String ("Add Input Mapping:"), To_Unbounded_String ("1. Select the desired action by generating a currently defined input for a given action."), To_Unbounded_String ("(Example: Press the '1' key to select the Fire action)"), To_Unbounded_String ("2. Make the newly desired input for the selected action."), To_Unbounded_String ("(Example: Press 'f' to add it to the selected action)"), To_Unbounded_String ("Note: If the input is already mapped to another action then it will not be added. You"), To_Unbounded_String ("will need to deleted from the other action before adding it to another."), To_Unbounded_String ("Warning: Not all keys map for a given platform and show as Unknown."), StringUtil_Package.getInstance.EMPTY_STRING, To_Unbounded_String ("Remove Input Mapping:"), To_Unbounded_String ("1. Select the desired action by generating a currently defined input for a given action."), To_Unbounded_String ("(Example: Press the key '1' to select the Fire action)"), To_Unbounded_String ("2. Select a mapped input for the selected action."), To_Unbounded_String ("(Example: Press the key '1' to select the '1' key input for the selected Fire action)"), To_Unbounded_String ("3. Press the Delete Key."));
      
      This.anchor := Anchor_Package.TOP_LEFT;
   end Initialize_Fields;


   procedure Initialize (This : in out GameInputMappingInstructionsCanvas'Class; commandListener_Param : access CommandListener_Package.CommandListener'Class; allBinaryGameLayerManager_Param : access AllBinaryGameLayerManager_Package.AllBinaryGameLayerManager'Class) is
      commandListener : constant CommandListener_Access := CommandListener_Access (commandListener_Param);
      allBinaryGameLayerManager : constant AllBinaryGameLayerManager_Access := AllBinaryGameLayerManager_Access (allBinaryGameLayerManager_Param);
   begin
        GameCommandCanvas_Package.Initialize (This, commandListener, GameInputMappingInstructionsCanvas_Package.NAME, allBinaryGameLayerManager.getBackgroundBasicColor, allBinaryGameLayerManager.getForegroundBasicColor);
        Initialize_Fields (This);
        This.logUtil.putF (This.commonStrings.START, GameInputMappingInstructionsCanvas_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
        This.colorFillPaintable := ColorFillPaintableFactory_Package.getInstance.getInstance (allBinaryGameLayerManager.getBackgroundBasicColor, False);
   end Initialize;

   function Create (commandListener_Param : access CommandListener_Package.CommandListener'Class; allBinaryGameLayerManager_Param : access AllBinaryGameLayerManager_Package.AllBinaryGameLayerManager'Class) return GameInputMappingInstructionsCanvas_Access is
      This : constant GameInputMappingInstructionsCanvas_Access := new GameInputMappingInstructionsCanvas;
   begin
      GameInputMappingInstructionsCanvas_Package.Initialize (This.all, commandListener_Param, allBinaryGameLayerManager_Param);
      return This;
   end Create;

   procedure initCommands (This : in out GameInputMappingInstructionsCanvas; cmdListener_Param : access CommandListener_Package.CommandListener'Class) is
      cmdListener : constant CommandListener_Access := CommandListener_Access (cmdListener_Param);
   begin
        GameInputMappingInstructionsCanvas'Class (This).removeAllCommands;
        GameInputMappingInstructionsCanvas'Class (This).addCommand (GameInputMappingInstructionsCanvas_Package.CLOSE);
        GameInputMappingInstructionsCanvas'Class (This).setCommandListener (cmdListener);
   end initCommands;

   procedure paint (This : in out GameInputMappingInstructionsCanvas; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      halfWidth : Integer;
      beginWidth : Integer;
   begin
        This.myFontProcessor.process (graphics);
        This.colorFillPaintable.paint (graphics);
        halfWidth := This.displayInfo.getLastHalfWidth;
        beginWidth := (Java_Shift_Right_Arithmetic (graphics.getFont.stringWidth (This.TITLE), 1));
        graphics.setColor (This.foregroundColor);
        graphics.drawString (This.TITLE, (halfWidth) - (beginWidth), This.fontHeight, This.anchor);
        This.drawStringUtil.drawCenterStrings (graphics, This.instructions, This.displayInfo.getLastWidth, This.fontHeight, halfWidth, (3) * (This.fontHeight));
        GameCommandCanvas (This).paint (graphics);
   end paint;

begin
   null;
   DISPLAY := Command_Package.Create (To_Unbounded_String ("Help"), StringUtil_Package.getInstance.EMPTY_STRING, Command_Package.SCREEN, 1);
   CLOSE := Command_Package.Create (To_Unbounded_String ("Close"), StringUtil_Package.getInstance.EMPTY_STRING, Command_Package.SCREEN, 1);
   NAME := To_Unbounded_String ("GameInputMappingInstructionsCanvas");

end org.allbinary.game.displayable.canvas.GameInputMappingInstructionsCanvas_Package;


