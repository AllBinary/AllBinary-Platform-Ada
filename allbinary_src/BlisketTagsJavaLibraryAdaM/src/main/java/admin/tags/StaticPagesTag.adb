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


with admin.taghelpers.StaticPagesHelperFactory_Package; use admin.taghelpers.StaticPagesHelperFactory_Package;
with admin.taghelpers.StaticPagesRequestHelperFactory_Package; use admin.taghelpers.StaticPagesRequestHelperFactory_Package;
with org.allbinary.logic.communication.http.request.AbResponseHandler_Package; use org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
with org.allbinary.logic.control.search.SearchData_Package; use org.allbinary.logic.control.search.SearchData_Package;
with org.allbinary.logic.system.security.licensing.LicensingException_Package; use org.allbinary.logic.system.security.licensing.LicensingException_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoData_Package; use org.allbinary.logic.visual.transform.info.TransformInfoData_Package;

package body admin.tags.StaticPagesTag_Package is

   package StaticPagesHelperFactory_Package renames Standard.admin.taghelpers.StaticPagesHelperFactory_Package;
   package StaticPagesRequestHelperFactory_Package renames Standard.admin.taghelpers.StaticPagesRequestHelperFactory_Package;
   package AbResponseHandler_Package renames Standard.org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
   package SearchData_Package renames Standard.org.allbinary.logic.control.search.SearchData_Package;
   package LicensingException_Package renames Standard.org.allbinary.logic.system.security.licensing.LicensingException_Package;
   package TransformInfoData_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoData_Package;
   procedure Initialize_Fields (This : in out StaticPagesTag'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.xslFile := Null_Unbounded_String;
   end Initialize_Fields;


   procedure Initialize (This : in out StaticPagesTag'Class) is
   begin
      TableTag_Package.Initialize (This);
      Initialize_Fields (This);
        StaticPagesTag'Class (This).setTagHelperFactory (StaticPagesHelperFactory_Package.Create);
        StaticPagesTag'Class (This).setTagRequestHelperFactory (StaticPagesRequestHelperFactory_Package.Create);
   end Initialize;

   function Create return StaticPagesTag_Access is
      This : constant StaticPagesTag_Access := new StaticPagesTag;
   begin
      StaticPagesTag_Package.Initialize (This.all);
      return This;
   end Create;

   procedure setXsl (This : in out StaticPagesTag; value : Unbounded_String) is
   begin
        This.xslFile := value;
   end setXsl;

   --  throws LicensingException
   function generateStaticPages (This : in out StaticPagesTag) return Unbounded_String is
      anyType : Java_Object_Access;
      helperClass : Ada.Tags.Tag;
      method : Method_Access;
      result : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            anyType := StaticPagesRequestHelperFactory_Package.Create.getInstance (StaticPagesTag'Class (This).getPropertiesHashMap, This.pageContext);
            helperClass := anyType.all'Tag;
            method := helperClass.getMethod (To_Unbounded_String ("generateStaticPages"), null);
            result := Java_Unbox (method.invoke (anyType, null));
            return result;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Java_Throw (e);
                end;
        end;
   end generateStaticPages;

   --  throws LicensingException
   function makePublic (This : in out StaticPagesTag) return Unbounded_String is
      anyType : Java_Object_Access;
      helperClass : Ada.Tags.Tag;
      method : Method_Access;
      result : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            anyType := StaticPagesRequestHelperFactory_Package.Create.getInstance (StaticPagesTag'Class (This).getPropertiesHashMap, This.pageContext);
            helperClass := anyType.all'Tag;
            method := helperClass.getMethod (To_Unbounded_String ("makePublic"), null);
            result := Java_Unbox (method.invoke (anyType, null));
            return result;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Java_Throw (e);
                end;
        end;
   end makePublic;

   --  throws JspTagException
   function doStartTag (This : in out StaticPagesTag) return Integer is
      output : Unbounded_String;
   begin
        begin
            if StaticPagesTag'Class (This).isEnabled then
                if (StaticPagesTag'Class (This).getCommand) /= (null) then
                    if (StaticPagesTag'Class (This).getCommand.compareTo (SearchData_Package.GENERATESTATICPAGES)) = (0) then
                        StaticPagesTag'Class (This).getPropertiesHashMap.put (TransformInfoData_Package.getInstance.TEMPLATEFILENAME, This.xslFile);
                        output := StaticPagesTag'Class (This).generateStaticPages;
                        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.JSPTAGEXTRAOUTPUT) then
                            This.pageContext.getOut.print (output);
                        end if;
                    elsif (StaticPagesTag'Class (This).getCommand.compareTo (SearchData_Package.MAKEPUBLIC)) = (0) then
                        output := StaticPagesTag'Class (This).makePublic;
                        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.JSPTAGEXTRAOUTPUT) then
                            This.pageContext.getOut.print (output);
                        end if;
                    else
                        return TableTag (This).doStartTag;
                    end if;
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

end admin.tags.StaticPagesTag_Package;


