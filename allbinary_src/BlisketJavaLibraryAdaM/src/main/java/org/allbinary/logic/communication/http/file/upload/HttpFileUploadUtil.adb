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


package body org.allbinary.logic.communication.http.file.upload.HttpFileUploadUtil_Package is

   procedure Initialize_Fields (This : in out HttpFileUploadUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   function getInstance return HttpFileUploadUtil_Access is
   begin
        return HttpFileUploadUtil_Package.instance;
   end getInstance;

   procedure Initialize (This : in out HttpFileUploadUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return HttpFileUploadUtil_Access is
      This : constant HttpFileUploadUtil_Access := new HttpFileUploadUtil;
   begin
      HttpFileUploadUtil_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function isValid (This : in out HttpFileUploadUtil; anyType_Param : access Java_Object'Class) return Boolean is
      anyType : Java_Object_Access := Java_Object_Access (anyType_Param);
   begin
        if ((anyType) /= (null)) and then (not (((anyType.all in String_Package.String'Class)))) then
            if (anyType.all in FileItem_Package.FileItem'Class) then
                return True;
            else
                Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Object Not Instance Of FileItem but is: ") & Java_Image (ClassUtil_Package.viewAll (anyType, CommonSeps_Package.getInstance.NEW_LINE))));
            end if;
        end if;
        return False;
   end isValid;

   --  throws Exception
   procedure log (fileItem_Param : access FileItemStream'Class) is
      fileItem : FileItemStream_Access := FileItemStream_Access (fileItem_Param);
      logUtil : LogUtil_Access;
      stringBuffer : StringMaker_Access;
      commonSeps : CommonSeps_Access;
   begin
        logUtil := LogUtil_Package.getInstance;
        stringBuffer := StringMaker_Package.Create;
        commonSeps := CommonSeps_Package.getInstance;
        stringBuffer.append (To_Unbounded_String ("FileItem Log:"));
        stringBuffer.append (commonSeps.NEW_LINE);
        stringBuffer.append (To_Unbounded_String ("Content Type:"));
        stringBuffer.append (fileItem.getContentType);
        stringBuffer.append (commonSeps.NEW_LINE);
        stringBuffer.append (To_Unbounded_String ("Field Name:"));
        stringBuffer.append (fileItem.getFieldName);
        stringBuffer.append (commonSeps.NEW_LINE);
        stringBuffer.append (To_Unbounded_String ("Name:"));
        stringBuffer.append (fileItem.getName);
        stringBuffer.append (commonSeps.NEW_LINE);
        stringBuffer.append (To_Unbounded_String ("Size:"));
        stringBuffer.append (To_Unbounded_String (" Not Calculated Yet"));
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.HTTP) then
            logUtil.putF (stringBuffer.toString, getInstance, To_Unbounded_String ("log()"));
        end if;
   end log;

   procedure log (fileItem_Param : access FileItem'Class) is
      fileItem : FileItem_Access := FileItem_Access (fileItem_Param);
      logUtil : LogUtil_Access;
      stringBuffer : StringMaker_Access;
      commonSeps : CommonSeps_Access;
   begin
        logUtil := LogUtil_Package.getInstance;
        stringBuffer := StringMaker_Package.Create;
        commonSeps := CommonSeps_Package.getInstance;
        stringBuffer.append (To_Unbounded_String ("FileItem Log:"));
        stringBuffer.append (commonSeps.NEW_LINE);
        stringBuffer.append (To_Unbounded_String ("Content Type:"));
        stringBuffer.append (fileItem.getContentType);
        stringBuffer.append (commonSeps.NEW_LINE);
        stringBuffer.append (To_Unbounded_String ("Field Name:"));
        stringBuffer.append (fileItem.getFieldName);
        stringBuffer.append (commonSeps.NEW_LINE);
        stringBuffer.append (To_Unbounded_String ("Name:"));
        stringBuffer.append (fileItem.getName);
        stringBuffer.append (commonSeps.NEW_LINE);
        stringBuffer.append (To_Unbounded_String ("Size:"));
        stringBuffer.appendlong (Long_Long_Integer (fileItem.getSize));
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.HTTPREQUEST) then
            logUtil.putF (stringBuffer.toString, getInstance, To_Unbounded_String ("log()"));
        end if;
   end log;

   procedure isValid (This : in out HttpFileUploadUtil; anyType_Param : access Java_Object'Class) is
      Java_Result : constant Boolean := HttpFileUploadUtil'Class (This).isValid (anyType_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isValid;

begin
   null;
   instance := HttpFileUploadUtil_Package.Create;

end org.allbinary.logic.communication.http.file.upload.HttpFileUploadUtil_Package;


