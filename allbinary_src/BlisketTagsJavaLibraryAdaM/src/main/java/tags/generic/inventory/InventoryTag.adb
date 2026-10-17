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


package body tags.generic_Id.inventory.InventoryTag_Package is

   procedure Initialize_Fields (This : in out InventoryTag'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out InventoryTag'Class) is
   begin
        StoreValidationTransformTag_Package.Initialize (This);
        Initialize_Fields (This);
   end Initialize;

   function Create return InventoryTag_Access is
      This : constant InventoryTag_Access := new InventoryTag;
   begin
      Initialize (This.all);
      return This;
   end Create;

   --  throws LicensingException
   procedure search (This : in out InventoryTag) is
      anyType : Java_Object_Access;
      addressHelperClass : Ada.Tags.Tag;
      method : Method_Access;
      result : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            anyType := InventoryHelperFactory_Package.Create.getInstance (This.getPropertiesHashMap, This.pageContext);
            addressHelperClass := anyType.all'Tag;
            method := addressHelperClass.getMethod (To_Unbounded_String ("search"), null);
            result := Unbounded_String (method.invoke (anyType, null));
            This.pageContext.getOut.print (result);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Java_Throw (e);
                end;
        end;
   end search;

   --  throws LicensingException
   procedure viewSummary (This : in out InventoryTag) is
      anyType : Java_Object_Access;
      helperClass : Ada.Tags.Tag;
      method : Method_Access;
      result : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            anyType := InventoryHelperFactory_Package.Create.getInstance (This.getPropertiesHashMap, This.pageContext);
            helperClass := anyType.all'Tag;
            method := helperClass.getMethod (To_Unbounded_String ("viewSummary"), null);
            result := Unbounded_String (method.invoke (anyType, null));
            This.pageContext.getOut.print (result);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Java_Throw (e);
                end;
        end;
   end viewSummary;

   --  throws JspTagException
   function doStartTag (This : in out InventoryTag) return Integer is
   begin
        begin
            if (This.getCommand) /= (null) then
                if (This.getCommand.compareTo (org_Package.allbinary.globals.GLOBALS2.SEARCH)) = (0) then
                    This.setName (To_Unbounded_String ("Basic Search Inventory View"));
                    This.setObjectFile (To_Unbounded_String ("views.generic.inventory.AutoSearchValidationInventoryView"));
                    This.search;
                    return EVAL_BODY_INCLUDE;
                elsif (This.getCommand.compareTo (org_Package.allbinary.globals.GLOBALS2.VIEWSUMMARY)) = (0) then
                    This.setName (To_Unbounded_String ("Basic Inventory View"));
                    This.setObjectFile (To_Unbounded_String ("views.generic.inventory.AutoValidationInventoryView"));
                    This.viewSummary;
                    return EVAL_BODY_INCLUDE;
                elsif (This.getCommand.compareTo (org_Package.allbinary.globals.GLOBALS2.VIEW)) = (0) then
                    This.setName (To_Unbounded_String ("Basic Inventory View"));
                    This.setObjectFile (To_Unbounded_String ("views.generic.inventory.AutoValidationInventoryView"));
                    return StoreValidationTransformTag (This).doStartTag;
                else
                    Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No Such View Command: ") & Java_Image (This.getCommand)));
                end if;
            end if;
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Command Null")));
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

   procedure doStartTag (This : in out InventoryTag) is
      Java_Result : constant Integer := InventoryTag'Class (This).doStartTag;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end doStartTag;

end tags.generic_Id.inventory.InventoryTag_Package;


