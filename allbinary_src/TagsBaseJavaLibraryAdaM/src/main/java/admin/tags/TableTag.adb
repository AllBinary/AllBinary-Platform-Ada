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


with admin.taghelpers.TagHelperFactoryInterface_Package; use admin.taghelpers.TagHelperFactoryInterface_Package;
with admin.taghelpers.TagHelperFactoryInterface_Package_References;
with org.allbinary.logic.communication.http.request.AbResponseHandler_Package; use org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.communication.sql.SqlStrings_Package; use org.allbinary.logic.communication.sql.SqlStrings_Package;
with org.allbinary.logic.java.bool.BooleanUtil_Package; use org.allbinary.logic.java.bool.BooleanUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringValidationUtil_Package; use org.allbinary.logic.string_Id.StringValidationUtil_Package;
with org.allbinary.logic.system.security.licensing.LicensingException_Package; use org.allbinary.logic.system.security.licensing.LicensingException_Package;
with tags.PropertiesTag_Package; use tags.PropertiesTag_Package;
with org.allbinary.globals.GLOBALS2_Package; use org.allbinary.globals.GLOBALS2_Package;
with org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package; use org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package;
with org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package; use org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayList_Package;
with tags.CommandTag_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with tags.CustomTagSupport_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with tags.TagStrings_Package;
with org.allbinary.time.TimeStampUtil_Package;
with admin.taghelpers.TagHelperFactoryInterface_Package_References;

