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


package body org.allbinary.logic.system.hardware.android.AndroidHardware_Package is

   procedure Initialize_Fields (This : in out AndroidHardware'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.componentInterfaceVector := BasicArrayListD_Package.Create;
      This.PROC_BUS_INPUT_DIRECTORY := To_Unbounded_String ("/proc/bus/input/");
      This.DEVICES := This.PROC_BUS_INPUT_DIRECTORY & To_Unbounded_String ("devices/");
      This.MINHARDWARE := 3;
   end Initialize_Fields;


   procedure Initialize (This : in out AndroidHardware'Class) is
      size : Integer;
   begin
      Initialize_Fields (This);
        This.init (This.DEVICES);
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
        lineNumberReader := NullCloseable_Package.NULL_CLOSEABLE;
        begin
            lineNumberReader := This.get (filePath);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (To_Unbounded_String ("Hardware Data: ") & This.toString, This'Unchecked_Access, This.commonStrings.INIT, e);
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
        This.componentInterfaceVector := BasicArrayListD_Package.Create;
        pciFile := FileReader_Package.Create (filePath);
        lineNumberReader := LineNumberReader_Package.Create (pciFile);
        This.logUtil.putF (To_Unbounded_String ("File Found"), This'Unchecked_Access, This.commonStrings.CONSTRUCTOR);
        nextLine := lineNumberReader.readLine;
        while (nextLine) /= (Null_Unbounded_String) loop
            nextLine := lineNumberReader.readLine;
            This.componentInterfaceVector.add (UnknownHardware_Package.Create (nextLine));
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
            stringBuilder.append (componentInterface.toString);
            stringBuilder.append (CommonSeps_Package.getInstance.NEW_LINE);
        end loop;
        return stringBuilder.toString;
   end toString;

   function compareTo (This : in out AndroidHardware; hardwareInterface : HardwareInterface_Access) return Boolean is
   begin
        return True;
   end compareTo;

   function difference (This : in out AndroidHardware; hardwareInterface : HardwareInterface_Access) return ABHashtable_Access is
   begin
        return StdUtil_Package.getInstance.NULL_TABLE;
   end difference;

   procedure get (This : in out AndroidHardware; filePath : Unbounded_String) is
      Java_Result : constant LineNumberReader_Access := AndroidHardware'Class (This).get (filePath);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

   procedure getComponent (This : in out AndroidHardware; index : Integer) is
      Java_Result : constant HardwareComponentInterface_Access := AndroidHardware'Class (This).getComponent (index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getComponent;

   procedure compareTo (This : in out AndroidHardware; hardwareInterface : HardwareInterface_Access) is
      Java_Result : constant Boolean := AndroidHardware'Class (This).compareTo (hardwareInterface);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end compareTo;

   procedure difference (This : in out AndroidHardware; hardwareInterface : HardwareInterface_Access) is
      Java_Result : constant ABHashtable_Access := AndroidHardware'Class (This).difference (hardwareInterface);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end difference;

end org.allbinary.logic.system.hardware.android.AndroidHardware_Package;


