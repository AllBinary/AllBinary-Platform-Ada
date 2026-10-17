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


package body org.allbinary.logic.system.hardware.linux.LinuxHardware_Package is

   procedure Initialize_Fields (This : in out LinuxHardware'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.componentInterfaceVector := null;
      This.videoInterfaceVector := null;
      This.hardDriveControllerInterfaceVector := null;
      This.cpuInterfaceVector := null;
      This.usbInterfaceVector := null;
      This.ethernetInterfaceVector := null;
      This.multimediaInterfaceVector := null;
      This.fireWireInterfaceVector := null;
      This.bridgeInterfaceVector := null;
      This.hardDriveInterfaceVector := null;
      This.macInterfaceVector := null;
      This.monitorInterfaceVector := null;
      This.NAME := To_Unbounded_String ("Linux Hardware Profile");
      This.MINHARDWARE := 5;
   end Initialize_Fields;


   procedure Initialize (This : in out LinuxHardware'Class; path : Unbounded_String) is
   begin
      Initialize_Fields (This);
        This.init (path);
   end Initialize;

   function Create (path : Unbounded_String) return LinuxHardware_Access is
      This : constant LinuxHardware_Access := new LinuxHardware;
   begin
      LinuxHardware_Package.Initialize (This.all, path);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out LinuxHardware'Class) is
      cpu : Cpu_Access;
   begin
      Initialize_Fields (This);
        This.init (PCIFILE);
        if (This.componentInterfaceVector.size) < (This.MINHARDWARE) then
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Not Enough Data For A Valid License On Linux")));
        end if;
        cpu := Cpu_Package.Create;
        if (cpu) /= (null) then
            This.cpuInterfaceVector.add (cpu);
            This.componentInterfaceVector.add (cpu);
        end if;
        if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.OS) then
            This.logUtil.putF (To_Unbounded_String ("Hardware Data: ") & This.toString, This'Unchecked_Access, This.commonStrings.CONSTRUCTOR);
        end if;
   end Initialize;

   function Create return LinuxHardware_Access is
      This : constant LinuxHardware_Access := new LinuxHardware;
   begin
      LinuxHardware_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure init (This : in out LinuxHardware; filePath : Unbounded_String) is
      lineNumberReader : LineNumberReader_Access;
   begin
        lineNumberReader := null;
        begin
            This.init (lineNumberReader, filePath);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.OS) then
                This.logUtil.put (To_Unbounded_String ("Hardware Data: ") & This.toString, This'Unchecked_Access, This.commonStrings.CONSTRUCTOR, e);
            end if;
            Java_Throw (e);
                end;
        end;
   end init;

   --  throws Exception
   procedure init (This : in out LinuxHardware; lineNumberReader_Param : LineNumberReader_Access; filePath : Unbounded_String) is
      lineNumberReader : LineNumberReader_Access := lineNumberReader_Param;
      pciFile_Case : FileReader_Access;
      fileVector : BasicArrayList_Access;
      file : AbFile_Access;
      nextLine : Unbounded_String;
      componentData : StringMaker_Access;
      componentType : Unbounded_String;
      componentInterface : HardwareComponentInterface_Access;
   begin
        begin
            This.componentInterfaceVector := BasicArrayListD_Package.Create;
            This.videoInterfaceVector := BasicArrayListD_Package.Create;
            This.hardDriveControllerInterfaceVector := BasicArrayListD_Package.Create;
            This.cpuInterfaceVector := BasicArrayListD_Package.Create;
            This.usbInterfaceVector := BasicArrayListD_Package.Create;
            This.ethernetInterfaceVector := BasicArrayListD_Package.Create;
            This.multimediaInterfaceVector := BasicArrayListD_Package.Create;
            This.fireWireInterfaceVector := BasicArrayListD_Package.Create;
            This.bridgeInterfaceVector := BasicArrayListD_Package.Create;
            This.hardDriveInterfaceVector := BasicArrayListD_Package.Create;
            This.macInterfaceVector := BasicArrayListD_Package.Create;
            This.monitorInterfaceVector := BasicArrayListD_Package.Create;
            pciFile_Case := FileReader_Package.Create (filePath);
            lineNumberReader := LineNumberReader_Package.Create (pciFile_Case);
            if (lineNumberReader) = (null) then
                fileVector := SubDirectory_Package.getInstance.search (filePath, AbFile_Package.createAbFile (FilePathData_Package.getInstance.PATH_START));
                if not (fileVector.isEmpty) then
                    file := AbFile_Access (fileVector.get (0));
                    lineNumberReader := LineNumberReader_Package.Create (FileReader_Package.Create (file.getPath));
                end if;
                if (lineNumberReader) = (null) then
                    Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No Linux File Data")));
                end if;
            end if;
            if (lineNumberReader) /= (null) then
                if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.OS) then
                    This.logUtil.putF (To_Unbounded_String ("PCI File Found"), This'Unchecked_Access, This.commonStrings.CONSTRUCTOR);
                end if;
                nextLine := lineNumberReader.readLine;
                while ((lineNumberReader) /= (null)) and then ((nextLine) /= (Null_Unbounded_String)) loop
                    if This.isNextHardware (nextLine) then
                        exit;
                    end if;
                    nextLine := lineNumberReader.readLine;
                end loop;
                while This.isNextHardware (nextLine) loop
                    componentData := StringMaker_Package.Create;
                    if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.OS) then
                        This.logUtil.putF (To_Unbounded_String ("Found Hardware Device: ") & Java_Image (This.componentInterfaceVector.size), This'Unchecked_Access, This.commonStrings.CONSTRUCTOR);
                    end if;
                    componentData.append (nextLine);
                    componentData.append (CommonSeps_Package.getInstance.NEW_LINE);
                    nextLine := lineNumberReader.readLine;
                    componentType := PCComponentFactory_Package.getInstance.getComponentType (nextLine);
                    while (lineNumberReader) /= (null) loop
                        componentData.append (nextLine);
                        componentData.append (CommonSeps_Package.getInstance.NEW_LINE);
                        nextLine := lineNumberReader.readLine;
                        if ((nextLine) = (Null_Unbounded_String)) or else (This.isNextHardware (nextLine)) then
                            exit;
                        end if;
                    end loop;
                    componentInterface := PCComponentFactory_Package.getInstance.getInstance (componentType, componentData.toString);
                    if (componentInterface) /= (null) then
                        This.componentInterfaceVector.add (componentInterface);
                    end if;
                end loop;
            else
                if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.OS) then
                    This.logUtil.putF (To_Unbounded_String ("Could not load PCI File"), This'Unchecked_Access, This.commonStrings.CONSTRUCTOR);
                end if;
            end if;
            lineNumberReader.close;
        end;
        --  finally
        begin
            if (lineNumberReader) /= (null) then
                lineNumberReader.close;
            end if;
        end;
   end init;

   function getMultimedia (This : in out LinuxHardware; index : Integer) return MediaInterface_Access is
   begin
        return MediaInterface_Access (This.multimediaInterfaceVector.get (index));
   end getMultimedia;

   function getBridge (This : in out LinuxHardware; index : Integer) return BridgeInterface_Access is
   begin
        return BridgeInterface_Access (This.bridgeInterfaceVector.get (index));
   end getBridge;

   function getCpu (This : in out LinuxHardware; index : Integer) return CpuInterface_Access is
   begin
        return CpuInterface_Access (This.cpuInterfaceVector.get (index));
   end getCpu;

   function getEthernet (This : in out LinuxHardware; index : Integer) return EthernetInterface_Access is
   begin
        return EthernetInterface_Access (This.ethernetInterfaceVector.get (index));
   end getEthernet;

   function getFireWire (This : in out LinuxHardware; index : Integer) return FireWireInterface_Access is
   begin
        return FireWireInterface_Access (This.fireWireInterfaceVector.get (index));
   end getFireWire;

   function getHardDriveController (This : in out LinuxHardware; index : Integer) return HardDriveControllerInterface_Access is
   begin
        return HardDriveControllerInterface_Access (This.hardDriveControllerInterfaceVector.get (index));
   end getHardDriveController;

   function getHardDrive (This : in out LinuxHardware; index : Integer) return HardDriveInterface_Access is
   begin
        return HardDriveInterface_Access (This.hardDriveInterfaceVector.get (index));
   end getHardDrive;

   function getMachineAccessControlAddress (This : in out LinuxHardware; index : Integer) return MachineAccessControlAddressInterface_Access is
   begin
        return MachineAccessControlAddressInterface_Access (This.macInterfaceVector.get (index));
   end getMachineAccessControlAddress;

   function getMonitor (This : in out LinuxHardware; index : Integer) return MonitorInterface_Access is
   begin
        return MonitorInterface_Access (This.monitorInterfaceVector.get (index));
   end getMonitor;

   function getUsb (This : in out LinuxHardware; index : Integer) return UsbInterface_Access is
   begin
        return UsbInterface_Access (This.usbInterfaceVector.get (index));
   end getUsb;

   function getVideo (This : in out LinuxHardware; index : Integer) return VideoInterface_Access is
   begin
        return VideoInterface_Access (This.videoInterfaceVector.get (index));
   end getVideo;

   function getComponent (This : in out LinuxHardware; index : Integer) return HardwareComponentInterface_Access is
   begin
        return HardwareComponentInterface_Access (This.componentInterfaceVector.get (index));
   end getComponent;

   function toString (This : in out LinuxHardware) return Unbounded_String is
      hardwareBuffer : StringMaker_Access;
      size : Integer;
      componentInterface : HardwareComponentInterface_Access;
      index : Integer;
   begin
        hardwareBuffer := StringMaker_Package.Create;
        size := This.componentInterfaceVector.size;
        for index in 0 .. (size) - 1 loop
            componentInterface := HardwareComponentInterface_Access (This.componentInterfaceVector.get (index));
            hardwareBuffer.append (To_Unbounded_String ("Component "));
            hardwareBuffer.appendint (index);
            hardwareBuffer.append (To_Unbounded_String (": " & ASCII.LF & ""));
            hardwareBuffer.append (componentInterface.toString);
            hardwareBuffer.append (CommonSeps_Package.getInstance.NEW_LINE);
        end loop;
        return hardwareBuffer.toString;
   end toString;

   function compareTo (This : in out LinuxHardware; hardwareInterface : HardwareInterface_Access) return Boolean is
   begin
        return True;
   end compareTo;

   function difference (This : in out LinuxHardware; hardwareInterface : HardwareInterface_Access) return ABHashtable_Access is
   begin
        return StdUtil_Package.getInstance.NULL_TABLE;
   end difference;

   function isNextHardware (This : in out LinuxHardware; nextLine : Unbounded_String) return Boolean is
      index : Integer;
   begin
        if (nextLine) /= (Null_Unbounded_String) then
            index := (Index (nextLine, To_String (To_Unbounded_String ("Bus"))) - 1);
            if ((index) >= (0)) and then ((index) < (4)) then
                return True;
            end if;
        end if;
        return False;
   end isNextHardware;

   procedure getMultimedia (This : in out LinuxHardware; index : Integer) is
      Java_Result : constant MediaInterface_Access := LinuxHardware'Class (This).getMultimedia (index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getMultimedia;

   procedure getBridge (This : in out LinuxHardware; index : Integer) is
      Java_Result : constant BridgeInterface_Access := LinuxHardware'Class (This).getBridge (index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getBridge;

   procedure getCpu (This : in out LinuxHardware; index : Integer) is
      Java_Result : constant CpuInterface_Access := LinuxHardware'Class (This).getCpu (index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCpu;

   procedure getEthernet (This : in out LinuxHardware; index : Integer) is
      Java_Result : constant EthernetInterface_Access := LinuxHardware'Class (This).getEthernet (index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getEthernet;

   procedure getFireWire (This : in out LinuxHardware; index : Integer) is
      Java_Result : constant FireWireInterface_Access := LinuxHardware'Class (This).getFireWire (index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFireWire;

   procedure getHardDriveController (This : in out LinuxHardware; index : Integer) is
      Java_Result : constant HardDriveControllerInterface_Access := LinuxHardware'Class (This).getHardDriveController (index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getHardDriveController;

   procedure getHardDrive (This : in out LinuxHardware; index : Integer) is
      Java_Result : constant HardDriveInterface_Access := LinuxHardware'Class (This).getHardDrive (index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getHardDrive;

   procedure getMachineAccessControlAddress (This : in out LinuxHardware; index : Integer) is
      Java_Result : constant MachineAccessControlAddressInterface_Access := LinuxHardware'Class (This).getMachineAccessControlAddress (index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getMachineAccessControlAddress;

   procedure getMonitor (This : in out LinuxHardware; index : Integer) is
      Java_Result : constant MonitorInterface_Access := LinuxHardware'Class (This).getMonitor (index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getMonitor;

   procedure getUsb (This : in out LinuxHardware; index : Integer) is
      Java_Result : constant UsbInterface_Access := LinuxHardware'Class (This).getUsb (index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getUsb;

   procedure getVideo (This : in out LinuxHardware; index : Integer) is
      Java_Result : constant VideoInterface_Access := LinuxHardware'Class (This).getVideo (index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getVideo;

   procedure getComponent (This : in out LinuxHardware; index : Integer) is
      Java_Result : constant HardwareComponentInterface_Access := LinuxHardware'Class (This).getComponent (index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getComponent;

   procedure compareTo (This : in out LinuxHardware; hardwareInterface : HardwareInterface_Access) is
      Java_Result : constant Boolean := LinuxHardware'Class (This).compareTo (hardwareInterface);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end compareTo;

   procedure difference (This : in out LinuxHardware; hardwareInterface : HardwareInterface_Access) is
      Java_Result : constant ABHashtable_Access := LinuxHardware'Class (This).difference (hardwareInterface);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end difference;

   procedure isNextHardware (This : in out LinuxHardware; nextLine : Unbounded_String) is
      Java_Result : constant Boolean := LinuxHardware'Class (This).isNextHardware (nextLine);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isNextHardware;

begin
   null;
   PCIFILE := To_Unbounded_String ("/proc/pci");

end org.allbinary.logic.system.hardware.linux.LinuxHardware_Package;


