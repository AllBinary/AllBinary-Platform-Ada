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


package body org.allbinary.game.configuration.feature.GameFeatureUtil_Package is

   procedure Initialize_Fields (This : in out GameFeatureUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.tsUtil := TsUtil_Package.getInstance;
      This.enumerationUtil := EnumerationUtil_Package.getInstance;
      This.ON_GAME_FEATURE_CHANGE := To_Unbounded_String ("onGameFeatureChange");
      This.GAME_FEATURE_CHANGED := To_Unbounded_String ("Game Feature Changed: ");
   end Initialize_Fields;

   procedure Initialize (This : in out GameFeatureUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return GameFeatureUtil_Access is
      This : constant GameFeatureUtil_Access := new GameFeatureUtil;
   begin
      GameFeatureUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return GameFeatureUtil_Access is
   begin
        return GameFeatureUtil_Package.instance;
   end getInstance;

   --  throws Exception
   procedure setDefault (This : in out GameFeatureUtil; choiceGroup_Param : access ChoiceGroup'Class) is
      choiceGroup : ChoiceGroup_Access := ChoiceGroup_Access (choiceGroup_Param);
      stringBuffer : StringMaker_Access;
      METHOD_NAME : Unbounded_String;
      SELECTED_ARRAY_RETURN : Unbounded_String;
      SELECTED_SEP : Unbounded_String;
      selectedArray_return : Boolean_Array_Access;
      total : Integer;
      features : Features_Access;
      isSelected : Boolean;
      selectedChoiceLabel : Unbounded_String;
      gameFeature : Feature_Access;
      index : Integer;
   begin
        stringBuffer := StringMaker_Package.Create;
        METHOD_NAME := To_Unbounded_String ("setDefault");
        SELECTED_ARRAY_RETURN := To_Unbounded_String ("selectedArray_return[");
        SELECTED_SEP := To_Unbounded_String ("] = ");
        selectedArray_return := new Boolean_Array'(0 .. (choiceGroup.size) - 1 => False);
        total := choiceGroup.getSelectedFlags (selectedArray_return);
        stringBuffer.append (To_Unbounded_String ("Multiple Total Choices: "));
        stringBuffer.appendint (total);
        This.logUtil.putF (stringBuffer.toString, GameFeatureUtil_Access'(This'Unchecked_Access), METHOD_NAME);
        features := Features_Package.getInstance;
        for index in 0 .. (selectedArray_return'Length) - 1 loop
            isSelected := selectedArray_return (index);
            stringBuffer.delete (0, stringBuffer.length);
            stringBuffer.append (SELECTED_ARRAY_RETURN);
            stringBuffer.appendint (index);
            stringBuffer.append (SELECTED_SEP);
            stringBuffer.appendboolean (isSelected);
            This.logUtil.putF (stringBuffer.toString, GameFeatureUtil_Access'(This'Unchecked_Access), METHOD_NAME);
            selectedChoiceLabel := choiceGroup.getString (index);
            gameFeature := Feature_Package.getInstance (selectedChoiceLabel);
            if features.isDefault (gameFeature) then
                features.add (gameFeature);
                choiceGroup.setSelectedIndex (index, True);
            else
                features.remove (gameFeature);
                choiceGroup.setSelectedIndex (index, False);
            end if;
        end loop;
   end setDefault;

   --  throws Exception
   procedure updateMultiple (This : in out GameFeatureUtil; choiceGroup_Param : access ChoiceGroup'Class) is
      choiceGroup : ChoiceGroup_Access := ChoiceGroup_Access (choiceGroup_Param);
      stringBuffer : StringMaker_Access;
      METHOD_NAME : Unbounded_String;
      SELECTED_ARRAY_RETURN : Unbounded_String;
      SELECTED_SEP : Unbounded_String;
      selectedArray_return : Boolean_Array_Access;
      total : Integer;
      features : Features_Access;
      isSelected : Boolean;
      selectedChoiceLabel : Unbounded_String;
      gameFeature : Feature_Access;
      index : Integer;
   begin
        stringBuffer := StringMaker_Package.Create;
        METHOD_NAME := To_Unbounded_String ("updateMultiple");
        SELECTED_ARRAY_RETURN := To_Unbounded_String ("selectedArray_return[");
        SELECTED_SEP := To_Unbounded_String ("] = ");
        selectedArray_return := new Boolean_Array'(0 .. (choiceGroup.size) - 1 => False);
        total := choiceGroup.getSelectedFlags (selectedArray_return);
        stringBuffer.append (To_Unbounded_String ("Multiple Total Choices: "));
        stringBuffer.appendint (total);
        This.logUtil.putF (stringBuffer.toString, GameFeatureUtil_Access'(This'Unchecked_Access), METHOD_NAME);
        features := Features_Package.getInstance;
        for index in 0 .. (selectedArray_return'Length) - 1 loop
            isSelected := selectedArray_return (index);
            stringBuffer.delete (0, stringBuffer.length);
            stringBuffer.append (SELECTED_ARRAY_RETURN);
            stringBuffer.appendint (index);
            stringBuffer.append (SELECTED_SEP);
            stringBuffer.appendboolean (isSelected);
            This.logUtil.putF (stringBuffer.toString, GameFeatureUtil_Access'(This'Unchecked_Access), METHOD_NAME);
            selectedChoiceLabel := choiceGroup.getString (index);
            gameFeature := Feature_Package.getInstance (selectedChoiceLabel);
            if (not (isSelected)) and then (features.isFeature (gameFeature)) then
                features.remove (gameFeature);
            elsif (isSelected) and then (not (features.isFeature (gameFeature))) then
                features.add (gameFeature);
            end if;
        end loop;
   end updateMultiple;

   --  throws Exception
   procedure updateExclusiveForChoiceGroup (This : in out GameFeatureUtil; choiceGroup_Param : access ChoiceGroup'Class) is
      choiceGroup : ChoiceGroup_Access := ChoiceGroup_Access (choiceGroup_Param);
      stringBuffer : StringMaker_Access;
      METHOD_NAME : Unbounded_String;
      SELECTED_ARRAY_RETURN : Unbounded_String;
      SELECTED_SEP : Unbounded_String;
      selectedArray_return : Boolean_Array_Access;
      total : Integer;
      isSelected : Boolean;
      selectedChoiceLabel : Unbounded_String;
      index : Integer;
   begin
        stringBuffer := StringMaker_Package.Create;
        METHOD_NAME := To_Unbounded_String ("updateExclusive");
        SELECTED_ARRAY_RETURN := To_Unbounded_String ("selectedArray_return[");
        SELECTED_SEP := To_Unbounded_String ("] = ");
        selectedArray_return := new Boolean_Array'(0 .. (choiceGroup.size) - 1 => False);
        total := choiceGroup.getSelectedFlags (selectedArray_return);
        stringBuffer.append (To_Unbounded_String ("Exclusive Total Choices: 1=="));
        stringBuffer.appendint (total);
        This.logUtil.putF (stringBuffer.toString, GameFeatureUtil_Access'(This'Unchecked_Access), METHOD_NAME);
        for index in 0 .. (selectedArray_return'Length) - 1 loop
            isSelected := selectedArray_return (index);
            stringBuffer.delete (0, stringBuffer.length);
            stringBuffer.append (SELECTED_ARRAY_RETURN);
            stringBuffer.appendint (index);
            stringBuffer.append (SELECTED_SEP);
            stringBuffer.appendboolean (isSelected);
            This.logUtil.putF (stringBuffer.toString, GameFeatureUtil_Access'(This'Unchecked_Access), METHOD_NAME);
            if isSelected then
                selectedChoiceLabel := choiceGroup.getString (index);
                This.updateExclusive (selectedChoiceLabel);
            end if;
        end loop;
   end updateExclusiveForChoiceGroup;

   function isExclusive (This : in out GameFeatureUtil; itemLabel : Unbounded_String) return Boolean is
      enumeration : Enumeration_Access;
      name : Unbounded_String;
   begin
        enumeration := GameFeatureChoiceGroups_Package.getExclusiveInstance.get.keys;
        name := Null_Unbounded_String;
        while This.enumerationUtil.hasMoreElements (enumeration) loop
            name := Unbounded_String (This.enumerationUtil.nextElement (enumeration));
            if (This.tsUtil.compareTo (itemLabel, name)) = (0) then
                return True;
            end if;
        end loop;
        return False;
   end isExclusive;

   --  throws Exception
   procedure updateExclusive (This : in out GameFeatureUtil; selectedChoiceLabel : Unbounded_String) is
      gameFeature : Feature_Access;
      hashtable : ABHashtable_Access;
      objectArray : Java_Object_Access_Array_Access;
      basicArrayList : BasicArrayList_Access;
      anyType : Java_Object_Access;
      size : Integer;
      index : Integer;
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (CommonLabels_Package.getInstance.ITEM_LABEL).append (selectedChoiceLabel).toString, GameFeatureUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("updateExclusive"));
        gameFeature := Feature_Package.getInstance (selectedChoiceLabel);
        hashtable := GameFeatureChoiceGroups_Package.getExclusiveInstance.get;
        objectArray := HashtableUtil_Package.getInstance.getKeysAsArray (hashtable);
        basicArrayList := null;
        anyType := null;
        size := objectArray'Length;
        for index in 0 .. (size) - 1 loop
            anyType := Java_Object_Access (objectArray (index));
            basicArrayList := BasicArrayList_Access (hashtable.get (anyType));
            This.updateExclusiveList (gameFeature, basicArrayList);
        end loop;
   end updateExclusive;

   --  throws Exception
   procedure updateExclusiveList (This : in out GameFeatureUtil; gameFeature_Param : access Feature'Class; list_Param : access BasicArrayList'Class) is
      gameFeature : Feature_Access := Feature_Access (gameFeature_Param);
      list : BasicArrayList_Access := BasicArrayList_Access (list_Param);
      features : Features_Access;
      addIndex : Integer;
      size : Integer;
      index : Integer;
   begin
        if list.contains (gameFeature) then
            features := Features_Package.getInstance;
            addIndex := list.indexOf (gameFeature);
            size := list.size;
            for index in 0 .. (size) - 1 loop
                if (addIndex) /= (index) then
                    features.remove (Feature_Access (list.objectArray (index)));
                else
                    features.add (Feature_Access (list.objectArray (index)));
                end if;
            end loop;
        end if;
   end updateExclusiveList;

   procedure isExclusive (This : in out GameFeatureUtil; itemLabel : Unbounded_String) is
      Java_Result : constant Boolean := GameFeatureUtil'Class (This).isExclusive (itemLabel);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isExclusive;

begin
   null;
   instance := GameFeatureUtil_Package.Create;

end org.allbinary.game.configuration.feature.GameFeatureUtil_Package;


