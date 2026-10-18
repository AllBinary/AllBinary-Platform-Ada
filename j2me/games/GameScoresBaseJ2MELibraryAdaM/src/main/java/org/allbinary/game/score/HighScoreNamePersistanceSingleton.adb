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


with java.io.ByteArrayOutputStream_Package; use java.io.ByteArrayOutputStream_Package;
with java.io.DataInputStream_Package; use java.io.DataInputStream_Package;
with java.io.DataOutputStream_Package; use java.io.DataOutputStream_Package;
with javax.microedition.rms.RecordEnumeration_Package; use javax.microedition.rms.RecordEnumeration_Package;
with javax.microedition.rms.RecordStore_Package; use javax.microedition.rms.RecordStore_Package;
with javax.microedition.rms.RecordStoreException_Package; use javax.microedition.rms.RecordStoreException_Package;
with org.allbinary.game.configuration.persistance.NullRecordComparator_Package; use org.allbinary.game.configuration.persistance.NullRecordComparator_Package;
with org.allbinary.game.configuration.persistance.NullRecordFilter_Package; use org.allbinary.game.configuration.persistance.NullRecordFilter_Package;
with org.allbinary.game.configuration.persistance.NullRecordStore_Package; use org.allbinary.game.configuration.persistance.NullRecordStore_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package; use org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.math.SmallIntegerSingletonFactory_Package; use org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;

package body org.allbinary.game.score.HighScoreNamePersistanceSingleton_Package is

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
        return HighScoreNamePersistanceSingleton_Package.SINGLETON;
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
            integer_Id := Integer (This.nameBasicArrayList.objectArray (index));
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
        recordStore := NullRecordStore_Package.NULL_RECORD_STORE;
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
        recordStore := NullRecordStore_Package.NULL_RECORD_STORE;
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
                    This.nameBasicArrayList.add (smallIntegerSingletonFactory.getAt (id));
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
        recordStore := NullRecordStore_Package.NULL_RECORD_STORE;
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
      Java_Result : constant Unbounded_String := HighScoreNamePersistanceSingleton'Class (This).getRecordId (abeClientInformation_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRecordId;

   procedure load (This : in out HighScoreNamePersistanceSingleton; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; gameInfo_Param : access GameInfo_Package.GameInfo'Class) is
      Java_Result : constant Unbounded_String := HighScoreNamePersistanceSingleton'Class (This).load (abeClientInformation_Param, gameInfo_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end load;

begin
   null;
   SINGLETON := HighScoreNamePersistanceSingleton_Package.Create;

end org.allbinary.game.score.HighScoreNamePersistanceSingleton_Package;


