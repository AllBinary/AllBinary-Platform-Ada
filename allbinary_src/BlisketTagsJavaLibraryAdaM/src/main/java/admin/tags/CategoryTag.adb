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


with admin.taghelpers.CategoryHelperFactory_Package; use admin.taghelpers.CategoryHelperFactory_Package;
with admin.taghelpers.CategoryRequestHelperFactory_Package; use admin.taghelpers.CategoryRequestHelperFactory_Package;
with org.allbinary.business.category.CategoryData_Package; use org.allbinary.business.category.CategoryData_Package;
with org.allbinary.logic.communication.http.request.AbResponseHandler_Package; use org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
with org.allbinary.logic.system.security.licensing.LicensingException_Package; use org.allbinary.logic.system.security.licensing.LicensingException_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoData_Package; use org.allbinary.logic.visual.transform.info.TransformInfoData_Package;

package body admin.tags.CategoryTag_Package is

   package CategoryHelperFactory_Package renames Standard.admin.taghelpers.CategoryHelperFactory_Package;
   package CategoryRequestHelperFactory_Package renames Standard.admin.taghelpers.CategoryRequestHelperFactory_Package;
   package CategoryData_Package renames Standard.org.allbinary.business.category.CategoryData_Package;
   package AbResponseHandler_Package renames Standard.org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
   package LicensingException_Package renames Standard.org.allbinary.logic.system.security.licensing.LicensingException_Package;
   package TransformInfoData_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoData_Package;
   procedure Initialize_Fields (This : in out CategoryTag'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.xsl := Null_Unbounded_String;
   end Initialize_Fields;


   procedure Initialize (This : in out CategoryTag'Class) is
   begin
      TableTag_Package.Initialize (This);
      Initialize_Fields (This);
        CategoryTag'Class (This).setTagHelperFactory (CategoryHelperFactory_Package.Create);
        CategoryTag'Class (This).setTagRequestHelperFactory (CategoryRequestHelperFactory_Package.Create);
   end Initialize;

   function Create return CategoryTag_Access is
      This : constant CategoryTag_Access := new CategoryTag;
   begin
      CategoryTag_Package.Initialize (This.all);
      return This;
   end Create;

   procedure setXsl (This : in out CategoryTag; value : Unbounded_String) is
   begin
        This.xsl := value;
   end setXsl;

   --  throws LicensingException
   function viewCategory (This : in out CategoryTag) return Unbounded_String is
      anyType : Java_Object_Access;
      helperClass : Ada.Tags.Tag;
      method : Method_Access;
      result : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            anyType := CategoryRequestHelperFactory_Package.Create.getInstance (CategoryTag'Class (This).getPropertiesHashMap, This.pageContext);
            helperClass := anyType.all'Tag;
            method := helperClass.getMethod (To_Unbounded_String ("viewCategory"), null);
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
   end viewCategory;

   --  throws LicensingException
   function viewCategories (This : in out CategoryTag) return Unbounded_String is
      anyType : Java_Object_Access;
      helperClass : Ada.Tags.Tag;
      method : Method_Access;
      result : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            anyType := CategoryRequestHelperFactory_Package.Create.getInstance (CategoryTag'Class (This).getPropertiesHashMap, This.pageContext);
            helperClass := anyType.all'Tag;
            method := helperClass.getMethod (To_Unbounded_String ("viewCategories"), null);
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
   end viewCategories;

   --  throws JspTagException
   function doStartTag (This : in out CategoryTag) return Integer is
      output : Unbounded_String;
   begin
        begin
            if CategoryTag'Class (This).isEnabled then
                if (CategoryTag'Class (This).getCommand) /= (null) then
                    CategoryTag'Class (This).getPropertiesHashMap.put (TransformInfoData_Package.getInstance.TEMPLATEFILENAME, This.xsl);
                    if (CategoryTag'Class (This).getCommand.compareTo (CategoryData_Package.getInstance.VIEW)) = (0) then
                        output := CategoryTag'Class (This).viewCategory;
                        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.JSPTAGEXTRAOUTPUT) then
                            This.pageContext.getOut.print (output);
                        end if;
                    elsif (CategoryTag'Class (This).getCommand.compareTo (CategoryData_Package.getInstance.VIEW)) = (0) then
                        output := CategoryTag'Class (This).viewCategories;
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

end admin.tags.CategoryTag_Package;


