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


with java.util.Enumeration_Package; use java.util.Enumeration_Package;
with javax.microedition.lcdui.ChoiceGroup_Package; use javax.microedition.lcdui.ChoiceGroup_Package;
with javax.microedition.lcdui.ChoiceGroup_Package_References;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.util.EnumerationUtil_Package; use org.allbinary.util.EnumerationUtil_Package;
with org.allbinary.util.EnumerationUtil_Package_References;
with org.allbinary.util.HashtableUtil_Package; use org.allbinary.util.HashtableUtil_Package;
with org.allbinary.game.configuration.feature.Features_Package; use org.allbinary.game.configuration.feature.Features_Package;
with org.allbinary.game.configuration.feature.Feature_Package; use org.allbinary.game.configuration.feature.Feature_Package;
with org.allbinary.game.configuration.feature.Feature_Package_References;
with org.allbinary.game.configuration.feature.GameFeatureChoiceGroups_Package; use org.allbinary.game.configuration.feature.GameFeatureChoiceGroups_Package;
with javax.microedition.lcdui.Alert_Package;
with javax.microedition.lcdui.AlertType_Package;
with org.microemu.device.ui.AlertUI_Package;
with org.allbinary.util.ArrayUtil_Package;
with javax.microedition.lcdui.BaseDisplay_Package;
with javax.microedition.lcdui.Canvas_Package;
with org.microemu.device.ui.CanvasUI_Package;
with javax.microedition.lcdui.ChoiceItem_Package;
with javax.microedition.lcdui.Command_Package;
with javax.microedition.lcdui.CommandListener_Package;
with org.microemu.device.ui.CommandUI_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.microemu.device.Device_Package;
with org.microemu.device.DeviceDisplay_Package;
with javax.microedition.lcdui.Display_Package;
with javax.microedition.lcdui.DisplayAccessor_Package;
with javax.microedition.lcdui.Displayable_Package;
with org.microemu.device.ui.DisplayableUI_Package;
with javax.microedition.lcdui.Event_Package;
with org.microemu.device.ui.EventDispatcher_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.game.configuration.feature.Feature_Package;
with org.allbinary.game.configuration.feature.Features_Package;
with javax.microedition.lcdui.Font_Package;
with org.microemu.device.FontManager_Package;
with javax.microedition.lcdui.Form_Package;
with org.microemu.device.ui.FormUI_Package;
with org.allbinary.game.configuration.feature.GameFeatureChoiceGroups_Package;
with javax.microedition.lcdui.Gauge_Package;
with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.ImageStringItem_Package;
with org.microemu.device.InputMethod_Package;
with org.microemu.device.InputMethodEvent_Package;
with org.microemu.device.InputMethodListener_Package;
with javax.microedition.lcdui.Item_Package;
with javax.microedition.lcdui.ItemCommandListener_Package;
with javax.microedition.lcdui.ItemStateListener_Package;
with javax.microedition.lcdui.List_Package;
with org.microemu.device.ui.ListUI_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with javax.microedition.midlet.MIDlet_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.microemu.device.MutableImage_Package;
with org.allbinary.logic.NullUtil_Package;
with org.microemu.device.ui.PaintEvent_Package;
with org.microemu.device.ui.PointerEvent_Package;
with javax.microedition.lcdui.Screen_Package;
with javax.microedition.lcdui.StringComponent_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.thread.SynchObject_Package;
with javax.microedition.lcdui.TextBox_Package;
with org.microemu.device.ui.TextBoxUI_Package;
with javax.microedition.lcdui.TextField_Package;
with javax.microedition.lcdui.Ticker_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.microemu.device.ui.UIFactory_Package;

