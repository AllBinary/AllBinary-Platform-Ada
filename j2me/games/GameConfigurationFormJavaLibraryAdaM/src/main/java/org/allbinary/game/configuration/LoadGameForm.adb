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


package body org.allbinary.game.configuration.LoadGameForm_Package is

   procedure Initialize_Fields (This : in out LoadGameForm'Class) is
   begin
      null;
      This.meUtil := MEUtil_Package.getInstance;
      This.areChoices := False;
   end Initialize_Fields;


   procedure Initialize (This : in out LoadGameForm'Class; commandListener : CommandListener_Access; title : Unbounded_String; backgrounBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access) is
   begin
        CommandForm_Package.Initialize (This, commandListener, title, backgrounBasicColor, foregroundBasicColor);
        Initialize_Fields (This);
        This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, This.commonStrings.CONSTRUCTOR);
        This.update;
        This.initCommands (commandListener);
   end Initialize;

   function Create (commandListener : CommandListener_Access; title : Unbounded_String; backgrounBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access) return LoadGameForm_Access is
      This : constant LoadGameForm_Access := new LoadGameForm;
   begin
      Initialize (This.all, commandListener, title, backgrounBasicColor, foregroundBasicColor);
      return This;
   end Create;

   procedure initCommands (This : in out LoadGameForm; cmdListener : CommandListener_Access) is
      gameCommandsFactory : GameCommandsFactory_Access;
   begin
        gameCommandsFactory := GameCommandsFactory_Package.getInstance;
        This.removeAllCommands;
        This.addCommand (gameCommandsFactory.LOAD_FILE);
        This.addCommand (gameCommandsFactory.DELETE_FILE);
        This.addCommand (gameCommandsFactory.CLOSE_AND_SHOW_GAME_CANVAS);
        This.setCommandListener (cmdListener);
   end initCommands;

   --  throws Exception
   procedure update (This : in out LoadGameForm) is
      list : BasicArrayList_Access;
   begin
        list := GamePersistanceSingleton_Package.getInstance.getIds;
        This.deleteAll;
        if (list.size) > (0) then
            This.add (list, To_Unbounded_String ("Select A Saved Game"), Choice_Package.EXCLUSIVE);
            This.areChoices := True;
        else
            This.meUtil.appendItem (This'Unchecked_Access, StringItem_Package.Create (To_Unbounded_String ("No Saved Games"), StringUtil_Package.getInstance.EMPTY_STRING, Item_Package.PLAIN));
            This.areChoices := False;
        end if;
        CommandForm (This).update;
   end update;

   procedure add (This : in out LoadGameForm; list : BasicArrayList_Access; name : Unbounded_String; option : Integer) is
      choiceGroup : ChoiceGroup_Access;
   begin
        choiceGroup := This.getChoiceGroup (list, name, option);
        if (list.size) > (0) then
            choiceGroup.setSelectedIndex (0, True);
        end if;
        This.meUtil.appendItem (This'Unchecked_Access, choiceGroup);
   end add;

   function getChoiceGroup (This : in out LoadGameForm; list : BasicArrayList_Access; name : Unbounded_String; option : Integer) return ChoiceGroup_Access is
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
            This.logUtil.putF (StringMaker_Package.Create.append (ADDING_CHOICE).append (anyType.toString).toString, This'Unchecked_Access, METHOD_NAME);
            choiceGroup.append (anyType.toString, NullImage_Package.NULL_IMAGE);
        end loop;
        return choiceGroup;
   end getChoiceGroup;

   function getSelectedId (This : in out LoadGameForm) return Integer is
      choiceGroup : ChoiceGroup_Access;
   begin
        if This.areChoices then
            choiceGroup := ChoiceGroup_Access (This.get (0));
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
            choiceGroup := ChoiceGroup_Access (This.get (0));
            value := To_Unbounded_String (Java_Image (choiceGroup.getString (choiceGroup.getSelectedIndex))).intValue;
            return value;
        else
            return -(1);
        end if;
   end getSelectedText;

   procedure getChoiceGroup (This : in out LoadGameForm; list : BasicArrayList_Access; name : Unbounded_String; option : Integer) is
      Java_Result : constant ChoiceGroup_Access := LoadGameForm'Class (This).getChoiceGroup (list, name, option);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getChoiceGroup;

   procedure getSelectedId (This : in out LoadGameForm) is
      Java_Result : constant Integer := LoadGameForm'Class (This).getSelectedId;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getSelectedId;

   procedure getSelectedText (This : in out LoadGameForm) is
      Java_Result : constant Integer := LoadGameForm'Class (This).getSelectedText;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getSelectedText;

end org.allbinary.game.configuration.LoadGameForm_Package;


