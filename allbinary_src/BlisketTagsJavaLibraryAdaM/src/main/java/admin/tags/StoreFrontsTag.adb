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
        StoreFrontsTag'Class (This).setTagHelperFactory (StoreFrontsHelperFactory_Package.Create);
        StoreFrontsTag'Class (This).setTagRequestHelperFactory (StoreFrontsRequestHelperFactory_Package.Create);
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
            anyType := StoreFrontsTag'Class (This).getTagHelperFactoryInterface.getInstance (StoreFrontsTag'Class (This).getPropertiesHashMap, This.pageContext);
            method := anyType.all'Tag.getMethod (To_Unbounded_String ("generateSelect"), null);
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
   end generateSelect;

   --  throws LicensingException
   function install (This : in out StoreFrontsTag) return Unbounded_String is
      anyType : Java_Object_Access;
      method : Method_Access;
      result : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            anyType := StoreFrontsTag'Class (This).getTagRequestHelperFactoryInterface.getInstance (StoreFrontsTag'Class (This).getPropertiesHashMap, This.pageContext);
            method := anyType.all'Tag.getMethod (To_Unbounded_String ("install"), null);
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
   end install;

   --  throws LicensingException
   function sendStoreCreatedEmails (This : in out StoreFrontsTag) return Unbounded_String is
      anyType : Java_Object_Access;
      method : Method_Access;
      result : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            anyType := StoreFrontsTag'Class (This).getTagRequestHelperFactoryInterface.getInstance (StoreFrontsTag'Class (This).getPropertiesHashMap, This.pageContext);
            method := anyType.all'Tag.getMethod (To_Unbounded_String ("sendStoreCreatedEmails"), null);
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
   end sendStoreCreatedEmails;

   --  throws JspTagException
   function doStartTag (This : in out StoreFrontsTag) return Integer is
      storeFrontData : StoreFrontData_Access;
   begin
        begin
            if StoreFrontsTag'Class (This).isEnabled then
                if (StoreFrontsTag'Class (This).getCommand) /= (null) then
                    storeFrontData := StoreFrontData_Package.getInstance;
                    if (StoreFrontsTag'Class (This).getCommand.compareTo (storeFrontData.SELECT_Id)) = (0) then
                        This.pageContext.getOut.print (StoreFrontsTag'Class (This).generateSelect);
                    elsif (StoreFrontsTag'Class (This).getCommand.compareTo (storeFrontData.INSTALL)) = (0) then
                        StoreFrontsTag'Class (This).getPropertiesHashMap.put (To_Unbounded_String ("current"), StoreFrontsTag'Class (This).getCurrent);
                        StoreFrontsTag'Class (This).getPropertiesHashMap.put (To_Unbounded_String ("total"), StoreFrontsTag'Class (This).getTotal);
                        if (StoreFrontsTag'Class (This).getCurrent.intValue) = (StoreFrontsTag'Class (This).getTotal.intValue) then
                            return TagSupport_Package.EVAL_BODY_INCLUDE;
                        end if;
                        StoreFrontsTag'Class (This).install;
                    elsif (StoreFrontsTag'Class (This).getCommand.compareTo (storeFrontData.INSTALL_COMPLETE)) = (0) then
                        StoreFrontsTag'Class (This).sendStoreCreatedEmails;
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


