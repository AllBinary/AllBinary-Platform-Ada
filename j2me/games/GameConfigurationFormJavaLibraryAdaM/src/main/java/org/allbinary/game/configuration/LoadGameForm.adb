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


with javax.microedition.lcdui.Choice_Package; use javax.microedition.lcdui.Choice_Package;
with javax.microedition.lcdui.Item_Package; use javax.microedition.lcdui.Item_Package;
with javax.microedition.lcdui.NullImage_Package; use javax.microedition.lcdui.NullImage_Package;
with javax.microedition.lcdui.StringItem_Package; use javax.microedition.lcdui.StringItem_Package;
with org.allbinary.game.commands.GameCommandsFactory_Package; use org.allbinary.game.commands.GameCommandsFactory_Package;
with org.allbinary.game.configuration.persistance.GamePersistanceSingleton_Package; use org.allbinary.game.configuration.persistance.GamePersistanceSingleton_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;

package body org.allbinary.game.configuration.LoadGameForm_Package is

   package Choice_Package renames Standard.javax.microedition.lcdui.Choice_Package;
   package Item_Package renames Standard.javax.microedition.lcdui.Item_Package;
   package NullImage_Package renames Standard.javax.microedition.lcdui.NullImage_Package;
   package StringItem_Package renames Standard.javax.microedition.lcdui.StringItem_Package;
   package GameCommandsFactory_Package renames Standard.org.allbinary.game.commands.GameCommandsFactory_Package;
   package GamePersistanceSingleton_Package renames Standard.org.allbinary.game.configuration.persistance.GamePersistanceSingleton_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   procedure Initialize_Fields (This : in out LoadGameForm'Class) is
   begin
      null;
      This.meUtil := MEUtil_Package.getInstance;
      This.areChoices := False;
   end Initialize_Fields;


   procedure Initialize (This : in out LoadGameForm'Class; commandListener_Param : access CommandListener_Package.CommandListener'Class; title : Unbounded_String; backgrounBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) is
      commandListener : constant CommandListener_Access := CommandListener_Access (commandListener_Param);
      backgrounBasicColor : constant BasicColor_Access := BasicColor_Access (backgrounBasicColor_Param);
      foregroundBasicColor : constant BasicColor_Access := BasicColor_Access (foregroundBasicColor_Param);
   begin
        CommandForm_Package.Initialize (This, commandListener, title, backgrounBasicColor, foregroundBasicColor);
        Initialize_Fields (This);
        This.logUtil.putF (This.commonStrings.START, LoadGameForm_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
        LoadGameForm'Class (This).update;
        LoadGameForm'Class (This).initCommands (commandListener);
   end Initialize;

   function Create (commandListener_Param : access CommandListener_Package.CommandListener'Class; title : Unbounded_String; backgrounBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) return LoadGameForm_Access is
      This : constant LoadGameForm_Access := new LoadGameForm;
   begin
      LoadGameForm_Package.Initialize (This.all, commandListener_Param, title, backgrounBasicColor_Param, foregroundBasicColor_Param);
      return This;
   end Create;

   procedure initCommands (This : in out LoadGameForm; cmdListener_Param : access CommandListener_Package.CommandListener'Class) is
      cmdListener : constant CommandListener_Access := CommandListener_Access (cmdListener_Param);
      gameCommandsFactory : GameCommandsFactory_Access;
   begin
        gameCommandsFactory := GameCommandsFactory_Package.getInstance;
        LoadGameForm'Class (This).removeAllCommands;
        LoadGameForm'Class (This).addCommand (gameCommandsFactory.LOAD_FILE);
        LoadGameForm'Class (This).addCommand (gameCommandsFactory.DELETE_FILE);
        LoadGameForm'Class (This).addCommand (gameCommandsFactory.CLOSE_AND_SHOW_GAME_CANVAS);
        LoadGameForm'Class (This).setCommandListener (cmdListener);
   end initCommands;

   --  throws Exception
   procedure update (This : in out LoadGameForm) is
      list : BasicArrayList_Access;
   begin
        list := GamePersistanceSingleton_Package.getInstance.getIds;
        LoadGameForm'Class (This).deleteAll;
        if (list.size) > (0) then
            LoadGameForm'Class (This).add (list, To_Unbounded_String ("Select A Saved Game"), Choice_Package.EXCLUSIVE);
            This.areChoices := True;
        else
            This.meUtil.appendItem (LoadGameForm_Access'(This'Unchecked_Access), StringItem_Package.Create (To_Unbounded_String ("No Saved Games"), StringUtil_Package.getInstance.EMPTY_STRING, Item_Package.PLAIN));
            This.areChoices := False;
        end if;
        CommandForm (This).update;
   end update;

   procedure add (This : in out LoadGameForm; list_Param : access BasicArrayList_Package.BasicArrayList'Class; name : Unbounded_String; option : Integer) is
      list : constant BasicArrayList_Access := BasicArrayList_Access (list_Param);
      choiceGroup : ChoiceGroup_Access;
   begin
        choiceGroup := LoadGameForm'Class (This).getChoiceGroup (list, name, option);
        if (list.size) > (0) then
            choiceGroup.setSelectedIndex (0, True);
        end if;
        This.meUtil.appendItem (LoadGameForm_Access'(This'Unchecked_Access), choiceGroup);
   end add;

   function getChoiceGroup (This : in out LoadGameForm; list_Param : access BasicArrayList_Package.BasicArrayList'Class; name : Unbounded_String; option : Integer) return ChoiceGroup_Access is
      list : constant BasicArrayList_Access := BasicArrayList_Access (list_Param);
      METHOD_NAME : Unbounded_String;
      ADDING_CHOICE : Unbounded_String;
      choiceGroup : ChoiceGroup_Access;
      size : Integer;
      anyType : Java_Object_Access;
      index : Integer;
   begin
        METHOD_NAME := To_Unbounded_String ("getChoiceGroup");
        ADDING_CHOICE := To_Unbounded_String ("Adding Choice: ");
        choiceGroup := ChoiceGroup_Package.Create (name, option, StringUtil_Package.getInstance.getArrayInstance, NullImage_Package.NULL_IMAGE_ARRAY);
        size := list.size;
        for index in 0 .. (size) - 1 loop
            anyType := list.objectArray (index);
            This.logUtil.putF (StringMaker_Package.Create.append (ADDING_CHOICE).append (anyType.toString).toString, LoadGameForm_Access'(This'Unchecked_Access), METHOD_NAME);
            choiceGroup.append (anyType.toString, NullImage_Package.NULL_IMAGE);
        end loop;
        return choiceGroup;
   end getChoiceGroup;

   function getSelectedId (This : in out LoadGameForm) return Integer is
      choiceGroup : ChoiceGroup_Access;
   begin
        if This.areChoices then
            choiceGroup := ChoiceGroup_Access (LoadGameForm'Class (This).get (0));
            return choiceGroup.getSelectedIndex;
        else
            return -(1);
        end if;
   end getSelectedId;

   function getSelectedText (This : in out LoadGameForm) return Integer is
      choiceGroup : ChoiceGroup_Access;
      value : Integer;
   begin
        if This.areChoices then
            choiceGroup := ChoiceGroup_Access (LoadGameForm'Class (This).get (0));
            value := To_Unbounded_String (Java_Image (choiceGroup.getString (choiceGroup.getSelectedIndex))).intValue;
            return value;
        else
            return -(1);
        end if;
   end getSelectedText;

   procedure getChoiceGroup (This : in out LoadGameForm; list_Param : access BasicArrayList_Package.BasicArrayList'Class; name : Unbounded_String; option : Integer) is
      Java_Result : constant ChoiceGroup_Access := LoadGameForm'Class (This).getChoiceGroup (list_Param, name, option);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getChoiceGroup;

end org.allbinary.game.configuration.LoadGameForm_Package;


