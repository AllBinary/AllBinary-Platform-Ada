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


with java.io.Closeable_Package; use java.io.Closeable_Package;
with java.io.FileReader_Package; use java.io.FileReader_Package;
with org.allbinary.logic.io.NullCloseable_Package; use org.allbinary.logic.io.NullCloseable_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.system.hardware.HardwareInterface_Package; use org.allbinary.logic.system.hardware.HardwareInterface_Package;
with org.allbinary.logic.system.hardware.components.android.UnknownHardware_Package; use org.allbinary.logic.system.hardware.components.android.UnknownHardware_Package;
with org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package; use org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package;
with org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package_References;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABHashtable_Package_References;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.util.ABStack_Package;
with org.allbinary.util.ABVector_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.logic.system.hardware.android.AndroidHardware_Package is

   package Closeable_Package renames Standard.java.io.Closeable_Package;
   package FileReader_Package renames Standard.java.io.FileReader_Package;
   package NullCloseable_Package renames Standard.org.allbinary.logic.io.NullCloseable_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package UnknownHardware_Package renames Standard.org.allbinary.logic.system.hardware.components.android.UnknownHardware_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
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
   subtype HardwareComponentInterface_Access is org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package_References.HardwareComponentInterface_Access;
   function "=" (Left, Right : HardwareComponentInterface_Access) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package_References."=";
   subtype HardwareComponentInterface_Access_Array is org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package_References.HardwareComponentInterface_Access_Array;
   function "=" (Left, Right : HardwareComponentInterface_Access_Array) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package_References."=";
   subtype HardwareComponentInterface_Access_Array_Access is org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package_References.HardwareComponentInterface_Access_Array_Access;
   function "=" (Left, Right : HardwareComponentInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package_References."=";
   subtype HardwareComponentInterface_Access_Array_Access_Array is org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package_References.HardwareComponentInterface_Access_Array_Access_Array;
   function "=" (Left, Right : HardwareComponentInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package_References."=";
   subtype HardwareComponentInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package_References.HardwareComponentInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HardwareComponentInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package_References."=";
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
   procedure Initialize_Fields (This : in out AndroidHardware'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.componentInterfaceVector := BasicArrayList_Access (BasicArrayListD_Package.Create);
      This.PROC_BUS_INPUT_DIRECTORY := To_Unbounded_String ("/proc/bus/input/");
      This.DEVICES := This.PROC_BUS_INPUT_DIRECTORY & To_Unbounded_String ("devices/");
      This.MINHARDWARE := 3;
   end Initialize_Fields;


   procedure Initialize (This : in out AndroidHardware'Class) is
      size : Integer;
   begin
      Initialize_Fields (This);
        AndroidHardware'Class (This).init (This.DEVICES);
        size := This.componentInterfaceVector.size;
        if (size) < (This.MINHARDWARE) then
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Not Enough Data For A Valid License On Linux")));
        end if;
   end Initialize;

   function Create return AndroidHardware_Access is
      This : constant AndroidHardware_Access := new AndroidHardware;
   begin
      AndroidHardware_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure init (This : in out AndroidHardware; filePath : Unbounded_String) is
      lineNumberReader : Closeable_Access;
   begin
        lineNumberReader := Closeable_Access (NullCloseable_Package.NULL_CLOSEABLE);
        begin
            lineNumberReader := Closeable_Access (AndroidHardware'Class (This).get (filePath));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (To_Unbounded_String ("Hardware Data: ") & AndroidHardware'Class (This).toString, AndroidHardware_Access'(This'Unchecked_Access), This.commonStrings.INIT, e);
            Java_Throw (e);
                end;
        end;
        --  finally
        begin
            if (lineNumberReader) /= (null) then
                lineNumberReader.close;
            end if;
        end;
   end init;

   --  throws Exception
   function get (This : in out AndroidHardware; filePath : Unbounded_String) return LineNumberReader_Access is
      pciFile : FileReader_Access;
      lineNumberReader : LineNumberReader_Access;
      nextLine : Unbounded_String;
   begin
        This.componentInterfaceVector := BasicArrayList_Access (BasicArrayListD_Package.Create);
        pciFile := FileReader_Package.Create (filePath);
        lineNumberReader := LineNumberReader_Package.Create (pciFile);
        This.logUtil.putF (To_Unbounded_String ("File Found"), AndroidHardware_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
        nextLine := lineNumberReader.readLine;
        while (nextLine) /= (Null_Unbounded_String) loop
            nextLine := lineNumberReader.readLine;
            This.componentInterfaceVector.add (Java_Object_Access (UnknownHardware_Package.Create (nextLine)));
        end loop;
        return lineNumberReader;
   end get;

   function getComponent (This : in out AndroidHardware; index : Integer) return HardwareComponentInterface_Access is
   begin
        return HardwareComponentInterface_Access (This.componentInterfaceVector.get (index));
   end getComponent;

   function toString (This : in out AndroidHardware) return Unbounded_String is
      stringBuilder : StringMaker_Access;
      size : Integer;
      componentInterface : HardwareComponentInterface_Access;
      index : Integer;
   begin
        stringBuilder := StringMaker_Package.Create;
        size := This.componentInterfaceVector.size;
        for index in 0 .. (size) - 1 loop
            componentInterface := HardwareComponentInterface_Access (This.componentInterfaceVector.get (index));
            stringBuilder.append (Java_Object'Class (componentInterface.all).toString);
            stringBuilder.append (CommonSeps_Package.getInstance.NEW_LINE);
        end loop;
        return stringBuilder.toString;
   end toString;

   function compareTo (This : in out AndroidHardware; hardwareInterface_Param : access HardwareInterface_Package.HardwareInterface'Class) return Boolean is
      hardwareInterface : constant HardwareInterface_Access := HardwareInterface_Access (hardwareInterface_Param);
   begin
        return True;
   end compareTo;

   function difference (This : in out AndroidHardware; hardwareInterface_Param : access HardwareInterface_Package.HardwareInterface'Class) return ABHashtable_Access is
      hardwareInterface : constant HardwareInterface_Access := HardwareInterface_Access (hardwareInterface_Param);
   begin
        return ABHashtable_Access (StdUtil_Package.getInstance.NULL_TABLE);
   end difference;

   procedure get (This : in out AndroidHardware; filePath : Unbounded_String) is
      Java_Result : constant LineNumberReader_Access := AndroidHardware'Class (This).get (filePath => filePath);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

   procedure getComponent (This : in out AndroidHardware; index : Integer) is
      Java_Result : constant HardwareComponentInterface_Access := AndroidHardware'Class (This).getComponent (index => index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getComponent;

   procedure compareTo (This : in out AndroidHardware; hardwareInterface_Param : access HardwareInterface_Package.HardwareInterface'Class) is
      Java_Result : constant Boolean := AndroidHardware'Class (This).compareTo (hardwareInterface_Param => hardwareInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end compareTo;

   procedure difference (This : in out AndroidHardware; hardwareInterface_Param : access HardwareInterface_Package.HardwareInterface'Class) is
      Java_Result : constant ABHashtable_Access := AndroidHardware'Class (This).difference (hardwareInterface_Param => hardwareInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end difference;

end org.allbinary.logic.system.hardware.android.AndroidHardware_Package;


