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
        Cpu'Class (This).init (filePath);
   end Initialize;

   function Create (filePath : Unbounded_String) return Cpu_Access is
      This : constant Cpu_Access := new Cpu;
   begin
      Cpu_Package.Initialize (This.all, filePath);
      return This;
   end Create;

   procedure Initialize (This : in out Cpu'Class) is
   begin
      Initialize_Fields (This);
        Cpu'Class (This).init (This.CPUFILE);
   end Initialize;

   function Create return Cpu_Access is
      This : constant Cpu_Access := new Cpu;
   begin
      Cpu_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure init (This : in out Cpu; filePath : Unbounded_String) is
      lineNumberReader : LineNumberReader_Access;
   begin
        lineNumberReader := null;
        begin
            Cpu'Class (This).init (lineNumberReader, filePath);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.OS) then
                This.logUtil.put (StringMaker_Package.Create.append (To_Unbounded_String ("Cpu Data: ")).append (Cpu'Class (This).toString).toString, Cpu_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR, e);
            end if;
            Java_Throw (e);
                end;
        end;
   end init;

   --  throws Exception
   procedure init (This : in out Cpu; lineNumberReader_Param : access LineNumberReader_Package.LineNumberReader'Class; filePath : Unbounded_String) is
      lineNumberReader : LineNumberReader_Access := LineNumberReader_Access (lineNumberReader_Param);
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
                    This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("Cpu File BasicArrayList Size: ")).appendint (fileVector.size).toString, Cpu_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
                end if;
                if not (fileVector.isEmpty) then
                    file := AbFile_Access (fileVector.get (0));
                    lineNumberReader := LineNumberReader_Package.Create (FileReader_Package.Create (file.getPath));
                end if;
            end if;
            if (lineNumberReader) /= (null) then
                nextLine := lineNumberReader.readLine;
                while ((lineNumberReader) /= (null)) and then ((nextLine) /= (Null_Unbounded_String)) loop
                    index := (Index (nextLine, Java_Image (':')) - 1);
                    if (index) >= (0) then
                        key := Unbounded_Slice (nextLine, (0) + 1, index);
                        valueIndex := (index) + (1);
                        value := Unbounded_Slice (nextLine, (valueIndex) + 1, Length (nextLine));
                        if ((Index (key, Java_Image (CpuInfo_Package.PROCESSOR.toString)) - 1)) >= (0) then
                            This.cpuHashMap.put (CpuInfo_Package.PROCESSOR, Java_Box (value));
                        end if;
                        if ((Index (key, Java_Image (CpuInfo_Package.VENDORID.toString)) - 1)) >= (0) then
                            This.cpuHashMap.put (CpuInfo_Package.VENDORID, Java_Box (value));
                        end if;
                        if ((Index (key, Java_Image (CpuInfo_Package.CPUFAMILY.toString)) - 1)) >= (0) then
                            This.cpuHashMap.put (CpuInfo_Package.CPUFAMILY, Java_Box (value));
                        end if;
                        if ((Index (key, Java_Image (CpuInfo_Package.MODEL.toString)) - 1)) >= (0) then
                            This.cpuHashMap.put (CpuInfo_Package.MODEL, Java_Box (value));
                        end if;
                        if ((Index (key, Java_Image (CpuInfo_Package.MODELNAME.toString)) - 1)) >= (0) then
                            This.cpuHashMap.put (CpuInfo_Package.MODELNAME, Java_Box (value));
                        end if;
                        if ((Index (key, Java_Image (CpuInfo_Package.STEPPING.toString)) - 1)) >= (0) then
                            This.cpuHashMap.put (CpuInfo_Package.STEPPING, Java_Box (value));
                        end if;
                        if ((Index (key, Java_Image (CpuInfo_Package.CPUMHZ.toString)) - 1)) >= (0) then
                            This.cpuHashMap.put (CpuInfo_Package.CPUMHZ, Java_Box (value));
                        end if;
                        if ((Index (key, Java_Image (CpuInfo_Package.CACHESIZE.toString)) - 1)) >= (0) then
                            This.cpuHashMap.put (CpuInfo_Package.CACHESIZE, Java_Box (value));
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
        return Java_Unbox (This.cpuHashMap.get (CpuInfo_Package.PROCESSOR));
   end getProcessor;

   function getVendorId (This : in out Cpu) return Unbounded_String is
   begin
        return Java_Unbox (This.cpuHashMap.get (CpuInfo_Package.VENDORID));
   end getVendorId;

   function getCpuFamily (This : in out Cpu) return Unbounded_String is
   begin
        return Java_Unbox (This.cpuHashMap.get (CpuInfo_Package.CPUFAMILY));
   end getCpuFamily;

   function getModel (This : in out Cpu) return Unbounded_String is
   begin
        return Java_Unbox (This.cpuHashMap.get (CpuInfo_Package.MODEL));
   end getModel;

   function getModelName (This : in out Cpu) return Unbounded_String is
   begin
        return Java_Unbox (This.cpuHashMap.get (CpuInfo_Package.MODELNAME));
   end getModelName;

   function getStepping (This : in out Cpu) return Unbounded_String is
   begin
        return Java_Unbox (This.cpuHashMap.get (CpuInfo_Package.STEPPING));
   end getStepping;

   function getCpuSpeed (This : in out Cpu) return Unbounded_String is
   begin
        return Java_Unbox (This.cpuHashMap.get (CpuInfo_Package.CPUMHZ));
   end getCpuSpeed;

   function getCacheSize (This : in out Cpu) return Unbounded_String is
   begin
        return Java_Unbox (This.cpuHashMap.get (CpuInfo_Package.CACHESIZE));
   end getCacheSize;

   function compareTo (This : in out Cpu; cpuInterface_Param : access CpuInterface_Package.CpuInterface'Class) return Boolean is
      cpuInterface : constant CpuInterface_Access := CpuInterface_Access (cpuInterface_Param);
   begin
        return True;
   end compareTo;

   function compareTo (This : in out Cpu; componentInterface_Param : access HardwareComponentInterface_Package.HardwareComponentInterface'Class) return Boolean is
      componentInterface : constant HardwareComponentInterface_Access := HardwareComponentInterface_Access (componentInterface_Param);
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
        stringMaker.append (CpuInfo_Package.PROCESSOR.toString).append (commonLabels.COLON_SEP).append (Cpu'Class (This).getProcessor);
        stringMaker.append (commonSeps.NEW_LINE);
        stringMaker.append (CpuInfo_Package.VENDORID.toString).append (commonLabels.COLON_SEP).append (Cpu'Class (This).getVendorId);
        stringMaker.append (commonSeps.NEW_LINE);
        stringMaker.append (CpuInfo_Package.CPUFAMILY.toString).append (commonLabels.COLON_SEP).append (Cpu'Class (This).getCpuFamily);
        stringMaker.append (commonSeps.NEW_LINE);
        stringMaker.append (CpuInfo_Package.MODEL.toString).append (commonLabels.COLON_SEP).append (Cpu'Class (This).getModel);
        stringMaker.append (commonSeps.NEW_LINE);
        stringMaker.append (CpuInfo_Package.MODELNAME.toString).append (commonLabels.COLON_SEP).append (Cpu'Class (This).getModelName);
        stringMaker.append (commonSeps.NEW_LINE);
        stringMaker.append (CpuInfo_Package.STEPPING.toString).append (commonLabels.COLON_SEP).append (Cpu'Class (This).getStepping);
        stringMaker.append (commonSeps.NEW_LINE);
        stringMaker.append (CpuInfo_Package.CPUMHZ.toString).append (commonLabels.COLON_SEP).append (Cpu'Class (This).getCpuSpeed);
        stringMaker.append (commonSeps.NEW_LINE);
        stringMaker.append (CpuInfo_Package.CACHESIZE.toString).append (commonLabels.COLON_SEP).append (Cpu'Class (This).getCacheSize);
        return stringMaker.toString;
   end toString;

   procedure compareTo (This : in out Cpu; cpuInterface_Param : access CpuInterface_Package.CpuInterface'Class) is
      Java_Result : constant Boolean := Cpu'Class (This).compareTo (cpuInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end compareTo;

   procedure compareTo (This : in out Cpu; componentInterface_Param : access HardwareComponentInterface_Package.HardwareComponentInterface'Class) is
      Java_Result : constant Boolean := Cpu'Class (This).compareTo (componentInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end compareTo;

end org.allbinary.logic.system.hardware.components.linux.Cpu_Package;


