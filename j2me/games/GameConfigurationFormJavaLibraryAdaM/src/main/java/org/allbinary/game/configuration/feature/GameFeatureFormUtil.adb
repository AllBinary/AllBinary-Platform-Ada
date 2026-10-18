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


with javax.microedition.lcdui.Item_Package; use javax.microedition.lcdui.Item_Package;
with javax.microedition.lcdui.NullImage_Package; use javax.microedition.lcdui.NullImage_Package;
with org.allbinary.game.configuration.GameConfigurationGauge_Package; use org.allbinary.game.configuration.GameConfigurationGauge_Package;
with org.allbinary.game.configuration.GameConfigurationUtil_Package; use org.allbinary.game.configuration.GameConfigurationUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.HashtableUtil_Package; use org.allbinary.util.HashtableUtil_Package;
with org.allbinary.game.configuration.feature.Features_Package; use org.allbinary.game.configuration.feature.Features_Package;
with org.allbinary.game.configuration.feature.Feature_Package; use org.allbinary.game.configuration.feature.Feature_Package;
with org.allbinary.game.configuration.feature.GameFeatureUtil_Package; use org.allbinary.game.configuration.feature.GameFeatureUtil_Package;

package body org.allbinary.game.configuration.feature.GameFeatureFormUtil_Package is

   package Item_Package renames Standard.javax.microedition.lcdui.Item_Package;
   package NullImage_Package renames Standard.javax.microedition.lcdui.NullImage_Package;
   package GameConfigurationGauge_Package renames Standard.org.allbinary.game.configuration.GameConfigurationGauge_Package;
   package GameConfigurationUtil_Package renames Standard.org.allbinary.game.configuration.GameConfigurationUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package HashtableUtil_Package renames Standard.org.allbinary.util.HashtableUtil_Package;
   procedure Initialize_Fields (This : in out GameFeatureFormUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.meUtil := MEUtil_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out GameFeatureFormUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return GameFeatureFormUtil_Access is
      This : constant GameFeatureFormUtil_Access := new GameFeatureFormUtil;
   begin
      GameFeatureFormUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return GameFeatureFormUtil_Access is
   begin
        return GameFeatureFormUtil_Package.instance;
   end getInstance;

   function getChoiceGroup (This : in out GameFeatureFormUtil; hashtable_Param : access ABHashtable_Package.ABHashtable'Class; name : Unbounded_String; option : Integer) return ChoiceGroup_Access is
      hashtable : constant ABHashtable_Access := ABHashtable_Access (hashtable_Param);
      stringMaker : StringMaker_Access;
      choiceGroup : ChoiceGroup_Access;
      list : BasicArrayList_Access;
      features : Features_Access;
      ADD_CHOICE : Unbounded_String;
      GET_CHOICE_GROUP : Unbounded_String;
      size : Integer;
      gameFeature : Feature_Access;
      index : Integer;
   begin
        stringMaker := StringMaker_Package.Create;
        choiceGroup := ChoiceGroup_Package.Create (name, option, StringUtil_Package.getInstance.getArrayInstance, NullImage_Package.NULL_IMAGE_ARRAY);
        list := BasicArrayList_Access (hashtable.get (Java_Box (name)));
        features := Features_Package.getInstance;
        ADD_CHOICE := To_Unbounded_String (": Adding Choice: ");
        GET_CHOICE_GROUP := To_Unbounded_String ("getChoiceGroup");
        size := list.size;
        for index in 0 .. (size) - 1 loop
            gameFeature := Feature_Access (list.objectArray (index));
            stringMaker.delete (0, stringMaker.length);
            This.logUtil.putF (stringMaker.append (name).append (ADD_CHOICE).append (gameFeature.toString).toString, GameFeatureFormUtil_Access'(This'Unchecked_Access), GET_CHOICE_GROUP);
            choiceGroup.append (gameFeature.toString, NullImage_Package.NULL_IMAGE);
            if features.isFeature (gameFeature) then
                choiceGroup.setSelectedIndex (index, True);
            end if;
        end loop;
        return choiceGroup;
   end getChoiceGroup;

   procedure addChoiceGroup (This : in out GameFeatureFormUtil; form_Param : access CommandForm_Package.CommandForm'Class; hashtable_Param : access ABHashtable_Package.ABHashtable'Class; option : Integer) is
      form : constant CommandForm_Access := CommandForm_Access (form_Param);
      hashtable : constant ABHashtable_Access := ABHashtable_Access (hashtable_Param);
      stringMaker : StringMaker_Access;
      ADDING_CHOICE_GROUP : Unbounded_String;
      ADD_CHOICE_GROUP : Unbounded_String;
      size : Integer;
      objectArray : Java_Object_Access_Array_Access;
      name : Unbounded_String;
      index : Integer;
   begin
        stringMaker := StringMaker_Package.Create;
        ADDING_CHOICE_GROUP := To_Unbounded_String ("Adding Choice Group: ");
        ADD_CHOICE_GROUP := To_Unbounded_String ("addChoiceGroup");
        size := hashtable.size;
        objectArray := HashtableUtil_Package.getInstance.getKeysAsArray (hashtable);
        name := Null_Unbounded_String;
        for index in 0 .. (size) - 1 loop
            name := Java_Unbox (objectArray (index));
            stringMaker.delete (0, stringMaker.length);
            This.logUtil.putF (stringMaker.append (ADDING_CHOICE_GROUP).append (name).toString, GameFeatureFormUtil_Access'(This'Unchecked_Access), ADD_CHOICE_GROUP);
            This.meUtil.appendItem (form, GameFeatureFormUtil'Class (This).getChoiceGroup (hashtable, name, option));
        end loop;
   end addChoiceGroup;

   --  throws Exception
   procedure setDefault (This : in out GameFeatureFormUtil; form_Param : access CommandForm_Package.CommandForm'Class) is
      form : constant CommandForm_Access := CommandForm_Access (form_Param);
      size : Integer;
      item : Item_Access;
      index : Integer;
   begin
        size := form.size;
        for index in 0 .. (size) - 1 loop
            item := form.get (index);
            if (item.all in GameConfigurationGauge_Package.GameConfigurationGauge'Class) then
                GameConfigurationUtil_Package.getInstance.setDefault (GameConfigurationGauge_Access (item));
            elsif (item.all in ChoiceGroup_Package.ChoiceGroup'Class) then
                GameFeatureUtil_Package.getInstance.setDefault (ChoiceGroup_Access (item));
            end if;
        end loop;
   end setDefault;

   procedure getChoiceGroup (This : in out GameFeatureFormUtil; hashtable_Param : access ABHashtable_Package.ABHashtable'Class; name : Unbounded_String; option : Integer) is
      Java_Result : constant ChoiceGroup_Access := GameFeatureFormUtil'Class (This).getChoiceGroup (hashtable_Param, name, option);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getChoiceGroup;

begin
   null;
   instance := GameFeatureFormUtil_Package.Create;

end org.allbinary.game.configuration.feature.GameFeatureFormUtil_Package;


