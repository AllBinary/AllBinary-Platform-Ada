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


package body org.allbinary.logic.system.hardware.components.linux.Cpu_Package is

   procedure Initialize_Fields (This : in out Cpu'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.CPUFILE := To_Unbounded_String ("/proc/cpuinfo");
      This.cpuHashMap := null;
   end Initialize_Fields;


   procedure Initialize (This : in out Cpu'Class; filePath : Unbounded_String) is
   begin
      Initialize_Fields (This);
        This.init (filePath);
   end Initialize;

   function Create (filePath : Unbounded_String) return Cpu_Access is
      This : constant Cpu_Access := new Cpu;
   begin
      Initialize (This.all, filePath);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out Cpu'Class) is
   begin
      Initialize_Fields (This);
        This.init (This.CPUFILE);
   end Initialize;

   function Create return Cpu_Access is
      This : constant Cpu_Access := new Cpu;
   begin
      Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure init (This : in out Cpu; filePath : Unbounded_String) is
      lineNumberReader : LineNumberReader_Access;
   begin
        lineNumberReader := null;
        begin
            This.init (lineNumberReader, filePath);
        exception
            when e : others =>
            if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.OS) then
                This.logUtil.put (StringMaker_Package.Create.append (To_Unbounded_String ("Cpu Data: ")).append (This.toString).toString, This'Unchecked_Access, This.commonStrings.CONSTRUCTOR, e);
            end if;
            Java_Throw (e);
        end;
   end init;

   --  throws Exception
   procedure init (This : in out Cpu; lineNumberReader : LineNumberReader_Access; filePath : Unbounded_String) is
      fileReader : FileReader_Access;
      fileVector : BasicArrayList_Access;
      file : AbFile_Access;
      nextLine : Unbounded_String;
      index : Integer;
      key : Unbounded_String;
      valueIndex : Integer;
      value : Unbounded_String;
   begin
        begin
            fileReader := FileReader_Package.Create (filePath);
            lineNumberReader := LineNumberReader_Package.Create (fileReader);
            This.cpuHashMap := StdUtil_Package.getInstance.createHashMap;
            if (lineNumberReader) = (null) then
                fileVector := SubDirectory_Package.getInstance.search (filePath, AbFile_Package.createAbFile (FilePathData_Package.getInstance.PATH_START));
                if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.OS) then
                    This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("Cpu File BasicArrayList Size: ")).appendint (fileVector.size).toString, This'Unchecked_Access, This.commonStrings.CONSTRUCTOR);
                end if;
                if not (fileVector.isEmpty) then
                    file := AbFile_Access (fileVector.get (0));
                    lineNumberReader := LineNumberReader_Package.Create (FileReader_Package.Create (file.getPath));
                end if;
            end if;
            if (lineNumberReader) /= (null) then
                nextLine := lineNumberReader.readLine;
                while ((lineNumberReader) /= (null)) and then ((nextLine) /= (Null_Unbounded_String)) loop
                    index := (Index (nextLine, To_String (':')) - 1);
                    if (index) >= (0) then
                        key := Unbounded_Slice (nextLine, (0) + 1, index);
                        valueIndex := (index) + (1);
                        value := Unbounded_Slice (nextLine, (valueIndex) + 1, Length (nextLine));
                        if ((Index (key, To_String (CpuInfo_Package.PROCESSOR.toString)) - 1)) >= (0) then
                            This.cpuHashMap.put (CpuInfo_Package.PROCESSOR, value);
                        end if;
                        if ((Index (key, To_String (CpuInfo_Package.VENDORID.toString)) - 1)) >= (0) then
                            This.cpuHashMap.put (CpuInfo_Package.VENDORID, value);
                        end if;
                        if ((Index (key, To_String (CpuInfo_Package.CPUFAMILY.toString)) - 1)) >= (0) then
                            This.cpuHashMap.put (CpuInfo_Package.CPUFAMILY, value);
                        end if;
                        if ((Index (key, To_String (CpuInfo_Package.MODEL.toString)) - 1)) >= (0) then
                            This.cpuHashMap.put (CpuInfo_Package.MODEL, value);
                        end if;
                        if ((Index (key, To_String (CpuInfo_Package.MODELNAME.toString)) - 1)) >= (0) then
                            This.cpuHashMap.put (CpuInfo_Package.MODELNAME, value);
                        end if;
                        if ((Index (key, To_String (CpuInfo_Package.STEPPING.toString)) - 1)) >= (0) then
                            This.cpuHashMap.put (CpuInfo_Package.STEPPING, value);
                        end if;
                        if ((Index (key, To_String (CpuInfo_Package.CPUMHZ.toString)) - 1)) >= (0) then
                            This.cpuHashMap.put (CpuInfo_Package.CPUMHZ, value);
                        end if;
                        if ((Index (key, To_String (CpuInfo_Package.CACHESIZE.toString)) - 1)) >= (0) then
                            This.cpuHashMap.put (CpuInfo_Package.CACHESIZE, value);
                        end if;
                    end if;
                    nextLine := lineNumberReader.readLine;
                end loop;
            end if;
        end;
        --  finally
        begin
            if (lineNumberReader) /= (null) then
                lineNumberReader.close;
            end if;
        end;
   end init;

   function getProcessor (This : in out Cpu) return Unbounded_String is
   begin
        return Unbounded_String (This.cpuHashMap.get (CpuInfo_Package.PROCESSOR));
   end getProcessor;

   function getVendorId (This : in out Cpu) return Unbounded_String is
   begin
        return Unbounded_String (This.cpuHashMap.get (CpuInfo_Package.VENDORID));
   end getVendorId;

   function getCpuFamily (This : in out Cpu) return Unbounded_String is
   begin
        return Unbounded_String (This.cpuHashMap.get (CpuInfo_Package.CPUFAMILY));
   end getCpuFamily;

   function getModel (This : in out Cpu) return Unbounded_String is
   begin
        return Unbounded_String (This.cpuHashMap.get (CpuInfo_Package.MODEL));
   end getModel;

   function getModelName (This : in out Cpu) return Unbounded_String is
   begin
        return Unbounded_String (This.cpuHashMap.get (CpuInfo_Package.MODELNAME));
   end getModelName;

   function getStepping (This : in out Cpu) return Unbounded_String is
   begin
        return Unbounded_String (This.cpuHashMap.get (CpuInfo_Package.STEPPING));
   end getStepping;

   function getCpuSpeed (This : in out Cpu) return Unbounded_String is
   begin
        return Unbounded_String (This.cpuHashMap.get (CpuInfo_Package.CPUMHZ));
   end getCpuSpeed;

   function getCacheSize (This : in out Cpu) return Unbounded_String is
   begin
        return Unbounded_String (This.cpuHashMap.get (CpuInfo_Package.CACHESIZE));
   end getCacheSize;

   function compareTo (This : in out Cpu; cpuInterface : CpuInterface_Access) return Boolean is
   begin
        return True;
   end compareTo;

   function compareTo (This : in out Cpu; componentInterface : HardwareComponentInterface_Access) return Boolean is
   begin
        return True;
   end compareTo;

   function toString (This : in out Cpu) return Unbounded_String is
      commonLabels : CommonLabels_Access;
      commonSeps : CommonSeps_Access;
      stringMaker : StringMaker_Access;
   begin
        commonLabels := CommonLabels_Package.getInstance;
        commonSeps := CommonSeps_Package.getInstance;
        stringMaker := StringMaker_Package.Create;
        stringMaker.append (CpuInfo_Package.PROCESSOR.toString).append (commonLabels.COLON_SEP).append (This.getProcessor);
        stringMaker.append (commonSeps.NEW_LINE);
        stringMaker.append (CpuInfo_Package.VENDORID.toString).append (commonLabels.COLON_SEP).append (This.getVendorId);
        stringMaker.append (commonSeps.NEW_LINE);
        stringMaker.append (CpuInfo_Package.CPUFAMILY.toString).append (commonLabels.COLON_SEP).append (This.getCpuFamily);
        stringMaker.append (commonSeps.NEW_LINE);
        stringMaker.append (CpuInfo_Package.MODEL.toString).append (commonLabels.COLON_SEP).append (This.getModel);
        stringMaker.append (commonSeps.NEW_LINE);
        stringMaker.append (CpuInfo_Package.MODELNAME.toString).append (commonLabels.COLON_SEP).append (This.getModelName);
        stringMaker.append (commonSeps.NEW_LINE);
        stringMaker.append (CpuInfo_Package.STEPPING.toString).append (commonLabels.COLON_SEP).append (This.getStepping);
        stringMaker.append (commonSeps.NEW_LINE);
        stringMaker.append (CpuInfo_Package.CPUMHZ.toString).append (commonLabels.COLON_SEP).append (This.getCpuSpeed);
        stringMaker.append (commonSeps.NEW_LINE);
        stringMaker.append (CpuInfo_Package.CACHESIZE.toString).append (commonLabels.COLON_SEP).append (This.getCacheSize);
        return stringMaker.toString;
   end toString;

   procedure getProcessor (This : in out Cpu) is
      Java_Result : constant Unbounded_String := Cpu'Class (This).getProcessor;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getProcessor;

   procedure getVendorId (This : in out Cpu) is
      Java_Result : constant Unbounded_String := Cpu'Class (This).getVendorId;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getVendorId;

   procedure getCpuFamily (This : in out Cpu) is
      Java_Result : constant Unbounded_String := Cpu'Class (This).getCpuFamily;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCpuFamily;

   procedure getModel (This : in out Cpu) is
      Java_Result : constant Unbounded_String := Cpu'Class (This).getModel;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getModel;

   procedure getModelName (This : in out Cpu) is
      Java_Result : constant Unbounded_String := Cpu'Class (This).getModelName;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getModelName;

   procedure getStepping (This : in out Cpu) is
      Java_Result : constant Unbounded_String := Cpu'Class (This).getStepping;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getStepping;

   procedure getCpuSpeed (This : in out Cpu) is
      Java_Result : constant Unbounded_String := Cpu'Class (This).getCpuSpeed;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCpuSpeed;

   procedure getCacheSize (This : in out Cpu) is
      Java_Result : constant Unbounded_String := Cpu'Class (This).getCacheSize;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCacheSize;

   procedure compareTo (This : in out Cpu; cpuInterface : CpuInterface_Access) is
      Java_Result : constant Boolean := Cpu'Class (This).compareTo (cpuInterface);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end compareTo;

   procedure compareTo (This : in out Cpu; componentInterface : HardwareComponentInterface_Access) is
      Java_Result : constant Boolean := Cpu'Class (This).compareTo (componentInterface);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end compareTo;

   procedure toString (This : in out Cpu) is
      Java_Result : constant Unbounded_String := Cpu'Class (This).toString;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toString;

end org.allbinary.logic.system.hardware.components.linux.Cpu_Package;


