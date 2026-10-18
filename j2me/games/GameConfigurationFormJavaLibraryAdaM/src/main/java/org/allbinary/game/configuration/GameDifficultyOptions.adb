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
with javax.microedition.lcdui.NullImage_Package; use javax.microedition.lcdui.NullImage_Package;
with org.allbinary.game.commands.GameCommandsFactory_Package; use org.allbinary.game.commands.GameCommandsFactory_Package;
with org.allbinary.game.configuration.persistance.GameDifficultyFactory_Package; use org.allbinary.game.configuration.persistance.GameDifficultyFactory_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;

package body org.allbinary.game.configuration.GameDifficultyOptions_Package is

   package Choice_Package renames Standard.javax.microedition.lcdui.Choice_Package;
   package NullImage_Package renames Standard.javax.microedition.lcdui.NullImage_Package;
   package GameCommandsFactory_Package renames Standard.org.allbinary.game.commands.GameCommandsFactory_Package;
   package GameDifficultyFactory_Package renames Standard.org.allbinary.game.configuration.persistance.GameDifficultyFactory_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   procedure Initialize_Fields (This : in out GameDifficultyOptions'Class) is
   begin
      null;
      This.meUtil := MEUtil_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out GameDifficultyOptions'Class; commandListener_Param : access CommandListener_Package.CommandListener'Class; title : Unbounded_String; list_Param : access BasicArrayList_Package.BasicArrayList'Class; backgrounBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) is
      commandListener : constant CommandListener_Access := CommandListener_Access (commandListener_Param);
      list : constant BasicArrayList_Access := BasicArrayList_Access (list_Param);
      backgrounBasicColor : constant BasicColor_Access := BasicColor_Access (backgrounBasicColor_Param);
      foregroundBasicColor : constant BasicColor_Access := BasicColor_Access (foregroundBasicColor_Param);
      gameDifficultyFactory : GameDifficultyFactory_Access;
   begin
        CommandForm_Package.Initialize (This, commandListener, title, backgrounBasicColor, foregroundBasicColor);
        Initialize_Fields (This);
        This.logUtil.putF (This.commonStrings.START, GameDifficultyOptions_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
        This.list := list;
        GameDifficultyOptions'Class (This).update;
        GameDifficultyOptions'Class (This).initCommands (commandListener);
        gameDifficultyFactory := GameDifficultyFactory_Package.getInstance;
        GameDifficultyOptions'Class (This).setSelectedId (gameDifficultyFactory.getLevel);
   end Initialize;

   function Create (commandListener_Param : access CommandListener_Package.CommandListener'Class; title : Unbounded_String; list_Param : access BasicArrayList_Package.BasicArrayList'Class; backgrounBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) return GameDifficultyOptions_Access is
      This : constant GameDifficultyOptions_Access := new GameDifficultyOptions;
   begin
      GameDifficultyOptions_Package.Initialize (This.all, commandListener_Param, title, list_Param, backgrounBasicColor_Param, foregroundBasicColor_Param);
      return This;
   end Create;

   procedure open (This : in out GameDifficultyOptions) is
   begin
        CommandForm (This).open;
   end open;

   --  throws Exception
   procedure close (This : in out GameDifficultyOptions) is
   begin
        CommandForm (This).close;
        GameDifficultyOptions'Class (This).save;
   end close;

   --  throws Exception
   procedure save (This : in out GameDifficultyOptions) is
      gameDifficultyFactory : GameDifficultyFactory_Access;
   begin
        gameDifficultyFactory := GameDifficultyFactory_Package.getInstance;
        gameDifficultyFactory.setLevel (GameDifficultyOptions'Class (This).getSelectedId);
   end save;

   procedure initCommands (This : in out GameDifficultyOptions; cmdListener_Param : access CommandListener_Package.CommandListener'Class) is
      cmdListener : constant CommandListener_Access := CommandListener_Access (cmdListener_Param);
      gameCommandsFactory : GameCommandsFactory_Access;
   begin
        gameCommandsFactory := GameCommandsFactory_Package.getInstance;
        GameDifficultyOptions'Class (This).removeAllCommands;
        GameDifficultyOptions'Class (This).addCommand (gameCommandsFactory.CLOSE_AND_SHOW_GAME_CANVAS);
        GameDifficultyOptions'Class (This).setCommandListener (cmdListener);
   end initCommands;

   --  throws Exception
   procedure update (This : in out GameDifficultyOptions) is
   begin
        GameDifficultyOptions'Class (This).deleteAll;
        GameDifficultyOptions'Class (This).add (This.list, To_Unbounded_String ("Difficulty"), Choice_Package.EXCLUSIVE);
        CommandForm (This).update;
   end update;

   procedure add (This : in out GameDifficultyOptions; list_Param : access BasicArrayList_Package.BasicArrayList'Class; name : Unbounded_String; option : Integer) is
      list : constant BasicArrayList_Access := BasicArrayList_Access (list_Param);
      choiceGroup : ChoiceGroup_Access;
   begin
        choiceGroup := GameDifficultyOptions'Class (This).getChoiceGroup (list, name, option);
        if (list.size) > (0) then
            choiceGroup.setSelectedIndex (0, True);
        end if;
        This.meUtil.appendItem (GameDifficultyOptions_Access'(This'Unchecked_Access), choiceGroup);
   end add;

   function getChoiceGroup (This : in out GameDifficultyOptions; list_Param : access BasicArrayList_Package.BasicArrayList'Class; name : Unbounded_String; option : Integer) return ChoiceGroup_Access is
      list : constant BasicArrayList_Access := BasicArrayList_Access (list_Param);
      METHOD_NAME : Unbounded_String;
      NAME : Unbounded_String;
      choiceGroup : ChoiceGroup_Access;
      size : Integer;
      anyType : Java_Object_Access;
      index : Integer;
   begin
        METHOD_NAME := To_Unbounded_String ("addChoiceGroup");
        NAME := To_Unbounded_String ("Adding Choice: ");
        choiceGroup := ChoiceGroup_Package.Create (name, option, StringUtil_Package.getInstance.getArrayInstance, NullImage_Package.NULL_IMAGE_ARRAY);
        size := list.size;
        anyType := null;
        for index in 0 .. (size) - 1 loop
            anyType := list.objectArray (index);
            This.logUtil.putF (StringMaker_Package.Create.append (NAME).append (anyType.toString).toString, GameDifficultyOptions_Access'(This'Unchecked_Access), METHOD_NAME);
            choiceGroup.append (anyType.toString, NullImage_Package.NULL_IMAGE);
        end loop;
        return choiceGroup;
   end getChoiceGroup;

   procedure setSelectedId (This : in out GameDifficultyOptions; id : Integer) is
      choiceGroup : ChoiceGroup_Access;
   begin
        choiceGroup := ChoiceGroup_Access (GameDifficultyOptions'Class (This).get (0));
        choiceGroup.setSelectedIndex (id, True);
   end setSelectedId;

   function getSelectedId (This : in out GameDifficultyOptions) return Integer is
      choiceGroup : ChoiceGroup_Access;
   begin
        choiceGroup := ChoiceGroup_Access (GameDifficultyOptions'Class (This).get (0));
        return choiceGroup.getSelectedIndex;
   end getSelectedId;

   function getSelectedText (This : in out GameDifficultyOptions) return Integer is
      choiceGroup : ChoiceGroup_Access;
      value : Integer;
   begin
        choiceGroup := ChoiceGroup_Access (GameDifficultyOptions'Class (This).get (0));
        value := To_Unbounded_String (Java_Image (choiceGroup.getString (choiceGroup.getSelectedIndex))).intValue;
        return value;
   end getSelectedText;

   procedure getChoiceGroup (This : in out GameDifficultyOptions; list_Param : access BasicArrayList_Package.BasicArrayList'Class; name : Unbounded_String; option : Integer) is
      Java_Result : constant ChoiceGroup_Access := GameDifficultyOptions'Class (This).getChoiceGroup (list_Param => list_Param, name => name, option => option);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getChoiceGroup;

end org.allbinary.game.configuration.GameDifficultyOptions_Package;


