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
      urlGlobals : AppUrlGlobals_Access;
   begin
        begin
            urlGlobals := AppUrlGlobals_Package.Create;
            urlGlobals.setWebappPath (This.webappPath);
            URLGLOBALS.init (urlGlobals);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.JSPTAGERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, CustomLoaderTag_Access'(This'Unchecked_Access), To_Unbounded_String ("setCustomLoaderWebappPath()"), e);
            end if;
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
                if (Java_Compare_To (This.command, GLOBALS2.SET)) = (0) then
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


