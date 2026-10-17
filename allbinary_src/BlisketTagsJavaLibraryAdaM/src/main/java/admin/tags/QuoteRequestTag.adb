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


package body admin.tags.QuoteRequestTag_Package is

   procedure Initialize_Fields (This : in out QuoteRequestTag'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.storeName := Null_Unbounded_String;
   end Initialize_Fields;


   procedure Initialize (This : in out QuoteRequestTag'Class) is
   begin
      TableTag_Package.Initialize (This);
      Initialize_Fields (This);
        This.setTagHelperFactory (QuoteHelperFactory_Package.Create);
        This.setTagRequestHelperFactory (QuoteRequestHelperFactory_Package.Create);
   end Initialize;

   function Create return QuoteRequestTag_Access is
      This : constant QuoteRequestTag_Access := new QuoteRequestTag;
   begin
      QuoteRequestTag_Package.Initialize (This.all);
      return This;
   end Create;

   procedure setStoreName (This : in out QuoteRequestTag; storeName : Unbounded_String) is
   begin
        This.storeName := storeName;
   end setStoreName;

   --  throws LicensingException
   function email (This : in out QuoteRequestTag) return Unbounded_String is
      anyType : Java_Object_Access;
      helperClass : Ada.Tags.Tag;
      method : Method_Access;
      result : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            anyType := QuoteHelperFactory_Package.Create.getInstance (This.getPropertiesHashMap, This.pageContext);
            helperClass := anyType.all'Tag;
            method := helperClass.getMethod (To_Unbounded_String ("email"), null);
            result := Unbounded_String (method.invoke (anyType, null));
            return result;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Java_Throw (e);
                end;
        end;
   end email;

   --  throws JspTagException
   function doStartTag (This : in out QuoteRequestTag) return Integer is
   begin
        begin
            if (This.getCommand) /= (null) then
                This.getPropertiesHashMap.put (StoreFrontData_Package.getInstance.NAME, This.storeName);
                if (This.getCommand.compareTo (To_Unbounded_String ("EMAIL"))) = (0) then
                    This.email;
                    return This.EVAL_BODY_INCLUDE;
                else
                    return TableTag (This).doStartTag;
                end if;
            end if;
            return SKIP_BODY;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            AbResponseHandler_Package.sendJspTagLicensingRedirect (This.pageContext, e);
            return SKIP_BODY;
                end;
        end;
   end doStartTag;

end admin.tags.QuoteRequestTag_Package;


