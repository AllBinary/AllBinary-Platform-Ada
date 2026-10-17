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


package body admin.tags.StoreFrontsTag_Package is

   procedure Initialize_Fields (This : in out StoreFrontsTag'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out StoreFrontsTag'Class) is
   begin
      TableTag_Package.Initialize (This);
      Initialize_Fields (This);
        This.setTagHelperFactory (StoreFrontsHelperFactory_Package.Create);
        This.setTagRequestHelperFactory (StoreFrontsRequestHelperFactory_Package.Create);
   end Initialize;

   function Create return StoreFrontsTag_Access is
      This : constant StoreFrontsTag_Access := new StoreFrontsTag;
   begin
      StoreFrontsTag_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws LicensingException
   function generateSelect (This : in out StoreFrontsTag) return Unbounded_String is
      anyType : Java_Object_Access;
      method : Method_Access;
      result : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            anyType := This.getTagHelperFactoryInterface.getInstance (This.getPropertiesHashMap, This.pageContext);
            method := anyType.all'Tag.getMethod (To_Unbounded_String ("generateSelect"), null);
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
   end generateSelect;

   --  throws LicensingException
   function install (This : in out StoreFrontsTag) return Unbounded_String is
      anyType : Java_Object_Access;
      method : Method_Access;
      result : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            anyType := This.getTagRequestHelperFactoryInterface.getInstance (This.getPropertiesHashMap, This.pageContext);
            method := anyType.all'Tag.getMethod (To_Unbounded_String ("install"), null);
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
   end install;

   --  throws LicensingException
   function sendStoreCreatedEmails (This : in out StoreFrontsTag) return Unbounded_String is
      anyType : Java_Object_Access;
      method : Method_Access;
      result : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            anyType := This.getTagRequestHelperFactoryInterface.getInstance (This.getPropertiesHashMap, This.pageContext);
            method := anyType.all'Tag.getMethod (To_Unbounded_String ("sendStoreCreatedEmails"), null);
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
   end sendStoreCreatedEmails;

   --  throws JspTagException
   function doStartTag (This : in out StoreFrontsTag) return Integer is
      storeFrontData : StoreFrontData_Access;
   begin
        begin
            if This.isEnabled then
                if (This.getCommand) /= (null) then
                    storeFrontData := StoreFrontData_Package.getInstance;
                    if (This.getCommand.compareTo (storeFrontData.SELECT_Id)) = (0) then
                        This.pageContext.getOut.print (This.generateSelect);
                    elsif (This.getCommand.compareTo (storeFrontData.INSTALL)) = (0) then
                        This.getPropertiesHashMap.put (To_Unbounded_String ("current"), This.getCurrent);
                        This.getPropertiesHashMap.put (To_Unbounded_String ("total"), This.getTotal);
                        if (This.getCurrent.intValue) = (This.getTotal.intValue) then
                            return TagSupport_Package.EVAL_BODY_INCLUDE;
                        end if;
                        This.install;
                    elsif (This.getCommand.compareTo (storeFrontData.INSTALL_COMPLETE)) = (0) then
                        This.sendStoreCreatedEmails;
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

end admin.tags.StoreFrontsTag_Package;


