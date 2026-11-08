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
with javax.microedition.rms.RecordStoreException_Package; use javax.microedition.rms.RecordStoreException_Package;
with org.allbinary.TsUtil_Package; use org.allbinary.TsUtil_Package;
with org.allbinary.TsUtil_Package_References;
with org.allbinary.game.GameInfo_Package; use org.allbinary.game.GameInfo_Package;
with org.allbinary.game.GameInfo_Package_References;
with org.allbinary.game.configuration.persistance.NullRecordComparator_Package; use org.allbinary.game.configuration.persistance.NullRecordComparator_Package;
with org.allbinary.game.configuration.persistance.NullRecordFilter_Package; use org.allbinary.game.configuration.persistance.NullRecordFilter_Package;
with org.allbinary.game.configuration.persistance.NullRecordStore_Package; use org.allbinary.game.configuration.persistance.NullRecordStore_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package; use org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.math.SmallIntegerSingletonFactory_Package; use org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;
with org.allbinary.persistance.PlatformRecordIdUtil_Package; use org.allbinary.persistance.PlatformRecordIdUtil_Package;
with org.allbinary.persistance.PlatformRecordIdUtil_Package_References;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.util.ABHashtable_Package;
with javax.microedition.lcdui.Alert_Package;
with javax.microedition.lcdui.AlertType_Package;
with org.microemu.device.ui.AlertUI_Package;
with org.allbinary.util.ArrayUtil_Package;
with javax.microedition.lcdui.BaseDisplay_Package;
with org.allbinary.util.BasicArrayListS_Package;
with javax.microedition.lcdui.Canvas_Package;
with org.microemu.device.ui.CanvasUI_Package;
with org.allbinary.logic.java.character_Id.CharacterSet_Package;
with javax.microedition.lcdui.Choice_Package;
with javax.microedition.lcdui.ChoiceGroup_Package;
with javax.microedition.lcdui.ChoiceItem_Package;
with javax.microedition.lcdui.Command_Package;
with javax.microedition.lcdui.CommandListener_Package;
with org.microemu.device.ui.CommandUI_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.microemu.device.Device_Package;
with org.microemu.device.DeviceDisplay_Package;
with javax.microedition.lcdui.Display_Package;
with org.microemu.DisplayAccess_Package;
with javax.microedition.lcdui.DisplayAccessor_Package;
with javax.microedition.lcdui.Displayable_Package;
with org.microemu.device.ui.DisplayableUI_Package;
with javax.microedition.lcdui.Event_Package;
with org.microemu.device.ui.EventDispatcher_Package;
with javax.microedition.lcdui.Font_Package;
with org.microemu.device.FontManager_Package;
with javax.microedition.lcdui.Form_Package;
with org.microemu.device.ui.FormUI_Package;
with org.allbinary.game.GameInfoData_Package;
with org.allbinary.game.GameMode_Package;
with org.allbinary.game.GameType_Package;
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
with javax.microedition.midlet.MIDlet_Package;
with org.microemu.MIDletAccess_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.microemu.device.MutableImage_Package;
with org.allbinary.logic.NullUtil_Package;
with org.microemu.device.ui.PaintEvent_Package;
with org.allbinary.game.PlayerType_Package;
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

