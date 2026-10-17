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


package body org.allbinary.logic.communication.http.file.upload.AbFileItem_Package is

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
      Initialize (This.all, name, fieldName, byteArray);
      return This;
   end Create;

   --  throws IOException
   function getInputStream (This : in out AbFileItem) return InputStream_Access is
   begin
        Java_Throw (Java_New_Exception ("IOException", This.commonStrings.NOT_IMPLEMENTED));
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
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("getString"), e);
            end if;
            return StringUtil_Package.getInstance.EMPTY_STRING;
                end;
        end;
   end getString;

   --  throws Exception
   procedure write (This : in out AbFileItem; file : File_Access) is
   begin
        Java_Throw (Java_New_Exception ("Exception", This.commonStrings.NOT_IMPLEMENTED));
   end write;

   --  throws Exception
   procedure write (This : in out AbFileItem; file : AbFile_Access) is
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
   end getOutputStream;

   function getHeaders (This : in out AbFileItem) return FileItemHeaders_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException", This.commonStrings.NOT_IMPLEMENTED));
   end getHeaders;

   procedure setHeaders (This : in out AbFileItem; fih : FileItemHeaders_Access) is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException", This.commonStrings.NOT_IMPLEMENTED));
   end setHeaders;

   procedure getInputStream (This : in out AbFileItem) is
      Java_Result : constant InputStream_Access := AbFileItem'Class (This).getInputStream;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInputStream;

   procedure getContentType (This : in out AbFileItem) is
      Java_Result : constant Unbounded_String := AbFileItem'Class (This).getContentType;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getContentType;

   procedure getName (This : in out AbFileItem) is
      Java_Result : constant Unbounded_String := AbFileItem'Class (This).getName;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getName;

   procedure isInMemory (This : in out AbFileItem) is
      Java_Result : constant Boolean := AbFileItem'Class (This).isInMemory;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isInMemory;

   procedure getSize (This : in out AbFileItem) is
      Java_Result : constant Long_Long_Integer := AbFileItem'Class (This).getSize;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getSize;

   procedure get (This : in out AbFileItem) is
      Java_Result : constant Short_Short_Integer_Array_Access := AbFileItem'Class (This).get;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

   procedure getString (This : in out AbFileItem; encoding : Unbounded_String) is
      Java_Result : constant Unbounded_String := AbFileItem'Class (This).getString (encoding);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getString;

   procedure getString (This : in out AbFileItem) is
      Java_Result : constant Unbounded_String := AbFileItem'Class (This).getString;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getString;

   procedure getFieldName (This : in out AbFileItem) is
      Java_Result : constant Unbounded_String := AbFileItem'Class (This).getFieldName;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFieldName;

   procedure isFormField (This : in out AbFileItem) is
      Java_Result : constant Boolean := AbFileItem'Class (This).isFormField;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isFormField;

   procedure getOutputStream (This : in out AbFileItem) is
      Java_Result : constant OutputStream_Access := AbFileItem'Class (This).getOutputStream;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getOutputStream;

   procedure getHeaders (This : in out AbFileItem) is
      Java_Result : constant FileItemHeaders_Access := AbFileItem'Class (This).getHeaders;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getHeaders;

end org.allbinary.logic.communication.http.file.upload.AbFileItem_Package;