package body admin.tags.TableTag_Package is

   package AbResponseHandler_Package renames Standard.org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
   package SqlStrings_Package renames Standard.org.allbinary.logic.communication.sql.SqlStrings_Package;
   package BooleanUtil_Package renames Standard.org.allbinary.logic.java.bool.BooleanUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringValidationUtil_Package renames Standard.org.allbinary.logic.string_Id.StringValidationUtil_Package;
   package LicensingException_Package renames Standard.org.allbinary.logic.system.security.licensing.LicensingException_Package;
   package GLOBALS2_Package renames Standard.org.allbinary.globals.GLOBALS2_Package;
   package LogConfigTypeFactory_Package renames Standard.org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package;
   package LogConfigTypes_Package renames Standard.org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package;
   subtype TagHelperFactoryInterface_Access is admin.taghelpers.TagHelperFactoryInterface_Package_References.TagHelperFactoryInterface_Access;
   function "=" (Left, Right : TagHelperFactoryInterface_Access) return Boolean renames admin.taghelpers.TagHelperFactoryInterface_Package_References."=";
   subtype TagHelperFactoryInterface_Access_Array is admin.taghelpers.TagHelperFactoryInterface_Package_References.TagHelperFactoryInterface_Access_Array;
   function "=" (Left, Right : TagHelperFactoryInterface_Access_Array) return Boolean renames admin.taghelpers.TagHelperFactoryInterface_Package_References."=";
   subtype TagHelperFactoryInterface_Access_Array_Access is admin.taghelpers.TagHelperFactoryInterface_Package_References.TagHelperFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : TagHelperFactoryInterface_Access_Array_Access) return Boolean renames admin.taghelpers.TagHelperFactoryInterface_Package_References."=";
   subtype TagHelperFactoryInterface_Access_Array_Access_Array is admin.taghelpers.TagHelperFactoryInterface_Package_References.TagHelperFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : TagHelperFactoryInterface_Access_Array_Access_Array) return Boolean renames admin.taghelpers.TagHelperFactoryInterface_Package_References."=";
   subtype TagHelperFactoryInterface_Access_Array_Access_Array_Access is admin.taghelpers.TagHelperFactoryInterface_Package_References.TagHelperFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TagHelperFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames admin.taghelpers.TagHelperFactoryInterface_Package_References."=";
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   procedure Initialize_Fields (This : in out TableTag'Class) is
   begin
      null;
      This.TableTag_Field_logUtil := LogUtil_Package.getInstance;
      This.enabled := Null_Unbounded_String;
      This.tagHelperFactoryInterface := null;
      This.tagRequestHelperFactoryInterface := null;
      This.requestObject := null;
      This.current := 0;
      This.total := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out TableTag'Class) is
   begin
      PropertiesTag_Package.Initialize (This);
      Initialize_Fields (This);
        if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.JSPTAG) then
            This.TableTag_Field_logUtil.putF (This.commonStrings.START, TableTag_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
        end if;
   end Initialize;

   function Create return TableTag_Access is
      This : constant TableTag_Access := new TableTag;
   begin
      TableTag_Package.Initialize (This.all);
      return This;
   end Create;

   procedure setIsSelected (This : in out TableTag; enabled : Unbounded_String) is
   begin
        This.enabled := enabled;
   end setIsSelected;

   --  throws Exception
   function isEnabled (This : in out TableTag) return Boolean is
   begin
        if not (StringValidationUtil_Package.getInstance.isEmpty (This.enabled)) then
            if (BooleanUtil_Package.getInstance.getFromString (This.enabled)) or else ((Java_Compare_To (This.enabled, To_Unbounded_String ("on"))) = (0)) then
                return True;
            end if;
        end if;
        return False;
   end isEnabled;

   procedure setTagHelperFactory (This : in out TableTag; tagHelperFactoryInterface_Param : access TagHelperFactoryInterface_Package.TagHelperFactoryInterface'Class) is
      tagHelperFactoryInterface : constant TagHelperFactoryInterface_Access := TagHelperFactoryInterface_Access (tagHelperFactoryInterface_Param);
   begin
        This.tagHelperFactoryInterface := tagHelperFactoryInterface;
   end setTagHelperFactory;

   function getTagHelperFactoryInterface (This : in out TableTag) return TagHelperFactoryInterface_Access is
   begin
        return This.tagHelperFactoryInterface;
   end getTagHelperFactoryInterface;

   procedure setTagRequestHelperFactory (This : in out TableTag; tagHelperFactoryInterface_Param : access TagHelperFactoryInterface_Package.TagHelperFactoryInterface'Class) is
      tagHelperFactoryInterface : constant TagHelperFactoryInterface_Access := TagHelperFactoryInterface_Access (tagHelperFactoryInterface_Param);
   begin
        This.tagRequestHelperFactoryInterface := tagHelperFactoryInterface;
   end setTagRequestHelperFactory;

   function getTagRequestHelperFactoryInterface (This : in out TableTag) return TagHelperFactoryInterface_Access is
   begin
        return This.tagRequestHelperFactoryInterface;
   end getTagRequestHelperFactoryInterface;

   procedure setCurrent (This : in out TableTag; current : Integer) is
   begin
        This.current := current;
   end setCurrent;

   function getCurrent (This : in out TableTag) return Integer is
   begin
        return This.current;
   end getCurrent;

   procedure setTotal (This : in out TableTag; total : Integer) is
   begin
        This.total := total;
   end setTotal;

   function getTotal (This : in out TableTag) return Integer is
   begin
        return This.total;
   end getTotal;

   --  throws LicensingException
   function drop (This : in out TableTag) return Unbounded_String is
      anyType : Java_Object_Access;
      addressHelperClass : Ada.Tags.Tag;
      method : Method_Access;
      result : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            anyType := TableTag'Class (This).getTagHelperFactoryInterface.getInstance (TableTag'Class (This).getPropertiesHashMap, This.pageContext);
            addressHelperClass := anyType.all'Tag;
            method := addressHelperClass.getMethod (To_Unbounded_String ("drop"), null);
            result := Java_Unbox (method.invoke (anyType, null));
            return result;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to drop table");
            if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.SQLTAGSERROR) then
                This.TableTag_Field_logUtil.put (This.commonStrings.EXCEPTION_Id, TableTag_Access'(This'Unchecked_Access), This.commonStrings.DROP, e);
            end if;
            return error;
                end;
        end;
   end drop;

   --  throws LicensingException
   function create (This : in out TableTag) return Unbounded_String is
      anyType : Java_Object_Access;
      addressHelperClass : Ada.Tags.Tag;
      method : Method_Access;
      result : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            anyType := TableTag'Class (This).getTagHelperFactoryInterface.getInstance (TableTag'Class (This).getPropertiesHashMap, This.pageContext);
            addressHelperClass := anyType.all'Tag;
            method := addressHelperClass.getMethod (To_Unbounded_String ("create"), null);
            result := Java_Unbox (method.invoke (anyType, null));
            return result;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to create table");
            if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.SQLTAGSERROR) then
                This.TableTag_Field_logUtil.put (This.commonStrings.EXCEPTION_Id, TableTag_Access'(This'Unchecked_Access), To_Unbounded_String ("create()"), e);
            end if;
            return error;
                end;
        end;
   end create;

   --  throws LicensingException
   function restore (This : in out TableTag) return Unbounded_String is
      anyType : Java_Object_Access;
      addressHelperClass : Ada.Tags.Tag;
      method : Method_Access;
      result : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            anyType := TableTag'Class (This).getTagHelperFactoryInterface.getInstance (TableTag'Class (This).getPropertiesHashMap, This.pageContext);
            addressHelperClass := anyType.all'Tag;
            method := addressHelperClass.getMethod (To_Unbounded_String ("restore"), null);
            result := Java_Unbox (method.invoke (anyType, null));
            return result;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to restore backup");
            if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.SQLTAGSERROR) then
                This.TableTag_Field_logUtil.put (This.commonStrings.EXCEPTION_Id, TableTag_Access'(This'Unchecked_Access), To_Unbounded_String ("restore()"), e);
            end if;
            return error;
                end;
        end;
   end restore;

   --  throws LicensingException
   function backup (This : in out TableTag) return Unbounded_String is
      anyType : Java_Object_Access;
      addressHelperClass : Ada.Tags.Tag;
      method : Method_Access;
      result : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            anyType := TableTag'Class (This).getTagHelperFactoryInterface.getInstance (TableTag'Class (This).getPropertiesHashMap, This.pageContext);
            addressHelperClass := anyType.all'Tag;
            method := addressHelperClass.getMethod (To_Unbounded_String ("backup"), null);
            result := Java_Unbox (method.invoke (anyType, null));
            return result;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to make backup");
            if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.SQLTAGSERROR) then
                This.TableTag_Field_logUtil.put (This.commonStrings.EXCEPTION_Id, TableTag_Access'(This'Unchecked_Access), To_Unbounded_String ("backup()"), e);
            end if;
            return error;
                end;
        end;
   end backup;

   --  throws LicensingException
   function insert (This : in out TableTag) return Unbounded_String is
      helperClass : Ada.Tags.Tag;
      method : Method_Access;
      result : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            helperClass := This.requestObject.all'Tag;
            method := helperClass.getMethod (To_Unbounded_String ("insert"), null);
            result := Java_Unbox (method.invoke (This.requestObject, null));
            return result;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to insert");
            if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.SQLTAGSERROR) then
                This.TableTag_Field_logUtil.put (This.commonStrings.EXCEPTION_Id, TableTag_Access'(This'Unchecked_Access), To_Unbounded_String ("insert()"), e);
            end if;
            return error;
                end;
        end;
   end insert;

   --  throws LicensingException
   function delete (This : in out TableTag) return Unbounded_String is
      helperClass : Ada.Tags.Tag;
      method : Method_Access;
      result : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            helperClass := This.requestObject.all'Tag;
            method := helperClass.getMethod (This.commonStrings.delete, null);
            result := Java_Unbox (method.invoke (This.requestObject, null));
            return result;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to delete");
            if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.SQLTAGSERROR) then
                This.TableTag_Field_logUtil.put (This.commonStrings.EXCEPTION_Id, TableTag_Access'(This'Unchecked_Access), To_Unbounded_String ("delete()"), e);
            end if;
            return error;
                end;
        end;
   end delete;

   --  throws LicensingException
   function update (This : in out TableTag) return Unbounded_String is
      helperClass : Ada.Tags.Tag;
      method : Method_Access;
      result : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            helperClass := This.requestObject.all'Tag;
            method := helperClass.getMethod (To_Unbounded_String ("update"), null);
            result := Java_Unbox (method.invoke (This.requestObject, null));
            return result;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to update");
            if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.SQLTAGSERROR) then
                This.TableTag_Field_logUtil.put (This.commonStrings.EXCEPTION_Id, TableTag_Access'(This'Unchecked_Access), To_Unbounded_String ("update()"), e);
            end if;
            return error;
                end;
        end;
   end update;

   --  throws JspTagException
   function doStartTag (This : in out TableTag) return Integer is
      request : HttpServletRequest_Access;
      stringBuffer : StringMaker_Access;
      output : Unbounded_String;
   begin
        begin
            if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.JSPTAG) then
                request := HttpServletRequest_Access (This.pageContext.getRequest);
                stringBuffer := StringMaker_Package.Create;
                stringBuffer.append (To_Unbounded_String ("TableTag Helper: "));
                stringBuffer.append (To_Unbounded_String (Ada.Tags.Expanded_Name (TableTag'Class (This).getTagHelperFactoryInterface.all'Tag)));
                stringBuffer.append (To_Unbounded_String (" Request URI: "));
                stringBuffer.append (request.getRequestURI);
                This.TableTag_Field_logUtil.putF (stringBuffer.toString, TableTag_Access'(This'Unchecked_Access), This.CommandTag_Field_tagStrings.DO_START_TAG);
            end if;
            if (not admin.taghelpers.TagHelperFactoryInterface_Package_References."=" (TableTag'Class (This).getTagRequestHelperFactoryInterface, null)) then
                if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.JSPTAG) then
                    This.TableTag_Field_logUtil.putF (To_Unbounded_String ("TableTag RequestHelper: ") & To_Unbounded_String (Ada.Tags.Expanded_Name (TableTag'Class (This).getTagRequestHelperFactoryInterface.all'Tag)), TableTag_Access'(This'Unchecked_Access), This.CommandTag_Field_tagStrings.DO_START_TAG);
                end if;
            else
                if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.JSPTAG) then
                    This.TableTag_Field_logUtil.putF (To_Unbounded_String ("TableTag RequestHelper: null"), TableTag_Access'(This'Unchecked_Access), This.CommandTag_Field_tagStrings.DO_START_TAG);
                end if;
            end if;
            if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.JSPTAG) then
                This.TableTag_Field_logUtil.putF (To_Unbounded_String ("TableTag this.getCommand(): ") & TableTag'Class (This).getCommand, TableTag_Access'(This'Unchecked_Access), This.CommandTag_Field_tagStrings.DO_START_TAG);
            end if;
            if TableTag'Class (This).isEnabled then
                if (TableTag'Class (This).getCommand) /= (Null_Unbounded_String) then
                    if (((((Java_Compare_To (TableTag'Class (This).getCommand, This.commonStrings.INSERT)) = (0)) or else ((Java_Compare_To (TableTag'Class (This).getCommand, SqlStrings_Package.getInstance.INSERT_INTO)) = (0))) or else ((Java_Compare_To (TableTag'Class (This).getCommand, This.commonStrings.DELETE)) = (0))) or else ((Java_Compare_To (TableTag'Class (This).getCommand, This.commonStrings.UPDATE)) = (0))) or else ((Java_Compare_To (TableTag'Class (This).getCommand, SqlStrings_Package.getInstance.UPDATE)) = (0)) then
                        This.requestObject := TableTag'Class (This).getTagRequestHelperFactoryInterface.getInstance (TableTag'Class (This).getPropertiesHashMap, This.pageContext);
                    end if;
                    if ((Java_Compare_To (TableTag'Class (This).getCommand, This.commonStrings.INSERT)) = (0)) or else ((Java_Compare_To (TableTag'Class (This).getCommand, SqlStrings_Package.getInstance.INSERT_INTO)) = (0)) then
                        declare Java_Result renames TableTag'Class (This).insert; pragma Unreferenced (Java_Result); begin null; end;
                    elsif (Java_Compare_To (TableTag'Class (This).getCommand, This.commonStrings.DELETE)) = (0) then
                        declare Java_Result renames TableTag'Class (This).delete; pragma Unreferenced (Java_Result); begin null; end;
                    elsif ((Java_Compare_To (TableTag'Class (This).getCommand, This.commonStrings.UPDATE)) = (0)) or else ((Java_Compare_To (TableTag'Class (This).getCommand, SqlStrings_Package.getInstance.UPDATE)) = (0)) then
                        declare Java_Result renames TableTag'Class (This).update; pragma Unreferenced (Java_Result); begin null; end;
                    end if;
                    if (Java_Compare_To (TableTag'Class (This).getCommand, GLOBALS2_Package.BACKUP)) = (0) then
                        output := TableTag'Class (This).backup;
                        if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.JSPTAGEXTRAOUTPUT) then
                            This.pageContext.getOut.print (output & To_Unbounded_String ("<br />"));
                        end if;
                        return SKIP_BODY;
                    elsif (Java_Compare_To (TableTag'Class (This).getCommand, GLOBALS2_Package.RESTORE)) = (0) then
                        TableTag'Class (This).getPropertiesHashMap.put (To_Unbounded_String ("current"), TableTag'Class (This).getCurrent);
                        TableTag'Class (This).getPropertiesHashMap.put (To_Unbounded_String ("total"), TableTag'Class (This).getTotal);
                        output := TableTag'Class (This).restore;
                        if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.JSPTAGEXTRAOUTPUT) then
                            This.pageContext.getOut.print (output & To_Unbounded_String ("<br />"));
                        end if;
                        return SKIP_BODY;
                    elsif (Java_Compare_To (TableTag'Class (This).getCommand, This.commonStrings.DROP)) = (0) then
                        output := TableTag'Class (This).drop;
                        if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.JSPTAGEXTRAOUTPUT) then
                            This.pageContext.getOut.print (output & To_Unbounded_String ("<br />"));
                        end if;
                        return SKIP_BODY;
                    elsif (Java_Compare_To (TableTag'Class (This).getCommand, This.commonStrings.CREATE)) = (0) then
                        output := TableTag'Class (This).create;
                        if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.JSPTAGEXTRAOUTPUT) then
                            This.pageContext.getOut.print (output & To_Unbounded_String ("<br />"));
                        end if;
                        return SKIP_BODY;
                    elsif (Java_Compare_To (TableTag'Class (This).getCommand, This.commonStrings.INSERT)) = (0) then
                        output := TableTag'Class (This).insert;
                        if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.JSPTAGEXTRAOUTPUT) then
                            This.pageContext.getOut.print (output & To_Unbounded_String ("<br />"));
                        end if;
                    elsif (Java_Compare_To (TableTag'Class (This).getCommand, This.commonStrings.DELETE)) = (0) then
                        output := TableTag'Class (This).delete;
                        if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.JSPTAGEXTRAOUTPUT) then
                            This.pageContext.getOut.print (output & To_Unbounded_String ("<br />"));
                        end if;
                    elsif (Java_Compare_To (TableTag'Class (This).getCommand, This.commonStrings.UPDATE)) = (0) then
                        output := TableTag'Class (This).update;
                        if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.JSPTAGEXTRAOUTPUT) then
                            This.pageContext.getOut.print (output & To_Unbounded_String ("<br />"));
                        end if;
                    end if;
                end if;
            end if;
            return EVAL_BODY_INCLUDE;
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

end admin.tags.TableTag_Package;


