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


with java.io.ByteArrayInputStream_Package; use java.io.ByteArrayInputStream_Package;
with java.io.ByteArrayOutputStream_Package; use java.io.ByteArrayOutputStream_Package;
with java.io.DataInputStream_Package; use java.io.DataInputStream_Package;
with java.io.DataOutputStream_Package; use java.io.DataOutputStream_Package;
with javax.microedition.rms.RecordEnumeration_Package; use javax.microedition.rms.RecordEnumeration_Package;
with javax.microedition.rms.RecordStore_Package; use javax.microedition.rms.RecordStore_Package;
with org.allbinary.TsUtil_Package; use org.allbinary.TsUtil_Package;
with org.allbinary.TsUtil_Package_References;
with org.allbinary.game.configuration.persistance.BasicPersitance_Package; use org.allbinary.game.configuration.persistance.BasicPersitance_Package;
with org.allbinary.game.configuration.persistance.NullRecordComparator_Package; use org.allbinary.game.configuration.persistance.NullRecordComparator_Package;
with org.allbinary.game.configuration.persistance.NullRecordFilter_Package; use org.allbinary.game.configuration.persistance.NullRecordFilter_Package;
with org.allbinary.game.configuration.persistance.NullRecordStore_Package; use org.allbinary.game.configuration.persistance.NullRecordStore_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.logic.math.SmallIntegerSingletonFactory_Package; use org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.HashtableUtil_Package; use org.allbinary.util.HashtableUtil_Package;
with org.allbinary.util.HashtableUtil_Package_References;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABHashtable_Package_References;
with org.allbinary.game.input.Input_Package; use org.allbinary.game.input.Input_Package;
with org.allbinary.game.input.GameKeyMappingFactory_Package; use org.allbinary.game.input.GameKeyMappingFactory_Package;
with org.allbinary.game.input.InputFactory_Package; use org.allbinary.game.input.InputFactory_Package;
with org.allbinary.util.ABStack_Package;
with org.allbinary.util.ABVector_Package;
with javax.microedition.lcdui.Alert_Package;
with javax.microedition.lcdui.AlertType_Package;
with org.microemu.device.ui.AlertUI_Package;
with org.allbinary.util.ArrayUtil_Package;
with javax.microedition.lcdui.BaseDisplay_Package;
with javax.microedition.lcdui.Canvas_Package;
with org.microemu.device.ui.CanvasUI_Package;
with org.allbinary.logic.java.character_Id.CharacterSet_Package;
with javax.microedition.lcdui.Choice_Package;
with javax.microedition.lcdui.ChoiceGroup_Package;
with javax.microedition.lcdui.ChoiceItem_Package;
with javax.microedition.lcdui.Command_Package;
with javax.microedition.lcdui.CommandListener_Package;
with org.microemu.device.ui.CommandUI_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.microemu.device.Device_Package;
with org.microemu.device.DeviceDisplay_Package;
with javax.microedition.lcdui.Display_Package;
with org.microemu.DisplayAccess_Package;
with javax.microedition.lcdui.DisplayAccessor_Package;
with javax.microedition.lcdui.Displayable_Package;
with org.microemu.device.ui.DisplayableUI_Package;
with org.allbinary.util.EnumerationUtil_Package;
with javax.microedition.lcdui.Event_Package;
with org.microemu.device.ui.EventDispatcher_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with javax.microedition.lcdui.Font_Package;
with org.microemu.device.FontManager_Package;
with javax.microedition.lcdui.Form_Package;
with org.microemu.device.ui.FormUI_Package;
with javax.microedition.lcdui.Gauge_Package;
with org.allbinary.logic.system.os.GenericOperatingSystem_Package;
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
with org.allbinary.logic.communication.log.LogUtil_Package;
with javax.microedition.midlet.MIDlet_Package;
with org.microemu.MIDletAccess_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.microemu.device.MutableImage_Package;
with org.allbinary.logic.NullUtil_Package;
with org.microemu.device.ui.PaintEvent_Package;
with org.allbinary.game.configuration.persistance.PersistanceStrings_Package;
with org.allbinary.persistance.PlatformRecordIdUtil_Package;
with org.microemu.device.ui.PointerEvent_Package;
with javax.microedition.rms.RecordComparator_Package;
with javax.microedition.rms.RecordFilter_Package;
with javax.microedition.rms.RecordListener_Package;
with javax.microedition.lcdui.Screen_Package;
with javax.microedition.lcdui.StringComponent_Package;
with org.allbinary.thread.SynchObject_Package;
with javax.microedition.lcdui.TextBox_Package;
with org.microemu.device.ui.TextBoxUI_Package;
with javax.microedition.lcdui.TextField_Package;
with javax.microedition.lcdui.Ticker_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.microemu.device.ui.UIFactory_Package;