package body org.allbinary.game.configuration.feature.GameFeatureUtil_Package is

   package Enumeration_Package renames Standard.java.util.Enumeration_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
   package HashtableUtil_Package renames Standard.org.allbinary.util.HashtableUtil_Package;
   subtype ChoiceGroup_Access is javax.microedition.lcdui.ChoiceGroup_Package_References.ChoiceGroup_Access;
   function "=" (Left, Right : ChoiceGroup_Access) return Boolean renames javax.microedition.lcdui.ChoiceGroup_Package_References."=";
   subtype ChoiceGroup_Access_Array is javax.microedition.lcdui.ChoiceGroup_Package_References.ChoiceGroup_Access_Array;
   function "=" (Left, Right : ChoiceGroup_Access_Array) return Boolean renames javax.microedition.lcdui.ChoiceGroup_Package_References."=";
   subtype ChoiceGroup_Access_Array_Access is javax.microedition.lcdui.ChoiceGroup_Package_References.ChoiceGroup_Access_Array_Access;
   function "=" (Left, Right : ChoiceGroup_Access_Array_Access) return Boolean renames javax.microedition.lcdui.ChoiceGroup_Package_References."=";
   subtype ChoiceGroup_Access_Array_Access_Array is javax.microedition.lcdui.ChoiceGroup_Package_References.ChoiceGroup_Access_Array_Access_Array;
   function "=" (Left, Right : ChoiceGroup_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.ChoiceGroup_Package_References."=";
   subtype ChoiceGroup_Access_Array_Access_Array_Access is javax.microedition.lcdui.ChoiceGroup_Package_References.ChoiceGroup_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ChoiceGroup_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.ChoiceGroup_Package_References."=";
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   function "=" (Left, Right : BasicArrayList_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype EnumerationUtil_Access is org.allbinary.util.EnumerationUtil_Package_References.EnumerationUtil_Access;
   function "=" (Left, Right : EnumerationUtil_Access) return Boolean renames org.allbinary.util.EnumerationUtil_Package_References."=";
   subtype EnumerationUtil_Access_Array is org.allbinary.util.EnumerationUtil_Package_References.EnumerationUtil_Access_Array;
   function "=" (Left, Right : EnumerationUtil_Access_Array) return Boolean renames org.allbinary.util.EnumerationUtil_Package_References."=";
   subtype EnumerationUtil_Access_Array_Access is org.allbinary.util.EnumerationUtil_Package_References.EnumerationUtil_Access_Array_Access;
   function "=" (Left, Right : EnumerationUtil_Access_Array_Access) return Boolean renames org.allbinary.util.EnumerationUtil_Package_References."=";
   subtype EnumerationUtil_Access_Array_Access_Array is org.allbinary.util.EnumerationUtil_Package_References.EnumerationUtil_Access_Array_Access_Array;
   function "=" (Left, Right : EnumerationUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.util.EnumerationUtil_Package_References."=";
   subtype EnumerationUtil_Access_Array_Access_Array_Access is org.allbinary.util.EnumerationUtil_Package_References.EnumerationUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : EnumerationUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.EnumerationUtil_Package_References."=";
   subtype Feature_Access is org.allbinary.game.configuration.feature.Feature_Package_References.Feature_Access;
   function "=" (Left, Right : Feature_Access) return Boolean renames org.allbinary.game.configuration.feature.Feature_Package_References."=";
   subtype Feature_Access_Array is org.allbinary.game.configuration.feature.Feature_Package_References.Feature_Access_Array;
   function "=" (Left, Right : Feature_Access_Array) return Boolean renames org.allbinary.game.configuration.feature.Feature_Package_References."=";
   subtype Feature_Access_Array_Access is org.allbinary.game.configuration.feature.Feature_Package_References.Feature_Access_Array_Access;
   function "=" (Left, Right : Feature_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.feature.Feature_Package_References."=";
   subtype Feature_Access_Array_Access_Array is org.allbinary.game.configuration.feature.Feature_Package_References.Feature_Access_Array_Access_Array;
   function "=" (Left, Right : Feature_Access_Array_Access_Array) return Boolean renames org.allbinary.game.configuration.feature.Feature_Package_References."=";
   subtype Feature_Access_Array_Access_Array_Access is org.allbinary.game.configuration.feature.Feature_Package_References.Feature_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Feature_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.feature.Feature_Package_References."=";
   procedure Initialize_Fields (This : in out GameFeatureUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
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
   procedure setDefault (This : in out GameFeatureUtil; choiceGroup_Param : access ChoiceGroup_Package.ChoiceGroup'Class) is
      choiceGroup : constant ChoiceGroup_Access := ChoiceGroup_Access (choiceGroup_Param);
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
   procedure updateMultiple (This : in out GameFeatureUtil; choiceGroup_Param : access ChoiceGroup_Package.ChoiceGroup'Class) is
      choiceGroup : constant ChoiceGroup_Access := ChoiceGroup_Access (choiceGroup_Param);
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
   procedure updateExclusiveForChoiceGroup (This : in out GameFeatureUtil; choiceGroup_Param : access ChoiceGroup_Package.ChoiceGroup'Class) is
      choiceGroup : constant ChoiceGroup_Access := ChoiceGroup_Access (choiceGroup_Param);
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
                GameFeatureUtil'Class (This).updateExclusive (selectedChoiceLabel);
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
            name := Java_Unbox (This.enumerationUtil.nextElement (enumeration));
            if (Java_Compare_To (itemLabel, name)) = (0) then
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
            GameFeatureUtil'Class (This).updateExclusiveList (gameFeature, basicArrayList);
        end loop;
   end updateExclusive;

   --  throws Exception
   procedure updateExclusiveList (This : in out GameFeatureUtil; gameFeature_Param : access Feature_Package.Feature'Class; list_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      gameFeature : constant Feature_Access := Feature_Access (gameFeature_Param);
      list : constant BasicArrayList_Access := BasicArrayList_Access (list_Param);
      features : Features_Access;
      addIndex : Integer;
      size : Integer;
      index : Integer;
   begin
        if list.contains (Java_Object_Access (gameFeature)) then
            features := Features_Package.getInstance;
            addIndex := list.indexOf (Java_Object_Access (gameFeature));
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
      Java_Result : constant Boolean := GameFeatureUtil'Class (This).isExclusive (itemLabel => itemLabel);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isExclusive;

begin
   null;
   instance := GameFeatureUtil_Package.Create;

end org.allbinary.game.configuration.feature.GameFeatureUtil_Package;


