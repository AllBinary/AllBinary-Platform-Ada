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


package body admin.tags.CustomLoaderTag_Package is

   procedure Initialize_Fields (This : in out CustomLoaderTag'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.command := Null_Unbounded_String;
      This.webappPath := Null_Unbounded_String;
      This.propertiesHashMap := null;
   end Initialize_Fields;


   procedure Initialize (This : in out CustomLoaderTag'Class) is
   begin
      CustomTagSupport_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return CustomLoaderTag_Access is
      This : constant CustomLoaderTag_Access := new CustomLoaderTag;
   begin
      CustomLoaderTag_Package.Initialize (This.all);
      return This;
   end Create;

   procedure setCommand (This : in out CustomLoaderTag; command : Unbounded_String) is
   begin
        This.command := command;
   end setCommand;

   procedure setWebappPath (This : in out CustomLoaderTag; value : Unbounded_String) is
   begin
        This.webappPath := value;
   end setWebappPath;

   --  throws LicensingException
   procedure setCustomLoaderWebappPath (This : in out CustomLoaderTag) is
      anyType : Java_Object_Access;
      helperClass : Ada.Tags.Tag;
      methodParams : Ada_Tags_Tag_Array_Access;
      methodArgs : Java_Object_Access_Array_Access;
      setMethod : Method_Access;
   begin
        begin
            anyType := CustomLoaderHelperFactory_Package.Create.getInstance (This.propertiesHashMap, This.pageContext);
            helperClass := anyType.all'Tag;
            methodParams := new Ada_Tags_Tag_Array'(0 => This.webappPath.all'Tag);
            methodArgs := new Java_Object_Access_Array'(0 => This.webappPath);
            setMethod := helperClass.getMethod (To_Unbounded_String ("setWebappPath"), methodParams);
            setMethod.invoke (anyType, methodArgs);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Java_Throw (e);
                end;
        end;
   end setCustomLoaderWebappPath;

   --  throws JspTagException
   function doStartTag (This : in out CustomLoaderTag) return Integer is
   begin
        begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.JSPTAG) then
                This.logUtil.putF (This.commonStrings.START, CustomLoaderTag_Access'(This'Unchecked_Access), This.tagStrings.DO_START_TAG);
            end if;
            if (This.command) /= (Null_Unbounded_String) then
                This.propertiesHashMap := StdUtil_Package.getInstance.createHashMap;
                if (This.command.compareTo (org_Package.allbinary.globals.GLOBALS2.SET)) = (0) then
                    CustomLoaderTag'Class (This).setCustomLoaderWebappPath;
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

end admin.tags.CustomLoaderTag_Package;