package body org.allbinary.game.input.InputPersistance_Package is

   package ByteArrayInputStream_Package renames Standard.java.io.ByteArrayInputStream_Package;
   package ByteArrayOutputStream_Package renames Standard.java.io.ByteArrayOutputStream_Package;
   package DataInputStream_Package renames Standard.java.io.DataInputStream_Package;
   package DataOutputStream_Package renames Standard.java.io.DataOutputStream_Package;
   package RecordEnumeration_Package renames Standard.javax.microedition.rms.RecordEnumeration_Package;
   package RecordStore_Package renames Standard.javax.microedition.rms.RecordStore_Package;
   package NullRecordComparator_Package renames Standard.org.allbinary.game.configuration.persistance.NullRecordComparator_Package;
   package NullRecordFilter_Package renames Standard.org.allbinary.game.configuration.persistance.NullRecordFilter_Package;
   package NullRecordStore_Package renames Standard.org.allbinary.game.configuration.persistance.NullRecordStore_Package;
   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package SmallIntegerSingletonFactory_Package renames Standard.org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   subtype TsUtil_Access is org.allbinary.TsUtil_Package_References.TsUtil_Access;
   function "=" (Left, Right : TsUtil_Access) return Boolean renames org.allbinary.TsUtil_Package_References."=";
   subtype TsUtil_Access_Array is org.allbinary.TsUtil_Package_References.TsUtil_Access_Array;
   function "=" (Left, Right : TsUtil_Access_Array) return Boolean renames org.allbinary.TsUtil_Package_References."=";
   subtype TsUtil_Access_Array_Access is org.allbinary.TsUtil_Package_References.TsUtil_Access_Array_Access;
   function "=" (Left, Right : TsUtil_Access_Array_Access) return Boolean renames org.allbinary.TsUtil_Package_References."=";
   subtype TsUtil_Access_Array_Access_Array is org.allbinary.TsUtil_Package_References.TsUtil_Access_Array_Access_Array;
   function "=" (Left, Right : TsUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.TsUtil_Package_References."=";
   subtype TsUtil_Access_Array_Access_Array_Access is org.allbinary.TsUtil_Package_References.TsUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TsUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.TsUtil_Package_References."=";
   subtype AbeClientInformationInterface_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access;
   function "=" (Left, Right : AbeClientInformationInterface_Access) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References."=";
   subtype AbeClientInformationInterface_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array;
   function "=" (Left, Right : AbeClientInformationInterface_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References."=";
   subtype AbeClientInformationInterface_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access;
   function "=" (Left, Right : AbeClientInformationInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References."=";
   subtype AbeClientInformationInterface_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array;
   function "=" (Left, Right : AbeClientInformationInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References."=";
   subtype AbeClientInformationInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AbeClientInformationInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References."=";
   subtype HashtableUtil_Access is org.allbinary.util.HashtableUtil_Package_References.HashtableUtil_Access;
   function "=" (Left, Right : HashtableUtil_Access) return Boolean renames org.allbinary.util.HashtableUtil_Package_References."=";
   subtype HashtableUtil_Access_Array is org.allbinary.util.HashtableUtil_Package_References.HashtableUtil_Access_Array;
   function "=" (Left, Right : HashtableUtil_Access_Array) return Boolean renames org.allbinary.util.HashtableUtil_Package_References."=";
   subtype HashtableUtil_Access_Array_Access is org.allbinary.util.HashtableUtil_Package_References.HashtableUtil_Access_Array_Access;
   function "=" (Left, Right : HashtableUtil_Access_Array_Access) return Boolean renames org.allbinary.util.HashtableUtil_Package_References."=";
   subtype HashtableUtil_Access_Array_Access_Array is org.allbinary.util.HashtableUtil_Package_References.HashtableUtil_Access_Array_Access_Array;
   function "=" (Left, Right : HashtableUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.util.HashtableUtil_Package_References."=";
   subtype HashtableUtil_Access_Array_Access_Array_Access is org.allbinary.util.HashtableUtil_Package_References.HashtableUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HashtableUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.HashtableUtil_Package_References."=";
   subtype ABHashtable_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access;
   function "=" (Left, Right : ABHashtable_Access) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array;
   function "=" (Left, Right : ABHashtable_Access_Array) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access;
   function "=" (Left, Right : ABHashtable_Access_Array_Access) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array;
   function "=" (Left, Right : ABHashtable_Access_Array_Access_Array) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ABHashtable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   procedure Initialize_Fields (This : in out InputPersistance'Class) is
   begin
      null;
      This.tsUtil := TsUtil_Package.getInstance;
      This.hashtableUtil := HashtableUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out InputPersistance'Class; name : Unbounded_String) is
   begin
        BasicPersitance_Package.Initialize (This, name);
        Initialize_Fields (This);
   end Initialize;

   function Create (name : Unbounded_String) return InputPersistance_Access is
      This : constant InputPersistance_Access := new InputPersistance;
   begin
      InputPersistance_Package.Initialize (This.all, name);
      return This;
   end Create;

   --  throws Exception
   procedure loadAll (This : in out InputPersistance; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class) is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      recordStore : RecordStore_Access;
      recordEnum : RecordEnumeration_Access;
      gameActionInputId : Long_Long_Integer;
      inputId : Long_Long_Integer;
      gameActionInput : Input_Access;
      input : Input_Access;
      hashtable : ABHashtable_Access;
      gameKeyFactory : GameKeyMappingFactory_Access;
      stringBuffer : StringMaker_Access;
      inputFactory : InputFactory_Access;
      smallIntegerSingletonFactory : SmallIntegerSingletonFactory_Access;
      stdUtil : StdUtil_Access;
      recordAsBytes : Short_Short_Integer_Array_Access;
      byteArrayInputStream : ByteArrayInputStream_Access;
      inputStream : DataInputStream_Access;
      id : Integer;
      value : Integer;
      gameActionInputIdAsString : Unbounded_String;
   begin
        recordStore := RecordStore_Access (NullRecordStore_Package.NULL_RECORD_STORE);
        begin
            recordStore := RecordStore_Package.openRecordStore (InputPersistance'Class (This).getRecordId (abeClientInformation), True);
            recordEnum := recordStore.enumerateRecords (NullRecordFilter_Package.NULL_RECORD_FILTER, NullRecordComparator_Package.NULL_RECORD_COMPARATOR, True);
            gameActionInputId := 0;
            inputId := 0;
            gameActionInput := null;
            input := null;
            hashtable := null;
            gameKeyFactory := GameKeyMappingFactory_Package.getInstance;
            stringBuffer := StringMaker_Package.Create;
            inputFactory := InputFactory_Package.getInstance;
            smallIntegerSingletonFactory := SmallIntegerSingletonFactory_Package.getInstance;
            stdUtil := StdUtil_Package.getInstance;
            recordAsBytes := null;
            byteArrayInputStream := null;
            inputStream := null;
            while recordEnum.hasNextElement loop
                id := recordEnum.nextRecordId;
                stringBuffer.delete (0, stringBuffer.length);
                This.logUtil.putF (stringBuffer.append (This.persistanceStrings.LOADING_ID).appendint (id).toString, InputPersistance_Access'(This'Unchecked_Access), This.persistanceStrings.LOAD_ALL);
                recordAsBytes := This.tsUtil.getRecord (recordStore, id);
                if (recordAsBytes) /= (null) then
                    byteArrayInputStream := ByteArrayInputStream_Package.Create (recordAsBytes);
                    inputStream := DataInputStream_Package.Create (byteArrayInputStream);
                    hashtable := stdUtil.createHashtable;
                    value := 0;
                    while (inputStream.available) > (0) loop
                        gameActionInputIdAsString := inputStream.readUTF;
                        value := Integer'Value (To_String (gameActionInputIdAsString));
                        gameActionInputId := Long_Long_Integer (value);
                        declare Java_Result renames inputStream.readUTF; pragma Unreferenced (Java_Result); begin null; end;
                        value := Integer'Value (To_String (inputStream.readUTF));
                        inputId := Long_Long_Integer (value);
                        gameActionInput := gameKeyFactory.getGameKey (Integer (gameActionInputId));
                        input := inputFactory.getInstanceById (Integer (inputId));
                        if ((Java_Object_Access (input)) = (Java_Object_Access (inputFactory.NO_INPUT))) or else ((gameActionInput) = (null)) then
                            stringBuffer.delete (0, stringBuffer.length);
                            if (Java_Object_Access (input)) = (Java_Object_Access (inputFactory.NO_INPUT)) then
                                stringBuffer.append (This.persistanceStrings.ERROR_LOADING_ID);
                                stringBuffer.appendlong (inputId);
                                stringBuffer.append (This.persistanceStrings.GAME_ACTION_INPUT);
                                stringBuffer.appendlong (gameActionInputId);
                                PreLogUtil_Package.put (stringBuffer.toString, InputPersistance_Access'(This'Unchecked_Access), This.persistanceStrings.LOAD_ALL);
                            end if;
                            if (gameActionInput) = (null) then
                                stringBuffer.delete (0, stringBuffer.length);
                                stringBuffer.append (This.persistanceStrings.ERROR_LOADING);
                                stringBuffer.appendlong (gameActionInputId);
                                stringBuffer.append (This.persistanceStrings.ID);
                                stringBuffer.appendlong (inputId);
                                PreLogUtil_Package.put (stringBuffer.toString, InputPersistance_Access'(This'Unchecked_Access), This.persistanceStrings.LOAD_ALL);
                            end if;
                        else
                            null;
                        end if;
                        hashtable.put (input, gameActionInput);
                    end loop;
                    This.valueList.add (Java_Object_Access (hashtable));
                    This.idList.add (Java_Box (smallIntegerSingletonFactory.getAt (id)));
                else
                    null;
                end if;
            end loop;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Java_Throw (e);
                end;
        end;
        --  finally
        begin
            if (recordStore) /= (null) then
                PreLogUtil_Package.put (This.persistanceStrings.CLOSING_RECORDSTORE, InputPersistance_Access'(This'Unchecked_Access), This.persistanceStrings.LOAD_ALL);
                recordStore.closeRecordStore;
            end if;
        end;
   end loadAll;

   --  throws Exception
   procedure save (This : in out InputPersistance; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; hashtable_Param : access ABHashtable_Package.ABHashtable'Class) is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      hashtable : constant ABHashtable_Access := ABHashtable_Access (hashtable_Param);
      recordStore : RecordStore_Access;
      stringBuffer : StringMaker_Access;
      byteArrayOutputStream : ByteArrayOutputStream_Access;
      outputStream : DataOutputStream_Access;
      gameActionInput : Input_Access;
      list : BasicArrayList_Access;
      input : Input_Access;
      savedGameBytes : Short_Short_Integer_Array_Access;
      commonSeps : CommonSeps_Access;
      smallIntegerSingletonFactory : SmallIntegerSingletonFactory_Access;
      inputObjectArray : Java_Object_Access_Array_Access;
      size : Integer;
      gameActionInputIdAsString : Unbounded_String;
      inputIdAsString : Unbounded_String;
      index2 : Integer;
      index : Integer;
   begin
        recordStore := RecordStore_Access (NullRecordStore_Package.NULL_RECORD_STORE);
        begin
            stringBuffer := StringMaker_Package.Create;
            PreLogUtil_Package.put (stringBuffer.append (This.persistanceStrings.SAVING).append (StringUtil_Package.getInstance.toString (hashtable)).toString, InputPersistance_Access'(This'Unchecked_Access), This.commonStrings.SAVE);
            recordStore := RecordStore_Package.openRecordStore (InputPersistance'Class (This).getRecordId (abeClientInformation), True);
            byteArrayOutputStream := ByteArrayOutputStream_Package.Create;
            outputStream := DataOutputStream_Package.Create (byteArrayOutputStream);
            gameActionInput := null;
            list := null;
            input := null;
            savedGameBytes := null;
            commonSeps := CommonSeps_Package.getInstance;
            smallIntegerSingletonFactory := SmallIntegerSingletonFactory_Package.getInstance;
            inputObjectArray := This.hashtableUtil.getKeysAsArray (hashtable);
            size := inputObjectArray'Length;
            for index in 0 .. (size) - 1 loop
                gameActionInput := Input_Access (inputObjectArray (index));
                list := BasicArrayList_Access (hashtable.get (Java_Object_Access (inputObjectArray (index))));
                for index2 in 0 .. (list.size) - 1 loop
                    gameActionInputIdAsString := To_Unbounded_String (Java_Image (smallIntegerSingletonFactory.getAt (gameActionInput.getId)));
                    outputStream.writeUTF (gameActionInputIdAsString);
                    outputStream.writeUTF (commonSeps.EQUALS);
                    input := Input_Access (list.objectArray (index2));
                    inputIdAsString := To_Unbounded_String (Java_Image (smallIntegerSingletonFactory.getAt (input.getId)));
                    outputStream.writeUTF (inputIdAsString);
                end loop;
            end loop;
            savedGameBytes := byteArrayOutputStream.toByteArray;
            recordStore.addRecord (savedGameBytes, 0, savedGameBytes'Length);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Java_Throw (e);
                end;
        end;
        --  finally
        begin
            if (recordStore) /= (null) then
                PreLogUtil_Package.put (This.persistanceStrings.CLOSING_RECORDSTORE, InputPersistance_Access'(This'Unchecked_Access), This.commonStrings.SAVE);
                recordStore.closeRecordStore;
            end if;
        end;
   end save;

end org.allbinary.game.input.InputPersistance_Package;


