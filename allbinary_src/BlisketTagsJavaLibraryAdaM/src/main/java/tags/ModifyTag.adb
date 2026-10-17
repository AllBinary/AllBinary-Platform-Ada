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


package body tags.ModifyTag_Package is

   procedure Initialize_Fields (This : in out ModifyTag'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out ModifyTag'Class; tagHelperFactoryInterface : TagHelperFactoryInterface_Access) is
   begin
        HelperTag_Package.Initialize (This, tagHelperFactoryInterface);
        Initialize_Fields (This);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.JSPTAG) then
            This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, This.commonStrings.CONSTRUCTOR);
        end if;
   end Initialize;

   function Create (tagHelperFactoryInterface : TagHelperFactoryInterface_Access) return ModifyTag_Access is
      This : constant ModifyTag_Access := new ModifyTag;
   begin
      ModifyTag_Package.Initialize (This.all, tagHelperFactoryInterface);
      return This;
   end Create;

   --  throws LicensingException
   function insert (This : in out ModifyTag) return Unbounded_String is
      helperClass : Ada.Tags.Tag;
      method : Method_Access;
      result : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            helperClass := This.getHelper.all'Tag;
            method := helperClass.getMethod (To_Unbounded_String ("insert"), null);
            result := Unbounded_String (method.invoke (This.getHelper, null));
            return result;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to insert");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("insert()"), e);
            end if;
            return error;
                end;
        end;
   end insert;

   --  throws LicensingException
   function delete (This : in out ModifyTag) return Unbounded_String is
      helperClass : Ada.Tags.Tag;
      method : Method_Access;
      result : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            helperClass := This.getHelper.all'Tag;
            method := helperClass.getMethod (This.commonStrings.delete, null);
            result := Unbounded_String (method.invoke (This.getHelper, null));
            return result;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to delete");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("delete()"), e);
            end if;
            return error;
                end;
        end;
   end delete;

   --  throws LicensingException
   function update (This : in out ModifyTag) return Unbounded_String is
      helperClass : Ada.Tags.Tag;
      method : Method_Access;
      result : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            helperClass := This.getHelper.all'Tag;
            method := helperClass.getMethod (To_Unbounded_String ("update"), null);
            result := Unbounded_String (method.invoke (This.getHelper, null));
            return result;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to update");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("update()"), e);
            end if;
            return error;
                end;
        end;
   end update;

   --  throws JspTagException
   function doStartTag (This : in out ModifyTag) return Integer is
      request : HttpServletRequest_Access;
      stringBuffer : StringMaker_Access;
      commonStrings : CommonStrings_Access;
      output : Unbounded_String;
   begin
        begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.JSPTAG) then
                request := HttpServletRequest_Access (This.pageContext.getRequest);
                stringBuffer := StringMaker_Package.Create;
                stringBuffer.append (To_Unbounded_String ("Command: "));
                stringBuffer.append (This.getCommand);
                stringBuffer.append (To_Unbounded_String (" Request URI: "));
                stringBuffer.append (request.getRequestURI);
                This.logUtil.putF (stringBuffer.toString, This'Unchecked_Access, This.tagStrings.DO_START_TAG);
            end if;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.JSPTAG) then
                null;
            end if;
            if (This.getCommand) /= (null) then
                This.setHelper;
                commonStrings := CommonStrings_Package.getInstance;
                if (This.getCommand.compareTo (commonStrings.INSERT)) = (0) then
                    output := This.insert;
                    if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.JSPTAGEXTRAOUTPUT) then
                        This.pageContext.getOut.print (output & To_Unbounded_String ("<br />"));
                    end if;
                elsif (This.getCommand.compareTo (commonStrings.DELETE)) = (0) then
                    output := This.delete;
                    if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.JSPTAGEXTRAOUTPUT) then
                        This.pageContext.getOut.print (output & To_Unbounded_String ("<br />"));
                    end if;
                elsif (This.getCommand.compareTo (commonStrings.UPDATE)) = (0) then
                    output := This.update;
                    if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.JSPTAGEXTRAOUTPUT) then
                        This.pageContext.getOut.print (output & To_Unbounded_String ("<br />"));
                    end if;
                end if;
            end if;
            return This.EVAL_BODY_INCLUDE;
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

end tags.ModifyTag_Package;


