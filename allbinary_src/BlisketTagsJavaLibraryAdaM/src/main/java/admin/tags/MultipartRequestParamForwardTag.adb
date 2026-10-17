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


package body admin.tags.MultipartRequestParamForwardTag_Package is

   procedure Initialize_Fields (This : in out MultipartRequestParamForwardTag'Class) is
   begin
      null;
      This.page := Null_Unbounded_String;
      This.command := Null_Unbounded_String;
      This.paramVector := null;
   end Initialize_Fields;

   procedure Initialize (This : in out MultipartRequestParamForwardTag'Class) is
   begin
      CustomTagSupport_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return MultipartRequestParamForwardTag_Access is
      This : constant MultipartRequestParamForwardTag_Access := new MultipartRequestParamForwardTag;
   begin
      MultipartRequestParamForwardTag_Package.Initialize (This.all);
      return This;
   end Create;


   procedure setPage (This : in out MultipartRequestParamForwardTag; page : Unbounded_String) is
   begin
        This.page := page;
   end setPage;

   procedure setCommand (This : in out MultipartRequestParamForwardTag; command : Unbounded_String) is
   begin
        This.command := command;
   end setCommand;

   procedure setParamVector (This : in out MultipartRequestParamForwardTag; paramVector_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      paramVector : constant BasicArrayList_Access := BasicArrayList_Access (paramVector_Param);
   begin
        This.paramVector := paramVector;
   end setParamVector;

   --  throws JspTagException
   function doStartTag (This : in out MultipartRequestParamForwardTag) return Integer is
      parentTag : HelperTag_Access;
      hashMap : HashMap_Access;
      multipartRequestParamForwardHelper : MultipartRequestParamForwardHelper_Access;
   begin
        begin
            parentTag := HelperTag_Access (This.getParent);
            ParentInventoryTagHelper_Package.getInstance.isValid (MultipartRequestParamForwardTag_Access'(This'Unchecked_Access), parentTag);
            hashMap := StdUtil_Package.getInstance.createHashMap;
            hashMap.put (AbTagData_Package.PARENT, parentTag);
            multipartRequestParamForwardHelper := MultipartRequestParamForwardHelper_Package.Create (parentTag, This.page, This.command, This.paramVector, This.pageContext);
            multipartRequestParamForwardHelper.forward;
            return Tag_Package.SKIP_BODY;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            AbResponseHandler_Package.sendJspTagLicensingRedirect (This.pageContext, e);
            return Tag_Package.SKIP_BODY;
                end;
        end;
   end doStartTag;

end admin.tags.MultipartRequestParamForwardTag_Package;


