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


package body org.allbinary.logic.io.CloudStreamUtil_Package is

   procedure Initialize_Fields (This : in out CloudStreamUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out CloudStreamUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return CloudStreamUtil_Access is
      This : constant CloudStreamUtil_Access := new CloudStreamUtil;
   begin
      CloudStreamUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return CloudStreamUtil_Access is
   begin
        return CloudStreamUtil_Package.instance;
   end getInstance;

   --  throws Exception
   function getFile (This : in out CloudStreamUtil; file_Param : access AbFile'Class) return InputStream_Access is
      file : AbFile_Access := AbFile_Access (file_Param);
      inputStream : InputStream_Access;
      available : Integer;
   begin
        inputStream := AbFileInputStream_Package.Create (file);
        available := inputStream.available;
        if (available) > (0) then
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                This.logUtil.putF (To_Unbounded_String ("Cloud File Bytes: ") & Java_Image (available), CloudStreamUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("processRequest()"));
            end if;
        end if;
        return inputStream;
   end getFile;

   --  throws Exception
   function getFileAnyWhere (This : in out CloudStreamUtil; file_Param : access AbFile'Class) return InputStream_Access is
      file : AbFile_Access := AbFile_Access (file_Param);
      inputStream : InputStream_Access;
      available : Integer;
   begin
        inputStream := AbFileLocalInputStream_Package.Create (file);
        available := inputStream.available;
        if (available) > (0) then
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                This.logUtil.putF (To_Unbounded_String ("Local File Bytes: ") & Java_Image (available), CloudStreamUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("processRequest()"));
            end if;
        else
            inputStream := AbFileInputStream_Package.Create (file);
            available := inputStream.available;
            if (available) > (0) then
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                    This.logUtil.putF (To_Unbounded_String ("Cloud File Bytes: ") & Java_Image (available), CloudStreamUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("processRequest()"));
                end if;
            end if;
        end if;
        return inputStream;
   end getFileAnyWhere;

   --  throws Exception
   function getFileLocal (This : in out CloudStreamUtil; file_Param : access AbFile'Class) return InputStream_Access is
      file : AbFile_Access := AbFile_Access (file_Param);
      inputStream : InputStream_Access;
      available : Integer;
   begin
        inputStream := AbFileLocalInputStream_Package.Create (file);
        available := inputStream.available;
        if (available) > (0) then
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                This.logUtil.putF (To_Unbounded_String ("Local File Bytes: ") & Java_Image (available), CloudStreamUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("processRequest()"));
            end if;
        end if;
        return inputStream;
   end getFileLocal;

   procedure getFile (This : in out CloudStreamUtil; file_Param : access AbFile'Class) is
      Java_Result : constant InputStream_Access := CloudStreamUtil'Class (This).getFile (file_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFile;

   procedure getFileAnyWhere (This : in out CloudStreamUtil; file_Param : access AbFile'Class) is
      Java_Result : constant InputStream_Access := CloudStreamUtil'Class (This).getFileAnyWhere (file_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFileAnyWhere;

   procedure getFileLocal (This : in out CloudStreamUtil; file_Param : access AbFile'Class) is
      Java_Result : constant InputStream_Access := CloudStreamUtil'Class (This).getFileLocal (file_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFileLocal;

begin
   null;
   instance := CloudStreamUtil_Package.Create;

end org.allbinary.logic.io.CloudStreamUtil_Package;