package body org.allbinary.game.score.HighScoreNamePersistanceSingleton_Package is

   package ByteArrayInputStream_Package renames Standard.java.io.ByteArrayInputStream_Package;
   package ByteArrayOutputStream_Package renames Standard.java.io.ByteArrayOutputStream_Package;
   package DataInputStream_Package renames Standard.java.io.DataInputStream_Package;
   package DataOutputStream_Package renames Standard.java.io.DataOutputStream_Package;
   package RecordEnumeration_Package renames Standard.javax.microedition.rms.RecordEnumeration_Package;
   package RecordStore_Package renames Standard.javax.microedition.rms.RecordStore_Package;
   package RecordStoreException_Package renames Standard.javax.microedition.rms.RecordStoreException_Package;
   package NullRecordComparator_Package renames Standard.org.allbinary.game.configuration.persistance.NullRecordComparator_Package;
   package NullRecordFilter_Package renames Standard.org.allbinary.game.configuration.persistance.NullRecordFilter_Package;
   package NullRecordStore_Package renames Standard.org.allbinary.game.configuration.persistance.NullRecordStore_Package;
   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package ExceptionUtil_Package renames Standard.org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
   package SmallIntegerSingletonFactory_Package renames Standard.org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
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
   subtype GameInfo_Access is org.allbinary.game.GameInfo_Package_References.GameInfo_Access;
   function "=" (Left, Right : GameInfo_Access) return Boolean renames org.allbinary.game.GameInfo_Package_References."=";
   subtype GameInfo_Access_Array is org.allbinary.game.GameInfo_Package_References.GameInfo_Access_Array;
   function "=" (Left, Right : GameInfo_Access_Array) return Boolean renames org.allbinary.game.GameInfo_Package_References."=";
   subtype GameInfo_Access_Array_Access is org.allbinary.game.GameInfo_Package_References.GameInfo_Access_Array_Access;
   function "=" (Left, Right : GameInfo_Access_Array_Access) return Boolean renames org.allbinary.game.GameInfo_Package_References."=";
   subtype GameInfo_Access_Array_Access_Array is org.allbinary.game.GameInfo_Package_References.GameInfo_Access_Array_Access_Array;
   function "=" (Left, Right : GameInfo_Access_Array_Access_Array) return Boolean renames org.allbinary.game.GameInfo_Package_References."=";
   subtype GameInfo_Access_Array_Access_Array_Access is org.allbinary.game.GameInfo_Package_References.GameInfo_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameInfo_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.GameInfo_Package_References."=";
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
   subtype PlatformRecordIdUtil_Access is org.allbinary.persistance.PlatformRecordIdUtil_Package_References.PlatformRecordIdUtil_Access;
   function "=" (Left, Right : PlatformRecordIdUtil_Access) return Boolean renames org.allbinary.persistance.PlatformRecordIdUtil_Package_References."=";
   subtype PlatformRecordIdUtil_Access_Array is org.allbinary.persistance.PlatformRecordIdUtil_Package_References.PlatformRecordIdUtil_Access_Array;
   function "=" (Left, Right : PlatformRecordIdUtil_Access_Array) return Boolean renames org.allbinary.persistance.PlatformRecordIdUtil_Package_References."=";
   subtype PlatformRecordIdUtil_Access_Array_Access is org.allbinary.persistance.PlatformRecordIdUtil_Package_References.PlatformRecordIdUtil_Access_Array_Access;
   function "=" (Left, Right : PlatformRecordIdUtil_Access_Array_Access) return Boolean renames org.allbinary.persistance.PlatformRecordIdUtil_Package_References."=";
   subtype PlatformRecordIdUtil_Access_Array_Access_Array is org.allbinary.persistance.PlatformRecordIdUtil_Package_References.PlatformRecordIdUtil_Access_Array_Access_Array;
   function "=" (Left, Right : PlatformRecordIdUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.persistance.PlatformRecordIdUtil_Package_References."=";
   subtype PlatformRecordIdUtil_Access_Array_Access_Array_Access is org.allbinary.persistance.PlatformRecordIdUtil_Package_References.PlatformRecordIdUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PlatformRecordIdUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.persistance.PlatformRecordIdUtil_Package_References."=";
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   function "=" (Left, Right : CommonStrings_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
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
   procedure Initialize_Fields (This : in out HighScoreNamePersistanceSingleton'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.tsUtil := TsUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.platformRecordIdUtil := PlatformRecordIdUtil_Package.getInstance;
      This.RECORD_ID := To_Unbounded_String ("_SN");
      This.name := StringUtil_Package.getInstance.EMPTY_STRING;
      This.nameBasicArrayList := BasicArrayList_Access (BasicArrayListD_Package.Create);
   end Initialize_Fields;

   procedure Initialize (This : in out HighScoreNamePersistanceSingleton'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return HighScoreNamePersistanceSingleton_Access is
      This : constant HighScoreNamePersistanceSingleton_Access := new HighScoreNamePersistanceSingleton;
   begin
      HighScoreNamePersistanceSingleton_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return HighScoreNamePersistanceSingleton_Access is
   begin
        return HighScoreNamePersistanceSingleton_Access (HighScoreNamePersistanceSingleton_Package.SINGLETON);
   end getInstance;

   procedure clear (This : in out HighScoreNamePersistanceSingleton) is
   begin
        This.name := StringUtil_Package.getInstance.EMPTY_STRING;
   end clear;

   --  throws Exception
   procedure deleteAll (This : in out HighScoreNamePersistanceSingleton; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; gameInfo_Param : access GameInfo_Package.GameInfo'Class) is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      gameInfo : constant GameInfo_Access := GameInfo_Access (gameInfo_Param);
      size : Integer;
      integer_Id : Integer;
      index : Integer;
   begin
        size := This.nameBasicArrayList.size;
        for index in 0 .. (size) - 1 loop
            integer_Id := Java_Unbox_Integer (This.nameBasicArrayList.objectArray (index));
            HighScoreNamePersistanceSingleton'Class (This).delete (abeClientInformation, gameInfo, Integer (integer_Id));
        end loop;
        HighScoreNamePersistanceSingleton'Class (This).clear;
   end deleteAll;

   function getRecordId (This : in out HighScoreNamePersistanceSingleton; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class) return Unbounded_String is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
   begin
        return This.platformRecordIdUtil.getRecordId (abeClientInformation, This.RECORD_ID);
   end getRecordId;

   --  throws Exception
   procedure delete (This : in out HighScoreNamePersistanceSingleton; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; gameInfo_Param : access GameInfo_Package.GameInfo'Class; deleteId : Integer) is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      gameInfo : constant GameInfo_Access := GameInfo_Access (gameInfo_Param);
      recordStore : RecordStore_Access;
   begin
        recordStore := RecordStore_Access (NullRecordStore_Package.NULL_RECORD_STORE);
        begin
            This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("Deleting: ")).appendint (deleteId).toString, HighScoreNamePersistanceSingleton_Access'(This'Unchecked_Access), This.commonStrings.delete);
            recordStore := RecordStore_Package.openRecordStore (HighScoreNamePersistanceSingleton'Class (This).getRecordId (abeClientInformation), True);
            recordStore.deleteRecord (deleteId);
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
                PreLogUtil_Package.put (To_Unbounded_String ("Closing RecordStore"), HighScoreNamePersistanceSingleton_Access'(This'Unchecked_Access), This.commonStrings.delete);
                recordStore.closeRecordStore;
            end if;
        end;
   end delete;

   function getIds (This : in out HighScoreNamePersistanceSingleton) return BasicArrayList_Access is
   begin
        return This.nameBasicArrayList;
   end getIds;

   function load (This : in out HighScoreNamePersistanceSingleton; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; gameInfo_Param : access GameInfo_Package.GameInfo'Class) return Unbounded_String is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      gameInfo : constant GameInfo_Access := GameInfo_Access (gameInfo_Param);
      recordStore : RecordStore_Access;
      LOADING_ID : Unbounded_String;
      recordEnum : RecordEnumeration_Access;
      smallIntegerSingletonFactory : SmallIntegerSingletonFactory_Access;
      recordAsBytes : Short_Short_Integer_Array_Access;
      byteArrayInputStream : ByteArrayInputStream_Access;
      inputStream : DataInputStream_Access;
      id : Integer;
   begin
        recordStore := RecordStore_Access (NullRecordStore_Package.NULL_RECORD_STORE);
        begin
            if (This.name) = (StringUtil_Package.getInstance.EMPTY_STRING) then
                LOADING_ID := To_Unbounded_String ("Loading id: ");
                recordStore := RecordStore_Package.openRecordStore (HighScoreNamePersistanceSingleton'Class (This).getRecordId (abeClientInformation), True);
                recordEnum := recordStore.enumerateRecords (NullRecordFilter_Package.NULL_RECORD_FILTER, NullRecordComparator_Package.NULL_RECORD_COMPARATOR, True);
                smallIntegerSingletonFactory := SmallIntegerSingletonFactory_Package.getInstance;
                recordAsBytes := null;
                byteArrayInputStream := null;
                inputStream := null;
                while recordEnum.hasNextElement loop
                    id := recordEnum.nextRecordId;
                    This.logUtil.putF (StringMaker_Package.Create.append (LOADING_ID).appendint (id).toString, HighScoreNamePersistanceSingleton_Access'(This'Unchecked_Access), This.commonStrings.LOAD);
                    recordAsBytes := This.tsUtil.getRecord (recordStore, id);
                    byteArrayInputStream := ByteArrayInputStream_Package.Create (recordAsBytes);
                    inputStream := DataInputStream_Package.Create (byteArrayInputStream);
                    while (inputStream.available) > (0) loop
                        This.name := inputStream.readUTF;
                    end loop;
                    This.nameBasicArrayList.add (Java_Box (smallIntegerSingletonFactory.getAt (id)));
                end loop;
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            HighScoreNamePersistanceSingleton'Class (This).save (abeClientInformation, gameInfo, This.name);
            This.logUtil.putF (StringMaker_Package.Create.append (This.commonStrings.EXCEPTION_LABEL).append (ExceptionUtil_Package.getInstance.getStackTrace (e)).toString, HighScoreNamePersistanceSingleton_Access'(This'Unchecked_Access), This.commonStrings.LOAD);
                end;
        end;
        --  finally
        begin
            begin
                if (recordStore) /= (null) then
                    PreLogUtil_Package.put (To_Unbounded_String ("Closing RecordStore"), HighScoreNamePersistanceSingleton_Access'(This'Unchecked_Access), This.commonStrings.LOAD);
                    recordStore.closeRecordStore;
                end if;
            exception
                when Java_Occurrence : others =>
                    declare
                        e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                    begin
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, HighScoreNamePersistanceSingleton_Access'(This'Unchecked_Access), This.commonStrings.LOAD, e);
                    end;
            end;
        end;
        return This.name;
   end load;

   procedure save (This : in out HighScoreNamePersistanceSingleton; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; gameInfo_Param : access GameInfo_Package.GameInfo'Class; name : Unbounded_String) is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      gameInfo : constant GameInfo_Access := GameInfo_Access (gameInfo_Param);
      recordStore : RecordStore_Access;
      byteArrayOutputStream : ByteArrayOutputStream_Access;
      outputStream : DataOutputStream_Access;
      savedGameBytes : Short_Short_Integer_Array_Access;
   begin
        recordStore := RecordStore_Access (NullRecordStore_Package.NULL_RECORD_STORE);
        begin
            This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("Saving: ")).append (name).toString, HighScoreNamePersistanceSingleton_Access'(This'Unchecked_Access), This.commonStrings.SAVE);
            recordStore := RecordStore_Package.openRecordStore (HighScoreNamePersistanceSingleton'Class (This).getRecordId (abeClientInformation), True);
            byteArrayOutputStream := ByteArrayOutputStream_Package.Create;
            outputStream := DataOutputStream_Package.Create (byteArrayOutputStream);
            outputStream.writeUTF (name);
            savedGameBytes := byteArrayOutputStream.toByteArray;
            recordStore.addRecord (savedGameBytes, 0, savedGameBytes'Length);
            This.name := name;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, HighScoreNamePersistanceSingleton_Access'(This'Unchecked_Access), This.commonStrings.SAVE, e);
                end;
        end;
        --  finally
        begin
            begin
                if (recordStore) /= (null) then
                    PreLogUtil_Package.put (To_Unbounded_String ("Closing RecordStore"), HighScoreNamePersistanceSingleton_Access'(This'Unchecked_Access), This.commonStrings.SAVE);
                    recordStore.closeRecordStore;
                end if;
            exception
                when Java_Occurrence : others =>
                    declare
                        e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                    begin
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, HighScoreNamePersistanceSingleton_Access'(This'Unchecked_Access), This.commonStrings.SAVE, e);
                    end;
            end;
        end;
   end save;

   procedure getRecordId (This : in out HighScoreNamePersistanceSingleton; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class) is
      Java_Result : constant Unbounded_String := HighScoreNamePersistanceSingleton'Class (This).getRecordId (abeClientInformation_Param => abeClientInformation_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRecordId;

   procedure load (This : in out HighScoreNamePersistanceSingleton; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; gameInfo_Param : access GameInfo_Package.GameInfo'Class) is
      Java_Result : constant Unbounded_String := HighScoreNamePersistanceSingleton'Class (This).load (abeClientInformation_Param => abeClientInformation_Param, gameInfo_Param => gameInfo_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end load;

begin
   null;
   SINGLETON := HighScoreNamePersistanceSingleton_Package.Create;

end org.allbinary.game.score.HighScoreNamePersistanceSingleton_Package;


