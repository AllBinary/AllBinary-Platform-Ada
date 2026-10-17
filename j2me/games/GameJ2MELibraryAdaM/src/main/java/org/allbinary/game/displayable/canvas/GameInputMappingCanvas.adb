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


   procedure Initialize (This : in out GameInputMappingCanvas'Class; abeClientInformation : AbeClientInformationInterface_Access; commandListener : CommandListener_Access; allBinaryGameLayerManager : AllBinaryGameLayerManager_Access; helpPaintable : HelpPaintable_Access) is
   begin
        GameCommandCanvas_Package.Initialize (This, commandListener, GameInputMappingCanvas_Package.NAME, allBinaryGameLayerManager.getBackgroundBasicColor, allBinaryGameLayerManager.getForegroundBasicColor);
        Initialize_Fields (This);
        This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, This.commonStrings.CONSTRUCTOR);
        if (helpPaintable) = (null) then
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Help Paintable Exception")));
        end if;
        This.abeClientInformation := abeClientInformation;
        This.helpPaintable := InputMappingHelpPaintable_Access (helpPaintable);
        This.inputMapping := PlatformInputMappingFactory_Package.getInstance.getPersistentInputMappingInstance;
        This.paintable := ProcessPaintable_Package.Create;
        This.colorFillPaintable := ColorFillPaintableFactory_Package.getInstance.getInstance (allBinaryGameLayerManager.getBackgroundBasicColor, False);
   end Initialize;

   function Create (abeClientInformation : AbeClientInformationInterface_Access; commandListener : CommandListener_Access; allBinaryGameLayerManager : AllBinaryGameLayerManager_Access; helpPaintable : HelpPaintable_Access) return GameInputMappingCanvas_Access is
      This : constant GameInputMappingCanvas_Access := new GameInputMappingCanvas;
   begin
      Initialize (This.all, abeClientInformation, commandListener, allBinaryGameLayerManager, helpPaintable);
      return This;
   end Create;

   --  throws Exception
   procedure close (This : in out GameInputMappingCanvas) is
   begin
        GameCommandCanvas (This).close;
        This.paintable.process;
        This.selectedGameKey := This.NONE;
        This.selectedInput := This.NONE;
        This.update;
   end close;

   procedure initCommands (This : in out GameInputMappingCanvas; cmdListener : CommandListener_Access) is
   begin
        This.removeAllCommands;
        This.addCommand (GameCommandsFactory_Package.getInstance.CLOSE_AND_SHOW_GAME_CANVAS);
        This.addCommand (GameInputMappingCanvas_Package.DEFAULT);
        This.addCommand (GameInputMappingInstructionsCanvas_Package.DISPLAY);
        This.setCommandListener (cmdListener);
   end initCommands;

   procedure keyPressed (This : in out GameInputMappingCanvas; keyCode : Integer) is
   begin
        This.keyPressedByDevice (keyCode, 0);
   end keyPressed;

   procedure keyReleased (This : in out GameInputMappingCanvas; keyCode : Integer) is
   begin
        This.keyReleasedByDevice (keyCode, 0);
   end keyReleased;

   procedure keyRepeated (This : in out GameInputMappingCanvas; keyCode : Integer) is
   begin
        This.keyRepeatedByDevice (keyCode, 0);
   end keyRepeated;

   procedure keyPressedByDevice (This : in out GameInputMappingCanvas; keyCode : Integer; deviceId : Integer) is
   begin
        This.addGameKey (keyCode, False);
        GameCommandCanvas (This).keyPressedByDevice (keyCode, 0);
   end keyPressedByDevice;

   procedure addGameKey (This : in out GameInputMappingCanvas; keyCode : Integer; repeated : Boolean) is
      gameKey : GameKey_Access;
      input : Input_Access;
   begin
        begin
            This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("Raw Device Key Code: ")).append (Integer_Package.toHexString (keyCode)).toString, This'Unchecked_Access, This.gameInputStrings.ADD_KEY_EVENT);
            gameKey := This.inputToGameKeyMapping.getInstanceForCanvas (This'Unchecked_Access, keyCode);
            input := This.inputFactory.getInstanceById (keyCode);
            This.processInputMapping (gameKey, input);
        exception
            when e : others =>
            This.logUtil.put (To_Unbounded_String ("Key Event Error"), This'Unchecked_Access, This.gameInputStrings.ADD_KEY_EVENT, e);
        end;
   end addGameKey;

   --  throws Exception
   procedure processInputMapping (This : in out GameInputMappingCanvas; gameKey : GameKey_Access; input : Input_Access) is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (To_Unbounded_String ("Start Passed GameKey: "));
        stringBuffer.append (This.stringUtil.toString (gameKey));
        stringBuffer.append (To_Unbounded_String (" Input: "));
        stringBuffer.append (This.stringUtil.toString (input));
        This.logUtil.putF (stringBuffer.toString, This'Unchecked_Access, This.commonStrings.PROCESS);
        if (This.selectedGameKey) /= (This.NONE) then
            This.gameActionCrud (gameKey, input);
        else
            This.setSelectedAction (gameKey);
        end if;
   end processInputMapping;

   procedure setSelectedAction (This : in out GameInputMappingCanvas; gameKey : GameKey_Access) is
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("Selected GameKey: ")).append (This.stringUtil.toString (gameKey)).toString, This'Unchecked_Access, To_Unbounded_String ("setSelectedAction"));
        This.selectedGameKey := gameKey;
        This.selectedInput := This.NONE;
        This.helpPaintable.update (This.selectedGameKey, This.selectedInput);
        This.repaintBehavior.onChangeRepaint (This'Unchecked_Access);
   end setSelectedAction;

   --  throws Exception
   procedure gameActionCrud (This : in out GameInputMappingCanvas; gameKey : GameKey_Access; input : Input_Access) is
      stringBuffer : StringMaker_Access;
      list : BasicArrayList_Access;
      isInputAlreadyMappedToSelectedAction : Boolean;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (To_Unbounded_String ("Start GameKey: "));
        stringBuffer.append (This.stringUtil.toString (This.selectedGameKey));
        stringBuffer.append (To_Unbounded_String (" Input: "));
        stringBuffer.append (This.stringUtil.toString (This.selectedInput));
        This.logUtil.putF (stringBuffer.toString, This'Unchecked_Access, To_Unbounded_String ("gameActionCrud"));
        if (This.selectedInput) = (This.NONE) then
            list := This.inputMapping.getInputMapping.getMappedInput (This.selectedGameKey);
            isInputAlreadyMappedToSelectedAction := list.contains (input);
            if isInputAlreadyMappedToSelectedAction then
                This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("Already Mapped Input: ")).append (This.stringUtil.toString (input)).toString, This'Unchecked_Access, To_Unbounded_String ("gameActionCrud"));
                This.selectedInput := input;
                This.helpPaintable.update (This.selectedGameKey, This.selectedInput);
                This.repaintBehavior.onChangeRepaint (This'Unchecked_Access);
            else
                This.addNewMapping (gameKey, input);
            end if;
        elsif This.inputMapping.isDelete (input) then
            This.deleteCurrentMapping;
        else
            This.setSelectedAction (gameKey);
        end if;
   end gameActionCrud;

   --  throws Exception
   procedure addNewMapping (This : in out GameInputMappingCanvas; gameKey : GameKey_Access; input : Input_Access) is
      METHOD_NAME : Unbounded_String;
      isInputAlreadyMapped : Boolean;
      stringBuffer : StringMaker_Access;
   begin
        METHOD_NAME := To_Unbounded_String ("addNewMapping");
        This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, METHOD_NAME);
        isInputAlreadyMapped := This.inputMapping.getInputMapping.isMapped (input);
        if (not (isInputAlreadyMapped)) and then (not (This.inputMapping.isSystemInput (input))) then
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (To_Unbounded_String ("Add Key Mapping : GameKey: "));
            stringBuffer.append (This.stringUtil.toString (This.selectedGameKey));
            stringBuffer.append (To_Unbounded_String (" Input: "));
            stringBuffer.append (This.stringUtil.toString (This.selectedInput));
            This.logUtil.putF (stringBuffer.toString, This'Unchecked_Access, METHOD_NAME);
            This.inputMapping.getInputMapping.add (This.selectedGameKey, input);
            This.selectedInput := input;
            This.update;
        else
            This.logUtil.putF (To_Unbounded_String ("Unable to add Mapping since one already exists or is MENU, HOME, or BACK key and setting selected action to what it is already mapped to"), This'Unchecked_Access, METHOD_NAME);
            This.setSelectedAction (gameKey);
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
            This.logUtil.putF (stringBuffer.toString, This'Unchecked_Access, METHOD_NAME);
            This.inputMapping.getInputMapping.remove (This.selectedGameKey, This.selectedInput);
            This.selectedInput := This.NONE;
            This.update;
        else
            This.logUtil.putF (To_Unbounded_String ("Can't Remove Last Key Mapping"), This'Unchecked_Access, METHOD_NAME);
        end if;
   end deleteCurrentMapping;

   --  throws Exception
   procedure setDefault (This : in out GameInputMappingCanvas) is
   begin
        This.inputMapping.setDefault (This.abeClientInformation);
        This.helpPaintable.update (This.NONE, This.NONE);
        This.repaintBehavior.onChangeRepaint (This'Unchecked_Access);
   end setDefault;

   --  throws Exception
   procedure update (This : in out GameInputMappingCanvas) is
   begin
        This.inputMapping.update (This.abeClientInformation);
        This.helpPaintable.update (This.selectedGameKey, This.selectedInput);
        This.repaintBehavior.onChangeRepaint (This'Unchecked_Access);
   end update;

   procedure paint (This : in out GameInputMappingCanvas; graphics : Graphics_Access) is
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


