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


package body org.allbinary.logic.visual.transform.info.objectConfig.generator.StoreFileGenerator_Package is

   procedure Initialize_Fields (This : in out StoreFileGenerator'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out StoreFileGenerator'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
      httpTransformInfoInterface : TransformInfoHttpInterface_Access;
      weblisketSession : WeblisketSession_Access;
      stringBuffer : StringMaker_Access;
      abPath : AbPath_Access;
      fileName : Unbounded_String;
      stringValidationUtil : StringValidationUtil_Access;
      transformInfoHttpStoreInterface : TransformInfoHttpStoreInterface_Access;
      outputMappingHashMap : HashMap_Access;
      replace : Replace_Access;
      tempOutput : Unbounded_String;
   begin
      TransformInfoObjectConfigGenerator_Package.Initialize (This);
      Initialize_Fields (This);
        httpTransformInfoInterface := TransformInfoHttpInterface_Access (transformInfoInterface);
        weblisketSession := WeblisketSession_Package.Create (httpTransformInfoInterface.getPropertiesHashMap, httpTransformInfoInterface.getPageContext);
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (URLGLOBALS.getWebappPath);
        stringBuffer.append (weblisketSession.getStoreName);
        stringBuffer.append (AbPathData_Package.getInstance.SEPARATOR);
        abPath := AbPath_Package.Create (stringBuffer.toString, StringUtil_Package.getInstance.EMPTY_STRING);
        fileName := Unbounded_String (httpTransformInfoInterface.getPropertiesHashMap.get (InputOutputTypeData_Package.getInstance.FILE));
        stringValidationUtil := StringValidationUtil_Package.getInstance;
        if stringValidationUtil.isEmpty (fileName) then
            transformInfoHttpStoreInterface := TransformInfoHttpStoreInterface_Access (transformInfoInterface);
            fileName := transformInfoInterface.getName.substring ((transformInfoHttpStoreInterface.getStoreName.length) + (1));
            outputMappingHashMap := StdUtil_Package.getInstance.createHashMap;
            outputMappingHashMap.put (TransformInfosData_Package.getInstance.PREVIEW, To_Unbounded_String ("Preview"));
            outputMappingHashMap.put (TransformInfosData_Package.getInstance.SMALL_PREVIEW, To_Unbounded_String ("SmallPreview"));
            outputMappingHashMap.put (CommonSeps_Package.getInstance.SPACE, StringUtil_Package.getInstance.EMPTY_STRING);
            replace := Replace_Package.Create (outputMappingHashMap);
            fileName := replace.all_Id (fileName);
        end if;
        if stringValidationUtil.isEmpty (fileName) then
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("TransformInfoObjectConfigGenerator FileName Not Specified")));
        end if;
        tempOutput := Unbounded_String (httpTransformInfoInterface.getPropertiesHashMap.get (InputOutputTypeData_Package.getInstance.NAME));
        if stringValidationUtil.isEmpty (tempOutput) then
            tempOutput := InputOutputTypeData_Package.getInstance.DEFAULT;
        end if;
        This.output := tempOutput;
        if stringValidationUtil.isEmpty (This.output) then
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("TransformInfoObjectConfigGenerator Output=extension Not Specified")));
        end if;
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (fileName);
        stringBuffer.append (AbPathData_Package.getInstance.EXTENSION_SEP);
        stringBuffer.append (This.output);
        abPath := AbPath_Package.Create (abPath.toString, stringBuffer.toString);
        This.fileAbPath := abPath;
        This.file := AbFile_Package.createAbFileFromAbPath (This.fileAbPath);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (To_Unbounded_String ("File: ") & This.fileAbPath.toString, StoreFileGenerator_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
        end if;
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return StoreFileGenerator_Access is
      This : constant StoreFileGenerator_Access := new StoreFileGenerator;
   begin
      StoreFileGenerator_Package.Initialize (This.all, transformInfoInterface_Param);
      return This;
   end Create;

   --  throws Exception
   function process (This : in out StoreFileGenerator; input : Unbounded_String) return Unbounded_String is
      inputStream : InputStream_Access;
   begin
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (To_Unbounded_String ("Processing"), StoreFileGenerator_Access'(This'Unchecked_Access), This.commonStrings.PROCESS);
        end if;
        if not (This.file.exists) then
            This.file.createNewFile;
        end if;
        if This.file.exists then
            inputStream := ByteArrayInputStream_Package.Create (input.getBytes);
            FileUtil_Package.getInstance.write (inputStream, This.file);
        else
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Could Not Create: ") & This.fileAbPath.toString));
        end if;
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (To_Unbounded_String ("Processed"), StoreFileGenerator_Access'(This'Unchecked_Access), This.commonStrings.PROCESS);
        end if;
        return StringUtil_Package.getInstance.EMPTY_STRING;
   end process;

   procedure process (This : in out StoreFileGenerator; input : Unbounded_String) is
      Java_Result : constant Unbounded_String := StoreFileGenerator'Class (This).process (input);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end process;

end org.allbinary.logic.visual.transform.info.objectConfig.generator.StoreFileGenerator_Package;


