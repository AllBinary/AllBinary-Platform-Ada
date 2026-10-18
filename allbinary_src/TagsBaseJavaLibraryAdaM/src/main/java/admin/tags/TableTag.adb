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


package body admin.tags.TableTag_Package is

   procedure Initialize_Fields (This : in out TableTag'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.enabled := Null_Unbounded_String;
      This.tagHelperFactoryInterface := null;
      This.tagRequestHelperFactoryInterface := null;
      This.requestObject := null;
      This.current := null;
      This.total := null;
   end Initialize_Fields;


   procedure Initialize (This : in out TableTag'Class) is
   begin
      PropertiesTag_Package.Initialize (This);
      Initialize_Fields (This);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.JSPTAG) then
            This.logUtil.putF (This.commonStrings.START, TableTag_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
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
            if (BooleanUtil_Package.getInstance.getFromString (This.enabled)) or else ((This.enabled.compareTo (To_Unbounded_String ("on"))) = (0)) then
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
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, TableTag_Access'(This'Unchecked_Access), This.commonStrings.DROP, e);
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
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, TableTag_Access'(This'Unchecked_Access), To_Unbounded_String ("create()"), e);
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
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, TableTag_Access'(This'Unchecked_Access), To_Unbounded_String ("restore()"), e);
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
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, TableTag_Access'(This'Unchecked_Access), To_Unbounded_String ("backup()"), e);
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
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, TableTag_Access'(This'Unchecked_Access), To_Unbounded_String ("insert()"), e);
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
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, TableTag_Access'(This'Unchecked_Access), To_Unbounded_String ("delete()"), e);
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
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, TableTag_Access'(This'Unchecked_Access), To_Unbounded_String ("update()"), e);
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
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.JSPTAG) then
                request := HttpServletRequest_Access (This.pageContext.getRequest);
                stringBuffer := StringMaker_Package.Create;
                stringBuffer.append (To_Unbounded_String ("TableTag Helper: "));
                stringBuffer.append (To_Unbounded_String (Ada.Tags.Expanded_Name (TableTag'Class (This).getTagHelperFactoryInterface.all'Tag)));
                stringBuffer.append (To_Unbounded_String (" Request URI: "));
                stringBuffer.append (request.getRequestURI);
                This.logUtil.putF (stringBuffer.toString, TableTag_Access'(This'Unchecked_Access), This.tagStrings.DO_START_TAG);
            end if;
            if (TableTag'Class (This).getTagRequestHelperFactoryInterface) /= (null) then
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.JSPTAG) then
                    This.logUtil.putF (To_Unbounded_String ("TableTag RequestHelper: ") & To_Unbounded_String (Ada.Tags.Expanded_Name (TableTag'Class (This).getTagRequestHelperFactoryInterface.all'Tag)), TableTag_Access'(This'Unchecked_Access), This.tagStrings.DO_START_TAG);
                end if;
            else
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.JSPTAG) then
                    This.logUtil.putF (To_Unbounded_String ("TableTag RequestHelper: null"), TableTag_Access'(This'Unchecked_Access), This.tagStrings.DO_START_TAG);
                end if;
            end if;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.JSPTAG) then
                This.logUtil.putF (To_Unbounded_String ("TableTag this.getCommand(): ") & Java_Image (TableTag'Class (This).getCommand), TableTag_Access'(This'Unchecked_Access), This.tagStrings.DO_START_TAG);
            end if;
            if TableTag'Class (This).isEnabled then
                if (TableTag'Class (This).getCommand) /= (null) then
                    if (((((TableTag'Class (This).getCommand.compareTo (This.commonStrings.INSERT)) = (0)) or else ((TableTag'Class (This).getCommand.compareTo (SqlStrings_Package.getInstance.INSERT_INTO)) = (0))) or else ((TableTag'Class (This).getCommand.compareTo (This.commonStrings.DELETE)) = (0))) or else ((TableTag'Class (This).getCommand.compareTo (This.commonStrings.UPDATE)) = (0))) or else ((TableTag'Class (This).getCommand.compareTo (SqlStrings_Package.getInstance.UPDATE)) = (0)) then
                        This.requestObject := TableTag'Class (This).getTagRequestHelperFactoryInterface.getInstance (TableTag'Class (This).getPropertiesHashMap, This.pageContext);
                    end if;
                    if ((TableTag'Class (This).getCommand.compareTo (This.commonStrings.INSERT)) = (0)) or else ((TableTag'Class (This).getCommand.compareTo (SqlStrings_Package.getInstance.INSERT_INTO)) = (0)) then
                        TableTag'Class (This).insert;
                    elsif (TableTag'Class (This).getCommand.compareTo (This.commonStrings.DELETE)) = (0) then
                        TableTag'Class (This).delete;
                    elsif ((TableTag'Class (This).getCommand.compareTo (This.commonStrings.UPDATE)) = (0)) or else ((TableTag'Class (This).getCommand.compareTo (SqlStrings_Package.getInstance.UPDATE)) = (0)) then
                        TableTag'Class (This).update;
                    end if;
                    if (TableTag'Class (This).getCommand.compareTo (org_Package.allbinary.globals.GLOBALS2.BACKUP)) = (0) then
                        output := TableTag'Class (This).backup;
                        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.JSPTAGEXTRAOUTPUT) then
                            This.pageContext.getOut.print (output & To_Unbounded_String ("<br />"));
                        end if;
                        return SKIP_BODY;
                    elsif (TableTag'Class (This).getCommand.compareTo (org_Package.allbinary.globals.GLOBALS2.RESTORE)) = (0) then
                        TableTag'Class (This).getPropertiesHashMap.put (To_Unbounded_String ("current"), TableTag'Class (This).getCurrent);
                        TableTag'Class (This).getPropertiesHashMap.put (To_Unbounded_String ("total"), TableTag'Class (This).getTotal);
                        output := TableTag'Class (This).restore;
                        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.JSPTAGEXTRAOUTPUT) then
                            This.pageContext.getOut.print (output & To_Unbounded_String ("<br />"));
                        end if;
                        return SKIP_BODY;
                    elsif (TableTag'Class (This).getCommand.compareTo (This.commonStrings.DROP)) = (0) then
                        output := TableTag'Class (This).drop;
                        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.JSPTAGEXTRAOUTPUT) then
                            This.pageContext.getOut.print (output & To_Unbounded_String ("<br />"));
                        end if;
                        return SKIP_BODY;
                    elsif (TableTag'Class (This).getCommand.compareTo (This.commonStrings.CREATE)) = (0) then
                        output := TableTag'Class (This).create;
                        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.JSPTAGEXTRAOUTPUT) then
                            This.pageContext.getOut.print (output & To_Unbounded_String ("<br />"));
                        end if;
                        return SKIP_BODY;
                    elsif (TableTag'Class (This).getCommand.compareTo (This.commonStrings.INSERT)) = (0) then
                        output := TableTag'Class (This).insert;
                        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.JSPTAGEXTRAOUTPUT) then
                            This.pageContext.getOut.print (output & To_Unbounded_String ("<br />"));
                        end if;
                    elsif (TableTag'Class (This).getCommand.compareTo (This.commonStrings.DELETE)) = (0) then
                        output := TableTag'Class (This).delete;
                        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.JSPTAGEXTRAOUTPUT) then
                            This.pageContext.getOut.print (output & To_Unbounded_String ("<br />"));
                        end if;
                    elsif (TableTag'Class (This).getCommand.compareTo (This.commonStrings.UPDATE)) = (0) then
                        output := TableTag'Class (This).update;
                        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.JSPTAGEXTRAOUTPUT) then
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


