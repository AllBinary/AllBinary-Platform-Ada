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


package body org.allbinary.logic.communication.http.file.upload.AbFileUploadFactory_Package is

   procedure Initialize_Fields (This : in out AbFileUploadFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   function getInstance return AbFileUploadFactory_Access is
   begin
        return AbFileUploadFactory_Package.instance;
   end getInstance;

   procedure Initialize (This : in out AbFileUploadFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return AbFileUploadFactory_Access is
      This : constant AbFileUploadFactory_Access := new AbFileUploadFactory;
   begin
      AbFileUploadFactory_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getFileItemStreamList (This : in out AbFileUploadFactory; httpServletRequest_Param : access HttpServletRequest'Class) return List_Access is
      httpServletRequest : HttpServletRequest_Access := HttpServletRequest_Access (httpServletRequest_Param);
      fileUpload : AbFileUpload_Access;
      iterator : FileItemIterator_Access;
      items : List_Access;
      fileItemStream : FileItemStream_Access;
      fileItem : AbFileItem_Access;
      commonStrings : CommonStrings_Access;
   begin
        begin
            fileUpload := AbFileUpload_Package.Create (AbFileItemFactory_Package.Create);
            iterator := fileUpload.getItemIterator (httpServletRequest);
            items := ArrayList_Package.Create;
            while iterator.hasNext loop
                fileItemStream := iterator.next;
                HttpFileUploadUtil_Package.log (fileItemStream);
                fileItem := AbFileItem_Package.Create (fileItemStream.getName, fileItemStream.getFieldName, FileItemUtil_Package.getInstance.getBytes (fileItemStream));
                items.add (fileItem);
            end loop;
            return items;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.HTTPERROR) then
                commonStrings := CommonStrings_Package.getInstance;
                This.logUtil.put (commonStrings.EXCEPTION_Id, AbFileUploadFactory_Access'(This'Unchecked_Access), To_Unbounded_String ("get()"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end getFileItemStreamList;

   --  throws Exception
   function getFileItemList (This : in out AbFileUploadFactory; httpServletRequest_Param : access HttpServletRequest'Class) return List_Access is
      httpServletRequest : HttpServletRequest_Access := HttpServletRequest_Access (httpServletRequest_Param);
      abFileUpload : AbFileUpload_Access;
      commonStrings : CommonStrings_Access;
   begin
        begin
            abFileUpload := AbFileUpload_Package.Create (AbFileItemFactory_Package.Create);
            return abFileUpload.parseRequest (httpServletRequest);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.HTTPERROR) then
                This.logUtil.put (commonStrings.EXCEPTION_Id, AbFileUploadFactory_Access'(This'Unchecked_Access), To_Unbounded_String ("get()"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end getFileItemList;

   procedure getFileItemStreamList (This : in out AbFileUploadFactory; httpServletRequest_Param : access HttpServletRequest'Class) is
      Java_Result : constant List_Access := AbFileUploadFactory'Class (This).getFileItemStreamList (httpServletRequest_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFileItemStreamList;

   procedure getFileItemList (This : in out AbFileUploadFactory; httpServletRequest_Param : access HttpServletRequest'Class) is
      Java_Result : constant List_Access := AbFileUploadFactory'Class (This).getFileItemList (httpServletRequest_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFileItemList;

begin
   null;
   instance := AbFileUploadFactory_Package.Create;

end org.allbinary.logic.communication.http.file.upload.AbFileUploadFactory_Package;


