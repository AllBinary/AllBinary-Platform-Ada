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


package body org.allbinary.game.displayable.canvas.GameInputMappingCanvas_Package is

   procedure Initialize_Fields (This : in out GameInputMappingCanvas'Class) is
   begin
      null;
      
      
      
      
      This.NONE := GameKeyFactory_Package.getInstance.NONE;
      
      This.selectedGameKey := This.NONE;
      This.selectedInput := This.NONE;
      This.inputFactory := InputFactory_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out GameInputMappingCanvas'Class; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; commandListener_Param : access CommandListener_Package.CommandListener'Class; allBinaryGameLayerManager_Param : access AllBinaryGameLayerManager_Package.AllBinaryGameLayerManager'Class; helpPaintable_Param : access HelpPaintable_Package.HelpPaintable'Class) is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      commandListener : constant CommandListener_Access := CommandListener_Access (commandListener_Param);
      allBinaryGameLayerManager : constant AllBinaryGameLayerManager_Access := AllBinaryGameLayerManager_Access (allBinaryGameLayerManager_Param);
      helpPaintable : constant HelpPaintable_Access := HelpPaintable_Access (helpPaintable_Param);
   begin
        GameCommandCanvas_Package.Initialize (This, commandListener, GameInputMappingCanvas_Package.NAME, allBinaryGameLayerManager.getBackgroundBasicColor, allBinaryGameLayerManager.getForegroundBasicColor);
        Initialize_Fields (This);
        This.logUtil.putF (This.commonStrings.START, GameInputMappingCanvas_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
        if (helpPaintable) = (null) then
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Help Paintable Exception")));
        end if;
        This.abeClientInformation := abeClientInformation;
        This.helpPaintable := InputMappingHelpPaintable_Access (helpPaintable);
        This.inputMapping := PlatformInputMappingFactory_Package.getInstance.getPersistentInputMappingInstance;
        This.paintable := ProcessPaintable_Package.Create;
        This.colorFillPaintable := ColorFillPaintableFactory_Package.getInstance.getInstance (allBinaryGameLayerManager.getBackgroundBasicColor, False);
   end Initialize;

   function Create (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; commandListener_Param : access CommandListener_Package.CommandListener'Class; allBinaryGameLayerManager_Param : access AllBinaryGameLayerManager_Package.AllBinaryGameLayerManager'Class; helpPaintable_Param : access HelpPaintable_Package.HelpPaintable'Class) return GameInputMappingCanvas_Access is
      This : constant GameInputMappingCanvas_Access := new GameInputMappingCanvas;
   begin
      GameInputMappingCanvas_Package.Initialize (This.all, abeClientInformation_Param, commandListener_Param, allBinaryGameLayerManager_Param, helpPaintable_Param);
      return This;
   end Create;

   --  throws Exception
   procedure close (This : in out GameInputMappingCanvas) is
   begin
        GameCommandCanvas (This).close;
        This.paintable.process;
        This.selectedGameKey := This.NONE;
        This.selectedInput := This.NONE;
        GameInputMappingCanvas'Class (This).update;
   end close;

   procedure initCommands (This : in out GameInputMappingCanvas; cmdListener_Param : access CommandListener_Package.CommandListener'Class) is
      cmdListener : constant CommandListener_Access := CommandListener_Access (cmdListener_Param);
   begin
        GameInputMappingCanvas'Class (This).removeAllCommands;
        GameInputMappingCanvas'Class (This).addCommand (GameCommandsFactory_Package.getInstance.CLOSE_AND_SHOW_GAME_CANVAS);
        GameInputMappingCanvas'Class (This).addCommand (GameInputMappingCanvas_Package.DEFAULT);
        GameInputMappingCanvas'Class (This).addCommand (GameInputMappingInstructionsCanvas_Package.DISPLAY);
        GameInputMappingCanvas'Class (This).setCommandListener (cmdListener);
   end initCommands;

   procedure keyPressed (This : in out GameInputMappingCanvas; keyCode : Integer) is
   begin
        GameInputMappingCanvas'Class (This).keyPressedByDevice (keyCode, 0);
   end keyPressed;

   procedure keyReleased (This : in out GameInputMappingCanvas; keyCode : Integer) is
   begin
        GameInputMappingCanvas'Class (This).keyReleasedByDevice (keyCode, 0);
   end keyReleased;

   procedure keyRepeated (This : in out GameInputMappingCanvas; keyCode : Integer) is
   begin
        GameInputMappingCanvas'Class (This).keyRepeatedByDevice (keyCode, 0);
   end keyRepeated;

   procedure keyPressedByDevice (This : in out GameInputMappingCanvas; keyCode : Integer; deviceId : Integer) is
   begin
        GameInputMappingCanvas'Class (This).addGameKey (keyCode, False);
        GameCommandCanvas (This).keyPressedByDevice (keyCode, 0);
   end keyPressedByDevice;

   procedure addGameKey (This : in out GameInputMappingCanvas; keyCode : Integer; repeated : Boolean) is
      gameKey : GameKey_Access;
      input : Input_Access;
   begin
        begin
            This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("Raw Device Key Code: ")).append (To_Unbounded_String (Java_To_Unsigned_String (keyCode, 16))).toString, GameInputMappingCanvas_Access'(This'Unchecked_Access), This.gameInputStrings.ADD_KEY_EVENT);
            gameKey := This.inputToGameKeyMapping.getInstanceForCanvas (GameInputMappingCanvas_Access'(This'Unchecked_Access), keyCode);
            input := This.inputFactory.getInstanceById (keyCode);
            GameInputMappingCanvas'Class (This).processInputMapping (gameKey, input);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (To_Unbounded_String ("Key Event Error"), GameInputMappingCanvas_Access'(This'Unchecked_Access), This.gameInputStrings.ADD_KEY_EVENT, e);
                end;
        end;
   end addGameKey;

   --  throws Exception
   procedure processInputMapping (This : in out GameInputMappingCanvas; gameKey_Param : access GameKey_Package.GameKey'Class; input_Param : access Input_Package.Input'Class) is
      gameKey : constant GameKey_Access := GameKey_Access (gameKey_Param);
      input : constant Input_Access := Input_Access (input_Param);
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (To_Unbounded_String ("Start Passed GameKey: "));
        stringBuffer.append (This.stringUtil.toString (gameKey));
        stringBuffer.append (To_Unbounded_String (" Input: "));
        stringBuffer.append (This.stringUtil.toString (input));
        This.logUtil.putF (stringBuffer.toString, GameInputMappingCanvas_Access'(This'Unchecked_Access), This.commonStrings.PROCESS);
        if (This.selectedGameKey) /= (This.NONE) then
            GameInputMappingCanvas'Class (This).gameActionCrud (gameKey, input);
        else
            GameInputMappingCanvas'Class (This).setSelectedAction (gameKey);
        end if;
   end processInputMapping;

   procedure setSelectedAction (This : in out GameInputMappingCanvas; gameKey_Param : access GameKey_Package.GameKey'Class) is
      gameKey : constant GameKey_Access := GameKey_Access (gameKey_Param);
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("Selected GameKey: ")).append (This.stringUtil.toString (gameKey)).toString, GameInputMappingCanvas_Access'(This'Unchecked_Access), To_Unbounded_String ("setSelectedAction"));
        This.selectedGameKey := gameKey;
        This.selectedInput := This.NONE;
        This.helpPaintable.update (This.selectedGameKey, This.selectedInput);
        This.repaintBehavior.onChangeRepaint (GameInputMappingCanvas_Access'(This'Unchecked_Access));
   end setSelectedAction;

   --  throws Exception
   procedure gameActionCrud (This : in out GameInputMappingCanvas; gameKey_Param : access GameKey_Package.GameKey'Class; input_Param : access Input_Package.Input'Class) is
      gameKey : constant GameKey_Access := GameKey_Access (gameKey_Param);
      input : constant Input_Access := Input_Access (input_Param);
      stringBuffer : StringMaker_Access;
      list : BasicArrayList_Access;
      isInputAlreadyMappedToSelectedAction : Boolean;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (To_Unbounded_String ("Start GameKey: "));
        stringBuffer.append (This.stringUtil.toString (This.selectedGameKey));
        stringBuffer.append (To_Unbounded_String (" Input: "));
        stringBuffer.append (This.stringUtil.toString (This.selectedInput));
        This.logUtil.putF (stringBuffer.toString, GameInputMappingCanvas_Access'(This'Unchecked_Access), To_Unbounded_String ("gameActionCrud"));
        if (This.selectedInput) = (This.NONE) then
            list := This.inputMapping.getInputMapping.getMappedInput (This.selectedGameKey);
            isInputAlreadyMappedToSelectedAction := list.contains (input);
            if isInputAlreadyMappedToSelectedAction then
                This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("Already Mapped Input: ")).append (This.stringUtil.toString (input)).toString, GameInputMappingCanvas_Access'(This'Unchecked_Access), To_Unbounded_String ("gameActionCrud"));
                This.selectedInput := input;
                This.helpPaintable.update (This.selectedGameKey, This.selectedInput);
                This.repaintBehavior.onChangeRepaint (GameInputMappingCanvas_Access'(This'Unchecked_Access));
            else
                GameInputMappingCanvas'Class (This).addNewMapping (gameKey, input);
            end if;
        elsif This.inputMapping.isDelete (input) then
            GameInputMappingCanvas'Class (This).deleteCurrentMapping;
        else
            GameInputMappingCanvas'Class (This).setSelectedAction (gameKey);
        end if;
   end gameActionCrud;

   --  throws Exception
   procedure addNewMapping (This : in out GameInputMappingCanvas; gameKey_Param : access GameKey_Package.GameKey'Class; input_Param : access Input_Package.Input'Class) is
      gameKey : constant GameKey_Access := GameKey_Access (gameKey_Param);
      input : constant Input_Access := Input_Access (input_Param);
      METHOD_NAME : Unbounded_String;
      isInputAlreadyMapped : Boolean;
      stringBuffer : StringMaker_Access;
   begin
        METHOD_NAME := To_Unbounded_String ("addNewMapping");
        This.logUtil.putF (This.commonStrings.START, GameInputMappingCanvas_Access'(This'Unchecked_Access), METHOD_NAME);
        isInputAlreadyMapped := This.inputMapping.getInputMapping.isMapped (input);
        if (not (isInputAlreadyMapped)) and then (not (This.inputMapping.isSystemInput (input))) then
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (To_Unbounded_String ("Add Key Mapping : GameKey: "));
            stringBuffer.append (This.stringUtil.toString (This.selectedGameKey));
            stringBuffer.append (To_Unbounded_String (" Input: "));
            stringBuffer.append (This.stringUtil.toString (This.selectedInput));
            This.logUtil.putF (stringBuffer.toString, GameInputMappingCanvas_Access'(This'Unchecked_Access), METHOD_NAME);
            This.inputMapping.getInputMapping.add (This.selectedGameKey, input);
            This.selectedInput := input;
            GameInputMappingCanvas'Class (This).update;
        else
            This.logUtil.putF (To_Unbounded_String ("Unable to add Mapping since one already exists or is MENU, HOME, or BACK key and setting selected action to what it is already mapped to"), GameInputMappingCanvas_Access'(This'Unchecked_Access), METHOD_NAME);
            GameInputMappingCanvas'Class (This).setSelectedAction (gameKey);
        end if;
   end addNewMapping;

   --  throws Exception
   procedure deleteCurrentMapping (This : in out GameInputMappingCanvas) is
      METHOD_NAME : Unbounded_String;
      list : BasicArrayList_Access;
      stringBuffer : StringMaker_Access;
   begin
        METHOD_NAME := To_Unbounded_String ("deleteCurrentMapping");
        list := This.inputMapping.getInputMapping.getMappedInput (This.selectedGameKey);
        if (list.size) > (1) then
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (To_Unbounded_String ("Start GameKey: "));
            stringBuffer.append (To_Unbounded_String ("Remove Key Mapping: GameKey: "));
            stringBuffer.append (This.stringUtil.toString (This.selectedGameKey));
            stringBuffer.append (To_Unbounded_String (" Input: "));
            stringBuffer.append (This.stringUtil.toString (This.selectedInput));
            This.logUtil.putF (stringBuffer.toString, GameInputMappingCanvas_Access'(This'Unchecked_Access), METHOD_NAME);
            This.inputMapping.getInputMapping.remove (This.selectedGameKey, This.selectedInput);
            This.selectedInput := This.NONE;
            GameInputMappingCanvas'Class (This).update;
        else
            This.logUtil.putF (To_Unbounded_String ("Can't Remove Last Key Mapping"), GameInputMappingCanvas_Access'(This'Unchecked_Access), METHOD_NAME);
        end if;
   end deleteCurrentMapping;

   --  throws Exception
   procedure setDefault (This : in out GameInputMappingCanvas) is
   begin
        This.inputMapping.setDefault (This.abeClientInformation);
        This.helpPaintable.update (This.NONE, This.NONE);
        This.repaintBehavior.onChangeRepaint (GameInputMappingCanvas_Access'(This'Unchecked_Access));
   end setDefault;

   --  throws Exception
   procedure update (This : in out GameInputMappingCanvas) is
   begin
        This.inputMapping.update (This.abeClientInformation);
        This.helpPaintable.update (This.selectedGameKey, This.selectedInput);
        This.repaintBehavior.onChangeRepaint (GameInputMappingCanvas_Access'(This'Unchecked_Access));
   end update;

   procedure paint (This : in out GameInputMappingCanvas; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        This.colorFillPaintable.paint (graphics);
        This.helpPaintable.paint (graphics);
        This.paintable.paint (graphics);
        GameCommandCanvas (This).paint (graphics);
   end paint;

begin
   null;
   NAME := To_Unbounded_String ("GameInputMappingCanvas");
   DISPLAY := Command_Package.Create (To_Unbounded_String ("Controls"), StringUtil_Package.getInstance.EMPTY_STRING, Command_Package.SCREEN, 2);
   DEFAULT := Command_Package.Create (To_Unbounded_String ("Default"), StringUtil_Package.getInstance.EMPTY_STRING, Command_Package.SCREEN, 2);

end org.allbinary.game.displayable.canvas.GameInputMappingCanvas_Package;


