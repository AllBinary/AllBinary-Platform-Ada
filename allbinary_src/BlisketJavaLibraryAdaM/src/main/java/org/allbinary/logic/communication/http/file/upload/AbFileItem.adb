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


with org.allbinary.logic.communication.log.ForcedLogUtil_Package; use org.allbinary.logic.communication.log.ForcedLogUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.string_Id.StringValidationUtil_Package; use org.allbinary.logic.string_Id.StringValidationUtil_Package;
with org.apache.commons.fileupload.FileItemUtil_Package; use org.apache.commons.fileupload.FileItemUtil_Package;

package body org.allbinary.logic.communication.http.file.upload.AbFileItem_Package is

   package ForcedLogUtil_Package renames Standard.org.allbinary.logic.communication.log.ForcedLogUtil_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package StringValidationUtil_Package renames Standard.org.allbinary.logic.string_Id.StringValidationUtil_Package;
   package FileItemUtil_Package renames Standard.org.apache.commons.fileupload.FileItemUtil_Package;
   procedure Initialize_Fields (This : in out AbFileItem'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out AbFileItem'Class; name : Unbounded_String; fieldName : Unbounded_String; byteArray : Short_Short_Integer_Array_Access) is
   begin
      Initialize_Fields (This);
        This.name := name;
        This.fieldName := fieldName;
        This.byteArray := byteArray;
   end Initialize;

   function Create (name : Unbounded_String; fieldName : Unbounded_String; byteArray : Short_Short_Integer_Array_Access) return AbFileItem_Access is
      This : constant AbFileItem_Access := new AbFileItem;
   begin
      AbFileItem_Package.Initialize (This.all, name, fieldName, byteArray);
      return This;
   end Create;

   --  throws IOException
   function getInputStream (This : in out AbFileItem) return InputStream_Access is
   begin
        Java_Throw (Java_New_Exception ("IOException", This.commonStrings.NOT_IMPLEMENTED));
        return null;
   end getInputStream;

   function getContentType (This : in out AbFileItem) return Unbounded_String is
   begin
        return Null_Unbounded_String;
   end getContentType;

   function getName (This : in out AbFileItem) return Unbounded_String is
   begin
        return This.name;
   end getName;

   function isInMemory (This : in out AbFileItem) return Boolean is
   begin
        return True;
   end isInMemory;

   function getSize (This : in out AbFileItem) return Long_Long_Integer is
   begin
        return Long_Long_Integer (This.byteArray'Length);
   end getSize;

   function get (This : in out AbFileItem) return Short_Short_Integer_Array_Access is
   begin
        return This.byteArray;
   end get;

   --  throws UnsupportedEncodingException
   function getString (This : in out AbFileItem; encoding : Unbounded_String) return Unbounded_String is
   begin
        return Java_New_String (This.byteArray, encoding);
   end getString;

   function getString (This : in out AbFileItem) return Unbounded_String is
   begin
        begin
            return FileItemUtil_Package.getInstance.getString (This.byteArray);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.HTTPERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, AbFileItem_Access'(This'Unchecked_Access), To_Unbounded_String ("getString"), e);
            end if;
            return StringUtil_Package.getInstance.EMPTY_STRING;
                end;
        end;
   end getString;

   --  throws Exception
   procedure write (This : in out AbFileItem; file_Param : access File_Package.File'Class) is
      file : constant File_Access := File_Access (file_Param);
   begin
        Java_Throw (Java_New_Exception ("Exception", This.commonStrings.NOT_IMPLEMENTED));
   end write;

   --  throws Exception
   procedure write (This : in out AbFileItem; file_Param : access AbFile_Package.AbFile'Class) is
      file : constant AbFile_Access := AbFile_Access (file_Param);
   begin
        Java_Throw (Java_New_Exception ("Exception", This.commonStrings.NOT_IMPLEMENTED));
   end write;

   procedure delete (This : in out AbFileItem) is
   begin
        ForcedLogUtil_Package.log (This.commonStrings.NOT_IMPLEMENTED, To_Unbounded_String ("delete()"));
   end delete;

   function getFieldName (This : in out AbFileItem) return Unbounded_String is
   begin
        return This.fieldName;
   end getFieldName;

   procedure setFieldName (This : in out AbFileItem; name : Unbounded_String) is
   begin
        This.fieldName := name;
   end setFieldName;

   function isFormField (This : in out AbFileItem) return Boolean is
   begin
        if StringValidationUtil_Package.getInstance.isEmpty (This.fieldName) then
            return False;
        else
            return True;
        end if;
   end isFormField;

   procedure setFormField (This : in out AbFileItem; state : Boolean) is
   begin
        null;
   end setFormField;

   --  throws IOException
   function getOutputStream (This : in out AbFileItem) return OutputStream_Access is
   begin
        Java_Throw (Java_New_Exception ("IOException", This.commonStrings.NOT_IMPLEMENTED));
        return null;
   end getOutputStream;

   function getHeaders (This : in out AbFileItem) return FileItemHeaders_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException", This.commonStrings.NOT_IMPLEMENTED));
        return null;
   end getHeaders;

   procedure setHeaders (This : in out AbFileItem; fih_Param : access FileItemHeaders_Package.FileItemHeaders'Class) is
      fih : constant FileItemHeaders_Access := FileItemHeaders_Access (fih_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException", This.commonStrings.NOT_IMPLEMENTED));
   end setHeaders;

   procedure getString (This : in out AbFileItem; encoding : Unbounded_String) is
      Java_Result : constant Unbounded_String := AbFileItem'Class (This).getString (encoding);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getString;

end org.allbinary.logic.communication.http.file.upload.AbFileItem_Package;


