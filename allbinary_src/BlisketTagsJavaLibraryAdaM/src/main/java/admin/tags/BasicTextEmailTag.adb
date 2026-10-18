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


with java.util.HashMap_Package; use java.util.HashMap_Package;
with admin.taghelpers.BasicTextEmailHelperFactory_Package; use admin.taghelpers.BasicTextEmailHelperFactory_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.http.request.AbResponseHandler_Package; use org.allbinary.logic.communication.http.request.AbResponseHandler_Package;

package body admin.tags.BasicTextEmailTag_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicTextEmailHelperFactory_Package renames Standard.admin.taghelpers.BasicTextEmailHelperFactory_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package AbResponseHandler_Package renames Standard.org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
   procedure Initialize_Fields (This : in out BasicTextEmailTag'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.subject := Null_Unbounded_String;
      This.body_Id := Null_Unbounded_String;
   end Initialize_Fields;


   procedure Initialize (This : in out BasicTextEmailTag'Class) is
   begin
      CustomTagSupport_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return BasicTextEmailTag_Access is
      This : constant BasicTextEmailTag_Access := new BasicTextEmailTag;
   begin
      BasicTextEmailTag_Package.Initialize (This.all);
      return This;
   end Create;

   procedure setSubject (This : in out BasicTextEmailTag; value : Unbounded_String) is
   begin
        This.subject := value;
   end setSubject;

   procedure setBody (This : in out BasicTextEmailTag; value : Unbounded_String) is
   begin
        This.body_Id := value;
   end setBody;

   function send (This : in out BasicTextEmailTag) return Unbounded_String is
      propertiesHashMap : HashMap_Access;
      anyType : Java_Object_Access;
      method : Method_Access;
      error : Unbounded_String;
   begin
        begin
            propertiesHashMap := StdUtil_Package.getInstance.createHashMap;
            propertiesHashMap.put (Java_Box (To_Unbounded_String ("Subject")), Java_Box (This.subject));
            propertiesHashMap.put (Java_Box (To_Unbounded_String ("Body")), Java_Box (This.body_Id));
            anyType := BasicTextEmailHelperFactory_Package.Create.getInstance (propertiesHashMap, This.pageContext);
            method := anyType.all'Tag.getMethod (To_Unbounded_String ("send"), null);
            method.invoke (anyType, null);
            return To_Unbounded_String ("Email Sent");
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to Send Email.");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, BasicTextEmailTag_Access'(This'Unchecked_Access), To_Unbounded_String ("send()"), e);
            end if;
            return error;
                end;
        end;
   end send;

   --  throws JspTagException
   function doStartTag (This : in out BasicTextEmailTag) return Integer is
   begin
        begin
            This.pageContext.getOut.print (BasicTextEmailTag'Class (This).send);
            return SKIP_BODY;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            AbResponseHandler_Package.sendJspTagRedirect (This.pageContext, e);
            return SKIP_BODY;
                end;
        end;
   end doStartTag;

end admin.tags.BasicTextEmailTag_Package;


