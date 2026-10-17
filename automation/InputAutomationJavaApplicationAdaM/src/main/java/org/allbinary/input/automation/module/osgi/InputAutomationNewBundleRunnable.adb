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


package body org.allbinary.input.automation.module.osgi.InputAutomationNewBundleRunnable_Package is

   procedure Initialize_Fields (This : in out InputAutomationNewBundleRunnable'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      
      This.running := False;
      
   end Initialize_Fields;


   procedure Initialize (This : in out InputAutomationNewBundleRunnable'Class; inputAutomationBundleActivator_Param : access InputAutomationBundleActivator'Class) is
      inputAutomationBundleActivator : InputAutomationBundleActivator_Access := InputAutomationBundleActivator_Access (inputAutomationBundleActivator_Param);
   begin
      Initialize_Fields (This);
        This.inputAutomationBundleActivator := inputAutomationBundleActivator;
        This.fileBasicArrayList := BasicArrayListD_Package.Create;
   end Initialize;

   function Create (inputAutomationBundleActivator_Param : access InputAutomationBundleActivator'Class) return InputAutomationNewBundleRunnable_Access is
      This : constant InputAutomationNewBundleRunnable_Access := new InputAutomationNewBundleRunnable;
   begin
      InputAutomationNewBundleRunnable_Package.Initialize (This.all, inputAutomationBundleActivator_Param);
      return This;
   end Create;

   --  throws Exception
   procedure setThread (This : in out InputAutomationNewBundleRunnable; thread_Param : access Thread'Class) is
      thread : Thread_Access := Thread_Access (thread_Param);
   begin
        null;
   end setThread;

   function isRunning (This : in out InputAutomationNewBundleRunnable) return Boolean is
   begin
        return This.running;
   end isRunning;

   procedure setRunning (This : in out InputAutomationNewBundleRunnable; running : Boolean) is
   begin
        This.running := running;
   end setRunning;

   --  throws Exception
   procedure updateModules (This : in out InputAutomationNewBundleRunnable) is
      list : BasicArrayList_Access;
      size : Integer;
      bundle : Bundle_Access;
      index : Integer;
   begin
        This.logUtil.putF (This.commonStrings.START, InputAutomationNewBundleRunnable_Access'(This'Unchecked_Access), To_Unbounded_String ("updateModules"));
        list := This.findNewModules;
        size := list.size;
        bundle := null;
        for index in 0 .. (size) - 1 loop
            bundle := This.install (URL_Access (list.get (index)));
            if (bundle) /= (null) then
                bundle.start (InputAutomationNewBundleRunnable_Package.MODULES_START_LEVEL);
            end if;
        end loop;
   end updateModules;

   --  throws Exception
   function getAllJarSymbolicNameHashMap (This : in out InputAutomationNewBundleRunnable) return HashMap_Access is
      hashMap : HashMap_Access;
      jarFileBasicArrayList : BasicArrayList_Access;
      size : Integer;
      file_Case : File_Access;
      fileInputStream : FileInputStream_Access;
      jarInputStream : JarInputStream_Access;
      manifest : Manifest_Access;
      symbolicName : Unbounded_String;
      index : Integer;
   begin
        This.logUtil.putF (This.commonStrings.START, InputAutomationNewBundleRunnable_Access'(This'Unchecked_Access), To_Unbounded_String ("getAllJarSymbolicNameHashMap"));
        hashMap := StdUtil_Package.getInstance.createHashMap;
        jarFileBasicArrayList := This.getJarModuleFileBasicArrayList;
        This.logUtil.putF (To_Unbounded_String ("Jar Module Files: ") & Java_Image (jarFileBasicArrayList), InputAutomationNewBundleRunnable_Access'(This'Unchecked_Access), To_Unbounded_String ("getAllJarSymbolicNameHashMap"));
        size := jarFileBasicArrayList.size;
        file_Case := null;
        for index in 0 .. (size) - 1 loop
            file_Case := File_Access (jarFileBasicArrayList.get (index));
            if not (file_Case.isDirectory) then
                fileInputStream := FileInputStream_Package.Create (file_Case);
                jarInputStream := JarInputStream_Package.Create (fileInputStream);
                manifest := jarInputStream.getManifest;
                if (manifest) = (null) then
                    null;
                else
                    symbolicName := manifest.getMainAttributes.getValue (Constants_Package.BUNDLE_SYMBOLICNAME);
                    if (symbolicName) /= (Null_Unbounded_String) then
                        hashMap.put (symbolicName, URL_Package.Create ((InputAutomationNewBundleRunnable_Package.FILE) + (file_Case.getAbsolutePath)));
                    end if;
                end if;
            end if;
        end loop;
        return hashMap;
   end getAllJarSymbolicNameHashMap;

   function getJarModuleFileBasicArrayList (This : in out InputAutomationNewBundleRunnable) return BasicArrayList_Access is
      baseJarPath : Unbounded_String;
      jarFileFilter : FileFilter_Access;
      path : Unbounded_String;
      file_Case : File_Access;
   begin
        This.logUtil.putF (This.commonStrings.START, InputAutomationNewBundleRunnable_Access'(This'Unchecked_Access), To_Unbounded_String ("getJarModuleFileBasicArrayList"));
        baseJarPath := Java_Get_Property (JAR_DIR_PROP);
        if baseJarPath.startsWith (InputAutomationNewBundleRunnable_Package.FILE) then
            baseJarPath := Unbounded_Slice (baseJarPath, (InputAutomationNewBundleRunnable_Package.FILE.length) + 1, Length (baseJarPath));
        end if;
        jarFileFilter := BasicFileFilterUtil_Package.getInstance (To_Unbounded_String (".jar"));
        path := baseJarPath & Java_Image (InputAutomationNewBundleRunnable_Package.INPUT_AUTMATION_MODULE_BUNDLE_JAR_PATH);
        This.logUtil.putF (To_Unbounded_String ("Path: ") & path, InputAutomationNewBundleRunnable_Access'(This'Unchecked_Access), To_Unbounded_String ("getJarModuleFileBasicArrayList"));
        file_Case := File_Package.Create (path);
        This.logUtil.putF (To_Unbounded_String ("File: ") & Java_Image (file_Case.getAbsolutePath) & To_Unbounded_String (" isDirectory: ") & Java_Image (file_Case.isDirectory), InputAutomationNewBundleRunnable_Access'(This'Unchecked_Access), To_Unbounded_String ("getJarModuleFileBasicArrayList"));
        return SubDirectory_Package.getInstance.search (jarFileFilter, FileWrapperUtil_Package.wrapFile (file_Case));
   end getJarModuleFileBasicArrayList;

   --  throws Exception
   function getInstalledJarSymbolicNameBasicArrayList (This : in out InputAutomationNewBundleRunnable) return BasicArrayList_Access is
      vector : BasicArrayList_Access;
      bundleContext : BundleContext_Access;
      bundleArray : Bundle_Access_Array_Access;
      bundle : Bundle_Access;
      index : Integer;
   begin
        This.logUtil.putF (This.commonStrings.START, InputAutomationNewBundleRunnable_Access'(This'Unchecked_Access), To_Unbounded_String ("getInstalledJarSymbolicNameBasicArrayList"));
        vector := BasicArrayListD_Package.Create;
        bundleContext := InputAutomationBundleActivator_Package.getBundleContext;
        bundleArray := bundleContext.getBundles;
        if (bundleArray) /= (null) then
            This.logUtil.putF (To_Unbounded_String ("bundleArray: ") & Java_Image (bundleArray'Length), InputAutomationNewBundleRunnable_Access'(This'Unchecked_Access), To_Unbounded_String ("getInputAutomationModuleServices"));
            for index in 0 .. (bundleArray'Length) - 1 loop
                bundle := bundleArray (index);
                vector.add (bundle.getSymbolicName);
            end loop;
        end if;
        return vector;
   end getInstalledJarSymbolicNameBasicArrayList;

   --  throws Exception
   function isInstalled (This : in out InputAutomationNewBundleRunnable; symbolicName : Unbounded_String) return Boolean is
      list : BasicArrayList_Access;
      size : Integer;
      nextSymbolicName : Unbounded_String;
      index : Integer;
   begin
        This.logUtil.putF (Java_Image (CommonLabels_Package.getInstance.START) & symbolicName, InputAutomationNewBundleRunnable_Access'(This'Unchecked_Access), To_Unbounded_String ("isInstalled"));
        list := This.getInstalledJarSymbolicNameBasicArrayList;
        size := list.size;
        nextSymbolicName := Null_Unbounded_String;
        for index in 0 .. (size) - 1 loop
            nextSymbolicName := Unbounded_String (list.get (index));
            if (nextSymbolicName.compareTo (symbolicName)) = (0) then
                return True;
            end if;
        end loop;
        return False;
   end isInstalled;

   --  throws Exception
   function findNewModules (This : in out InputAutomationNewBundleRunnable) return BasicArrayList_Access is
      vector : BasicArrayList_Access;
      hashMap : HashMap_Access;
      set : Set_Access;
      symbolicNameArray : Java_Object_Access_Array_Access;
      size : Integer;
      symbolicName : Unbounded_String;
      index : Integer;
   begin
        This.logUtil.putF (This.commonStrings.START, InputAutomationNewBundleRunnable_Access'(This'Unchecked_Access), To_Unbounded_String ("findNewModules"));
        vector := BasicArrayListD_Package.Create;
        hashMap := This.getAllJarSymbolicNameHashMap;
        This.logUtil.putF (To_Unbounded_String ("All: ") & Java_Image (hashMap), InputAutomationNewBundleRunnable_Access'(This'Unchecked_Access), To_Unbounded_String ("findNewModules"));
        set := hashMap.keySet;
        symbolicNameArray := set.toArray;
        size := symbolicNameArray'Length;
        for index in 0 .. (size) - 1 loop
            symbolicName := Unbounded_String (symbolicNameArray (index));
            if not (This.isInstalled (symbolicName)) then
                vector.add (hashMap.get (symbolicName));
            end if;
        end loop;
        return vector;
   end findNewModules;

   --  throws Exception
   function install (This : in out InputAutomationNewBundleRunnable; url_Param : access URL'Class) return Bundle_Access is
      url : URL_Access := URL_Access (url_Param);
      bundleContext : BundleContext_Access;
   begin
        This.logUtil.putF ((CommonLabels_Package.getInstance.START) + (url), InputAutomationNewBundleRunnable_Access'(This'Unchecked_Access), To_Unbounded_String ("install"));
        bundleContext := InputAutomationBundleActivator_Package.getBundleContext;
        return bundleContext.installBundle (url.toString);
   end install;

   procedure run (This : in out InputAutomationNewBundleRunnable) is
      timeHelper : TimeDelayHelper_Access;
   begin
        begin
            This.logUtil.putF (This.commonStrings.START, InputAutomationNewBundleRunnable_Access'(This'Unchecked_Access), This.commonStrings.RUN);
            This.setRunning (True);
            timeHelper := TimeDelayHelper_Package.Create (1000);
            while This.isRunning loop
                timeHelper.setStartTimeTNT;
                This.logUtil.putF ((CommonLabels_Package.getInstance.ELAPSED) + (timeHelper.getElapsedTNT), InputAutomationNewBundleRunnable_Access'(This'Unchecked_Access), This.commonStrings.RUN);
                This.updateModules;
                exit;
            end loop;
            This.logUtil.putF (This.commonStrings.END_Id, InputAutomationNewBundleRunnable_Access'(This'Unchecked_Access), This.commonStrings.RUN);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, InputAutomationNewBundleRunnable_Access'(This'Unchecked_Access), This.commonStrings.RUN, e);
                end;
        end;
   end run;

   procedure isInstalled (This : in out InputAutomationNewBundleRunnable; symbolicName : Unbounded_String) is
      Java_Result : constant Boolean := InputAutomationNewBundleRunnable'Class (This).isInstalled (symbolicName);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isInstalled;

   procedure install (This : in out InputAutomationNewBundleRunnable; url_Param : access URL'Class) is
      Java_Result : constant Bundle_Access := InputAutomationNewBundleRunnable'Class (This).install (url_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end install;

begin
   null;
   FILE := To_Unbounded_String ("file:");
   JAR_DIR_PROP := To_Unbounded_String ("org.knopflerfish.gosg.jars");
   INPUT_AUTMATION_MODULE_BUNDLE_JAR_PATH := To_Unbounded_String ("ia/auto");
   MODULES_START_LEVEL := 8;

end org.allbinary.input.automation.module.osgi.InputAutomationNewBundleRunnable_Package;


