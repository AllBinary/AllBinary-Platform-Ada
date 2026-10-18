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


with org.allbinary.logic.java.anyType.clazz.ClassUtil_Package; use org.allbinary.logic.java.anyType.clazz.ClassUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;

package body org.allbinary.logic.communication.http.file.upload.HttpFileUploadUtil_Package is

   package ClassUtil_Package renames Standard.org.allbinary.logic.java.anyType.clazz.ClassUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
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
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
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
   procedure log (fileItem_Param : access FileItemStream_Package.FileItemStream'Class) is
      fileItem : constant FileItemStream_Access := FileItemStream_Access (fileItem_Param);
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

   procedure log (fileItem_Param : access FileItem_Package.FileItem'Class) is
      fileItem : constant FileItem_Access := FileItem_Access (fileItem_Param);
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

   function isValid (This : in out HttpFileUploadUtil; Value : Unbounded_String) return Boolean is
   begin
      return HttpFileUploadUtil'Class (This).isValid (Java_Box (Value));
   end isValid;

   procedure isValid (This : in out HttpFileUploadUtil; Value : Unbounded_String) is
      Java_Result : constant Boolean := HttpFileUploadUtil'Class (This).isValid (Java_Box (Value));
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isValid;

begin
   null;
   instance := HttpFileUploadUtil_Package.Create;

end org.allbinary.logic.communication.http.file.upload.HttpFileUploadUtil_Package;


