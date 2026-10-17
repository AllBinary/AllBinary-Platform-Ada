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


package body admin.tags.CategoryTag_Package is

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
        This.setTagHelperFactory (CategoryHelperFactory_Package.Create);
        This.setTagRequestHelperFactory (CategoryRequestHelperFactory_Package.Create);
   end Initialize;

   function Create return CategoryTag_Access is
      This : constant CategoryTag_Access := new CategoryTag;
   begin
      Initialize (This.all);
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
            anyType := CategoryRequestHelperFactory_Package.Create.getInstance (This.getPropertiesHashMap, This.pageContext);
            helperClass := anyType.all'Tag;
            method := helperClass.getMethod (To_Unbounded_String ("viewCategory"), null);
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
            anyType := CategoryRequestHelperFactory_Package.Create.getInstance (This.getPropertiesHashMap, This.pageContext);
            helperClass := anyType.all'Tag;
            method := helperClass.getMethod (To_Unbounded_String ("viewCategories"), null);
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
   end viewCategories;

   --  throws JspTagException
   function doStartTag (This : in out CategoryTag) return Integer is
      output : Unbounded_String;
   begin
        begin
            if This.isEnabled then
                if (This.getCommand) /= (null) then
                    This.getPropertiesHashMap.put (TransformInfoData_Package.getInstance.TEMPLATEFILENAME, This.xsl);
                    if (This.getCommand.compareTo (CategoryData_Package.getInstance.VIEW)) = (0) then
                        output := This.viewCategory;
                        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.JSPTAGEXTRAOUTPUT) then
                            This.pageContext.getOut.print (output);
                        end if;
                    elsif (This.getCommand.compareTo (CategoryData_Package.getInstance.VIEW)) = (0) then
                        output := This.viewCategories;
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

   procedure viewCategory (This : in out CategoryTag) is
      Java_Result : constant Unbounded_String := CategoryTag'Class (This).viewCategory;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end viewCategory;

   procedure viewCategories (This : in out CategoryTag) is
      Java_Result : constant Unbounded_String := CategoryTag'Class (This).viewCategories;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end viewCategories;

   procedure doStartTag (This : in out CategoryTag) is
      Java_Result : constant Integer := CategoryTag'Class (This).doStartTag;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end doStartTag;

end admin.tags.CategoryTag_Package;


