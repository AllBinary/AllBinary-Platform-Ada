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


package body org.allbinary.logic.visual.transform.info.TransformInfoHttpSearch_Package is

   procedure Initialize_Fields (This : in out TransformInfoHttpSearch'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out TransformInfoHttpSearch'Class; searchRequest : SearchRequest_Access) is
      dataFileName : Unbounded_String;
   begin
        TransformInfoHttp_Package.Initialize (This, searchRequest.getPropertiesHashMap, searchRequest.getPageContext);
        if (searchRequest.getStoreFront.getName) /= (Null_Unbounded_String) then
            This.setStoreName (searchRequest.getStoreFront.getName);
        else
            This.setStoreName (StringUtil_Package.getInstance.EMPTY_STRING);
        end if;
        dataFileName := searchRequest.getXslFile;
        This.setTemplateFile (dataFileName);
   end Initialize;

   function Create (searchRequest : SearchRequest_Access) return TransformInfoHttpSearch_Access is
      This : constant TransformInfoHttpSearch_Access := new TransformInfoHttpSearch;
   begin
      Initialize (This.all, searchRequest);
      return This;
   end Create;

   --  throws Exception
   function getPath (This : in out TransformInfoHttpSearch) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (URLGLOBALS.getMainPath);
        stringBuffer.append (FREEBLISKET_PATH_GLOBALS.getInstance.XSLPATH);
        stringBuffer.append (This.getStoreName);
        stringBuffer.append (AbPathData_Package.getInstance.SEPARATOR);
        return stringBuffer.toString;
   end getPath;

   --  throws Exception
   function getTemplateFilePath (This : in out TransformInfoHttpSearch) return AbPath_Access is
   begin
        return AbPath_Package.Create (This.getPath, This.getTemplateFile);
   end getTemplateFilePath;

   --  throws Exception
   function getObjectConfigFilePath (This : in out TransformInfoHttpSearch) return AbPath_Access is
   begin
        return AbPath_Package.Create (This.getPath, This.getObjectConfigFile);
   end getObjectConfigFilePath;

   --  throws Exception
   function getDataFilePath (This : in out TransformInfoHttpSearch) return AbPath_Access is
   begin
        return AbPath_Package.Create (This.getPath, This.getDataFile);
   end getDataFilePath;

   procedure getPath (This : in out TransformInfoHttpSearch) is
      Java_Result : constant Unbounded_String := TransformInfoHttpSearch'Class (This).getPath;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPath;

   procedure getTemplateFilePath (This : in out TransformInfoHttpSearch) is
      Java_Result : constant AbPath_Access := TransformInfoHttpSearch'Class (This).getTemplateFilePath;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTemplateFilePath;

   procedure getObjectConfigFilePath (This : in out TransformInfoHttpSearch) is
      Java_Result : constant AbPath_Access := TransformInfoHttpSearch'Class (This).getObjectConfigFilePath;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getObjectConfigFilePath;

   procedure getDataFilePath (This : in out TransformInfoHttpSearch) is
      Java_Result : constant AbPath_Access := TransformInfoHttpSearch'Class (This).getDataFilePath;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDataFilePath;

end org.allbinary.logic.visual.transform.info.TransformInfoHttpSearch_Package;


