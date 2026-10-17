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


package body org.allbinary.game.paint.help.InputMappingHelpPaintable_Package is

   procedure Initialize_Fields (This : in out InputMappingHelpPaintable'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.commonSeps := CommonSeps_Package.getInstance;
      This.stringUtil := StringUtil_Package.getInstance;
      This.basicColorFactory := BasicColorFactory_Package.getInstance;
      This.NONE := GameKeyFactory_Package.getInstance.NONE;
      This.EMPTY_STRING := StringUtil_Package.getInstance.EMPTY_STRING;
      
      This.keyMappingArray := new BasicArrayList_Access_Array'(0 .. (0) - 1 => null);
      This.actionBasicColor := new BasicColor_Access_Array'(0 .. (0) - 1 => null);
      This.inputBasicColorArray := new BasicColor_Access_Array_Access_Array'(0 .. (0) - 1 => new BasicColor_Access_Array'(0 .. (0) - 1 => null));
      This.selectedBasicColor := null;
      This.updateMyFontProperties := UpdateMyFontProperties_Package.Create;
   end Initialize_Fields;


   procedure Initialize (This : in out InputMappingHelpPaintable'Class; gameInputMappingArray : GameInputMapping_Access_Array_Access; backgroundBasicColor_Param : access BasicColor'Class; basicColor_Param : access BasicColor'Class) is
      backgroundBasicColor : BasicColor_Access := BasicColor_Access (backgroundBasicColor_Param);
      basicColor : BasicColor_Access := BasicColor_Access (basicColor_Param);
   begin
        HelpPaintable_Package.Initialize (This, To_Unbounded_String ("Input Mapping"), backgroundBasicColor, basicColor);
        Initialize_Fields (This);
        This.gameInputMappingArray := gameInputMappingArray;
        This.update (This.NONE, This.NONE);
        if ((backgroundBasicColor) = (This.basicColorFactory.WHITE)) or else ((basicColor) = (This.basicColorFactory.WHITE)) then
            This.selectedBasicColor := This.basicColorFactory.RED;
        else
            This.selectedBasicColor := This.basicColorFactory.WHITE;
        end if;
   end Initialize;

   function Create (gameInputMappingArray : GameInputMapping_Access_Array_Access; backgroundBasicColor_Param : access BasicColor'Class; basicColor_Param : access BasicColor'Class) return InputMappingHelpPaintable_Access is
      This : constant InputMappingHelpPaintable_Access := new InputMappingHelpPaintable;
   begin
      InputMappingHelpPaintable_Package.Initialize (This.all, gameInputMappingArray, backgroundBasicColor_Param, basicColor_Param);
      return This;
   end Create;

   procedure updateMeasurement (This : in out InputMappingHelpPaintable; graphics_Param : access Graphics'Class) is
      graphics : Graphics_Access := Graphics_Access (graphics_Param);
      font : Font_Access;
      updateMyFontProperties : UpdateMyFontProperties_Access;
      stringMaker : StringMaker_Access;
      inputInfo : Unbounded_String_Array_Access;
      size : Integer;
      list : BasicArrayList_Access;
      keyMappings : Unbounded_String;
      actionString : Unbounded_String;
      input : Input_Access;
      size2 : Integer;
      index2 : Integer;
      index : Integer;
   begin
        font := graphics.getFont;
        updateMyFontProperties := UpdateMyFontProperties_Package.Create;
        updateMyFontProperties.charHeight := font.getHeight;
        stringMaker := StringMaker_Package.Create;
        inputInfo := This.inputInfo;
        size := inputInfo'Length;
        updateMyFontProperties.actionStringArray := new Unbounded_String_Array'(0 .. (size) - 1 => Null_Unbounded_String);
        updateMyFontProperties.keymappingBeginWidthArray := new Integer_Array'(0 .. (size) - 1 => 0);
        updateMyFontProperties.actionStringDeltaXArray := new Integer_Array'(0 .. (size) - 1 => 0);
        updateMyFontProperties.inputDeltaXArray := new Integer_Array_Access_Array'(0 .. (size) - 1 => new Integer_Array'(0 .. (0) - 1 => 0));
        updateMyFontProperties.sepArray := new Unbounded_String_Array_Access_Array'(0 .. (size) - 1 => new Unbounded_String_Array'(0 .. (0) - 1 => Null_Unbounded_String));
        updateMyFontProperties.sepWidthArray := new Integer_Array_Access_Array'(0 .. (size) - 1 => new Integer_Array'(0 .. (0) - 1 => 0));
        list := null;
        keyMappings := Null_Unbounded_String;
        actionString := Null_Unbounded_String;
        input := null;
        size2 := 0;
        for index in 0 .. (size) - 1 loop
            list := This.keyMappingArray (index);
            keyMappings := This.get (list);
            stringMaker.delete (0, stringMaker.length);
            actionString := stringMaker.append (inputInfo (index)).append (This.commonSeps.COLON).append (This.commonSeps.SPACE).append (This.commonSeps.SPACE).toString;
            updateMyFontProperties.actionStringArray (index) := actionString;
            stringMaker.delete (0, stringMaker.length);
            updateMyFontProperties.keymappingBeginWidthArray (index) := (Java_Shift_Right_Arithmetic (font.stringWidth (stringMaker.append (updateMyFontProperties.actionStringArray (index)).append (keyMappings).toString), 1));
            updateMyFontProperties.actionStringDeltaXArray (index) := font.stringWidth (actionString);
            size2 := list.size;
            updateMyFontProperties.inputDeltaXArray (index) := new Integer_Array'(0 .. (size2) - 1 => 0);
            updateMyFontProperties.sepArray (index) := new Unbounded_String_Array'(0 .. (size2) - 1 => Null_Unbounded_String);
            updateMyFontProperties.sepWidthArray (index) := new Integer_Array'(0 .. (size2) - 1 => 0);
            for index2 in 0 .. (size2) - 1 loop
                input := Input_Access (list.objectArray (index2));
                updateMyFontProperties.inputDeltaXArray (index) (index2) := font.stringWidth (input.getName);
                updateMyFontProperties.sepArray (index) (index2) := This.EMPTY_STRING;
                if ((index2) + (1)) < (list.size) then
                    if (list.size) = (2) then
                        updateMyFontProperties.sepArray (index) (index2) := InputMappingHelpPaintable_Package.AND_Id;
                    else
                        if ((index2) + (2)) = (list.size) then
                            updateMyFontProperties.sepArray (index) (index2) := InputMappingHelpPaintable_Package.MORE_THAN_TWO_IN_LIST_AND;
                        else
                            updateMyFontProperties.sepArray (index) (index2) := InputMappingHelpPaintable_Package.SEP;
                        end if;
                    end if;
                end if;
                if (updateMyFontProperties.sepArray (index) (index2)) /= (This.EMPTY_STRING) then
                    updateMyFontProperties.sepWidthArray (index) (index2) := font.stringWidth (updateMyFontProperties.sepArray (index) (index2));
                end if;
            end loop;
        end loop;
        This.updateMyFontProperties := updateMyFontProperties;
        HelpPaintable (This).updateMeasurement (graphics);
   end updateMeasurement;

   procedure update (This : in out InputMappingHelpPaintable; selectedGameKey_Param : access GameKey'Class; selectedInput_Param : access Input'Class) is
      selectedGameKey : GameKey_Access := GameKey_Access (selectedGameKey_Param);
      selectedInput : Input_Access := Input_Access (selectedInput_Param);
      stringMaker : StringMaker_Access;
      gameKeyMapping : PersistentInputMapping_Access;
      size : Integer;
      keyInfo : Unbounded_String_Array_Access;
      keyMappingArray : BasicArrayList_Access_Array_Access;
      actionBasicColor : BasicColor_Access_Array_Access;
      inputBasicColorArray : BasicColor_Access_Array_Access_Array_Access;
      gameInputMapping : GameInputMapping_Access;
      gameKey : GameKey_Access;
      list : BasicArrayList_Access;
      size2 : Integer;
      index2 : Integer;
      indexOfSelectedInput : Integer;
      index : Integer;
   begin
        stringMaker := StringMaker_Package.Create;
        This.logUtil.putF (stringMaker.append (CommonLabels_Package.getInstance.START_LABEL).append (To_Unbounded_String ("selected GameKey: ")).append (This.stringUtil.toString (selectedGameKey)).append (To_Unbounded_String (" Input: ")).append (This.stringUtil.toString (selectedInput)).toString, InputMappingHelpPaintable_Access'(This'Unchecked_Access), This.commonStrings.UPDATE);
        gameKeyMapping := PlatformInputMappingFactory_Package.getInstance.getPersistentInputMappingInstance;
        size := This.gameInputMappingArray'Length;
        keyInfo := new Unbounded_String_Array'(0 .. (size) - 1 => Null_Unbounded_String);
        keyMappingArray := new BasicArrayList_Access_Array'(0 .. (size) - 1 => null);
        actionBasicColor := new BasicColor_Access_Array'(0 .. (size) - 1 => null);
        inputBasicColorArray := new BasicColor_Access_Array_Access_Array'(0 .. (size) - 1 => null);
        gameInputMapping := null;
        gameKey := null;
        list := null;
        for index in 0 .. (size) - 1 loop
            gameInputMapping := This.gameInputMappingArray (index);
            gameKey := gameInputMapping.getGameKey;
            list := gameKeyMapping.getInputMapping.getMappedInput (gameKey);
            size2 := list.size;
            inputBasicColorArray (index) := new BasicColor_Access_Array'(0 .. (size2) - 1 => null);
            for index2 in 0 .. (size2) - 1 loop
                inputBasicColorArray (index) (index2) := This.basicColor;
            end loop;
            if (gameKey) = (selectedGameKey) then
                stringMaker.delete (0, stringMaker.length);
                This.logUtil.putF (stringMaker.append (To_Unbounded_String ("Found: selected GameKey: ")).append (This.stringUtil.toString (selectedGameKey)).toString, InputMappingHelpPaintable_Access'(This'Unchecked_Access), This.commonStrings.UPDATE);
                actionBasicColor (index) := This.selectedBasicColor;
                indexOfSelectedInput := list.indexOf (selectedInput);
                if (indexOfSelectedInput) >= (0) then
                    stringMaker.delete (0, stringMaker.length);
                    This.logUtil.putF (stringMaker.append (To_Unbounded_String ("Found: selected Input: ")).append (This.stringUtil.toString (selectedInput)).toString, InputMappingHelpPaintable_Access'(This'Unchecked_Access), This.commonStrings.UPDATE);
                    inputBasicColorArray (index) (indexOfSelectedInput) := This.selectedBasicColor;
                end if;
            else
                actionBasicColor (index) := This.basicColor;
            end if;
            keyInfo (index) := gameInputMapping.getName;
            keyMappingArray (index) := list;
        end loop;
        This.keyMappingArray := keyMappingArray;
        This.actionBasicColor := actionBasicColor;
        This.inputBasicColorArray := inputBasicColorArray;
        HelpPaintable (This).setInputInfoP (keyInfo);
        This.myFontProcessor := This.updateMyFontProcessor;
   end update;

   function get (This : in out InputMappingHelpPaintable; keyList_Param : access BasicArrayList'Class) return Unbounded_String is
      keyList : BasicArrayList_Access := BasicArrayList_Access (keyList_Param);
      stringBuffer : StringMaker_Access;
      key : Input_Access;
      size : Integer;
      index : Integer;
   begin
        stringBuffer := StringMaker_Package.Create;
        key := null;
        size := keyList.size;
        for index in 0 .. (size) - 1 loop
            key := Input_Access (keyList.objectArray (index));
            stringBuffer.append (key.getName);
            if ((index) + (1)) < (keyList.size) then
                if (keyList.size) = (2) then
                    stringBuffer.append (InputMappingHelpPaintable_Package.AND_Id);
                else
                    if ((index) + (2)) = (keyList.size) then
                        stringBuffer.append (InputMappingHelpPaintable_Package.MORE_THAN_TWO_IN_LIST_AND);
                    else
                        stringBuffer.append (InputMappingHelpPaintable_Package.SEP);
                    end if;
                end if;
            end if;
        end loop;
        return stringBuffer.toString;
   end get;

   procedure paint (This : in out InputMappingHelpPaintable; graphics_Param : access Graphics'Class) is
      graphics : Graphics_Access := Graphics_Access (graphics_Param);
      halfWidth : Integer;
      inputInfo : Unbounded_String_Array_Access;
      size : Integer;
      y : Integer;
      deltaX : Integer;
      size2 : Integer;
      actionString : Unbounded_String;
      input : Input_Access;
      list : BasicArrayList_Access;
      sep_Case : Unbounded_String;
      beginWidth : Integer;
      index2 : Integer;
      index : Integer;
   begin
        This.myFontProcessor.process (graphics);
        halfWidth := This.displayInfo.getLastHalfWidth;
        graphics.setColor (This.basicColor.intValue);
        graphics.drawString (This.title, (halfWidth) - (This.titleBeginWidth), This.updateMyFontProperties.charHeight, This.anchor);
        inputInfo := This.inputInfo;
        size := inputInfo'Length;
        y := 0;
        deltaX := 0;
        size2 := 0;
        actionString := Null_Unbounded_String;
        input := null;
        list := null;
        sep_Case := Null_Unbounded_String;
        beginWidth := 0;
        for index in 0 .. (size) - 1 loop
            y := (((index) + (3))) * (This.updateMyFontProperties.charHeight);
            deltaX := 0;
            list := This.keyMappingArray (index);
            size2 := list.size;
            beginWidth := This.updateMyFontProperties.keymappingBeginWidthArray (index);
            graphics.setColor (This.actionBasicColor (index).intValue);
            actionString := This.updateMyFontProperties.actionStringArray (index);
            graphics.drawString (actionString, ((halfWidth) - (beginWidth)) + (deltaX), y, This.anchor);
            deltaX := (deltaX) + (This.updateMyFontProperties.actionStringDeltaXArray (index));
            for index2 in 0 .. (size2) - 1 loop
                input := Input_Access (list.objectArray (index2));
                graphics.setColor (This.inputBasicColorArray (index) (index2).intValue);
                graphics.drawString (input.getName, ((halfWidth) - (beginWidth)) + (deltaX), y, This.anchor);
                deltaX := (deltaX) + (This.updateMyFontProperties.inputDeltaXArray (index) (index2));
                sep_Case := This.updateMyFontProperties.sepArray (index) (index2);
                graphics.setColor (This.basicColor.intValue);
                graphics.drawString (sep_Case, ((halfWidth) - (beginWidth)) + (deltaX), y, This.anchor);
                deltaX := (deltaX) + (This.updateMyFontProperties.sepWidthArray (index) (index2));
            end loop;
        end loop;
   end paint;

   procedure get (This : in out InputMappingHelpPaintable; keyList_Param : access BasicArrayList'Class) is
      Java_Result : constant Unbounded_String := InputMappingHelpPaintable'Class (This).get (keyList_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

begin
   null;
   AND_Id := To_Unbounded_String (" and ");
   SEP := To_Unbounded_String (", ");
   MORE_THAN_TWO_IN_LIST_AND := To_Unbounded_String (", and ");

end org.allbinary.game.paint.help.InputMappingHelpPaintable_Package;


package body org.allbinary.game.paint.help.UpdateMyFontProperties_Package is

   procedure Initialize_Fields (This : in out UpdateMyFontProperties'Class) is
   begin
      null;
      This.actionStringArray := StringUtil_Package.getInstance.getArrayInstance;
      This.keymappingBeginWidthArray := NullUtil_Package.getInstance.NULL_INT_ARRAY;
      This.actionStringDeltaXArray := NullUtil_Package.getInstance.NULL_INT_ARRAY;
      This.inputDeltaXArray := NullUtil_Package.getInstance.NULL_INT_ARRAY_ARRAY;
      This.sepArray := new Unbounded_String_Array_Access_Array'(0 .. (0) - 1 => new Unbounded_String_Array'(0 .. (0) - 1 => Null_Unbounded_String));
      This.sepWidthArray := NullUtil_Package.getInstance.NULL_INT_ARRAY_ARRAY;
      This.charHeight := 0;
   end Initialize_Fields;

   procedure Initialize (This : in out UpdateMyFontProperties'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return UpdateMyFontProperties_Access is
      This : constant UpdateMyFontProperties_Access := new UpdateMyFontProperties;
   begin
      UpdateMyFontProperties_Package.Initialize (This.all);
      return This;
   end Create;


end org.allbinary.game.paint.help.UpdateMyFontProperties_Package;


