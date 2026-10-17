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


package body org.allbinary.game.configuration.GameDifficultyOptions_Package is

   procedure Initialize_Fields (This : in out GameDifficultyOptions'Class) is
   begin
      null;
      This.meUtil := MEUtil_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out GameDifficultyOptions'Class; commandListener : CommandListener_Access; title : Unbounded_String; list : BasicArrayList_Access; backgrounBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access) is
      gameDifficultyFactory : GameDifficultyFactory_Access;
   begin
        CommandForm_Package.Initialize (This, commandListener, title, backgrounBasicColor, foregroundBasicColor);
        Initialize_Fields (This);
        This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, This.commonStrings.CONSTRUCTOR);
        This.list := list;
        This.update;
        This.initCommands (commandListener);
        gameDifficultyFactory := GameDifficultyFactory_Package.getInstance;
        This.setSelectedId (gameDifficultyFactory.getLevel);
   end Initialize;

   function Create (commandListener : CommandListener_Access; title : Unbounded_String; list : BasicArrayList_Access; backgrounBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access) return GameDifficultyOptions_Access is
      This : constant GameDifficultyOptions_Access := new GameDifficultyOptions;
   begin
      Initialize (This.all, commandListener, title, list, backgrounBasicColor, foregroundBasicColor);
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
        This.save;
   end close;

   --  throws Exception
   procedure save (This : in out GameDifficultyOptions) is
      gameDifficultyFactory : GameDifficultyFactory_Access;
   begin
        gameDifficultyFactory := GameDifficultyFactory_Package.getInstance;
        gameDifficultyFactory.setLevel (This.getSelectedId);
   end save;

   procedure initCommands (This : in out GameDifficultyOptions; cmdListener : CommandListener_Access) is
      gameCommandsFactory : GameCommandsFactory_Access;
   begin
        gameCommandsFactory := GameCommandsFactory_Package.getInstance;
        This.removeAllCommands;
        This.addCommand (gameCommandsFactory.CLOSE_AND_SHOW_GAME_CANVAS);
        This.setCommandListener (cmdListener);
   end initCommands;

   --  throws Exception
   procedure update (This : in out GameDifficultyOptions) is
   begin
        This.deleteAll;
        This.add (This.list, To_Unbounded_String ("Difficulty"), Choice_Package.EXCLUSIVE);
        CommandForm (This).update;
   end update;

   procedure add (This : in out GameDifficultyOptions; list : BasicArrayList_Access; name : Unbounded_String; option : Integer) is
      choiceGroup : ChoiceGroup_Access;
   begin
        choiceGroup := This.getChoiceGroup (list, name, option);
        if (list.size) > (0) then
            choiceGroup.setSelectedIndex (0, True);
        end if;
        This.meUtil.appendItem (This'Unchecked_Access, choiceGroup);
   end add;

   function getChoiceGroup (This : in out GameDifficultyOptions; list : BasicArrayList_Access; name : Unbounded_String; option : Integer) return ChoiceGroup_Access is
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
            This.logUtil.putF (StringMaker_Package.Create.append (NAME).append (anyType.toString).toString, This'Unchecked_Access, METHOD_NAME);
            choiceGroup.append (anyType.toString, NullImage_Package.NULL_IMAGE);
        end loop;
        return choiceGroup;
   end getChoiceGroup;

   procedure setSelectedId (This : in out GameDifficultyOptions; id : Integer) is
      choiceGroup : ChoiceGroup_Access;
   begin
        choiceGroup := ChoiceGroup_Access (This.get (0));
        choiceGroup.setSelectedIndex (id, True);
   end setSelectedId;

   function getSelectedId (This : in out GameDifficultyOptions) return Integer is
      choiceGroup : ChoiceGroup_Access;
   begin
        choiceGroup := ChoiceGroup_Access (This.get (0));
        return choiceGroup.getSelectedIndex;
   end getSelectedId;

   function getSelectedText (This : in out GameDifficultyOptions) return Integer is
      choiceGroup : ChoiceGroup_Access;
      value : Integer;
   begin
        choiceGroup := ChoiceGroup_Access (This.get (0));
        value := To_Unbounded_String (Java_Image (choiceGroup.getString (choiceGroup.getSelectedIndex))).intValue;
        return value;
   end getSelectedText;

   procedure getChoiceGroup (This : in out GameDifficultyOptions; list : BasicArrayList_Access; name : Unbounded_String; option : Integer) is
      Java_Result : constant ChoiceGroup_Access := GameDifficultyOptions'Class (This).getChoiceGroup (list, name, option);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getChoiceGroup;

   procedure getSelectedId (This : in out GameDifficultyOptions) is
      Java_Result : constant Integer := GameDifficultyOptions'Class (This).getSelectedId;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getSelectedId;

   procedure getSelectedText (This : in out GameDifficultyOptions) is
      Java_Result : constant Integer := GameDifficultyOptions'Class (This).getSelectedText;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getSelectedText;

end org.allbinary.game.configuration.GameDifficultyOptions_Package;


