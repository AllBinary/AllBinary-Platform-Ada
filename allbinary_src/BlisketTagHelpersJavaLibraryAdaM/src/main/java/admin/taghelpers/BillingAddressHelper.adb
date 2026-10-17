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


package body admin.taghelpers.BillingAddressHelper_Package is

   procedure Initialize_Fields (This : in out BillingAddressHelper'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.stringUtil := StringUtil_Package.getInstance;
      
      
      This.userName := Null_Unbounded_String;
      This.streetAddress := null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out BillingAddressHelper'Class; hashMap : HashMap_Access; pageContext : PageContext_Access) is
   begin
      Table_Package.Initialize (This);
      Initialize_Fields (This);
        This.request := HttpServletRequest_Access (pageContext.getRequest);
        This.weblisketSession := WeblisketSession_Package.Create (hashMap, pageContext);
        This.portion := Portion_Package.Create (hashMap);
        This.getAddressForm;
   end Initialize;

   function Create (hashMap : HashMap_Access; pageContext : PageContext_Access) return BillingAddressHelper_Access is
      This : constant BillingAddressHelper_Access := new BillingAddressHelper;
   begin
      Initialize (This.all, hashMap, pageContext);
      return This;
   end Create;

   procedure getAddressForm (This : in out BillingAddressHelper) is
   begin
        This.userName := This.request.getParameter (UserData_Package.USERNAME);
        if (This.userName) = (Null_Unbounded_String) then
            This.userName := This.request.getParameter (WeblisketSessionData_Package.REMOVABLEUSERNAME);
        end if;
        This.streetAddress := StreetAddress_Package.Create (This.request);
   end getAddressForm;

   function drop (This : in out BillingAddressHelper) return Unbounded_String is
      success : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            success := BillingAddressesEntity_Package.Create (This.stringUtil.EMPTY_STRING).drop;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, This'Unchecked_Access, This.commonStrings.DROP);
            end if;
            return success;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to drop Admin table");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, This.commonStrings.DROP, e);
            end if;
            return error;
                end;
        end;
   end drop;

   function create (This : in out BillingAddressHelper) return Unbounded_String is
      success : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            success := BillingAddressesEntity_Package.Create (This.stringUtil.EMPTY_STRING).createTable;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, This'Unchecked_Access, To_Unbounded_String ("create()"));
            end if;
            return success;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to create user table");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("create()"), e);
            end if;
            return error;
                end;
        end;
   end create;

   function restore (This : in out BillingAddressHelper) return Unbounded_String is
      success : Unbounded_String;
      billingAddressesEntity : BillingAddressesEntity_Access;
      result : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            success := To_Unbounded_String ("Restore Successful");
            billingAddressesEntity := BillingAddressesEntity_Package.Create (StringUtil_Package.getInstance.EMPTY_STRING);
            result := AbSqlTableUtil_Package.getInstance.restoreTable (billingAddressesEntity, This.portion);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, This'Unchecked_Access, To_Unbounded_String ("restore()"));
            end if;
            return result;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to restore backup");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("restore()"), e);
            end if;
            return error;
                end;
        end;
   end restore;

   function backup (This : in out BillingAddressHelper) return Unbounded_String is
      success : Unbounded_String;
      result : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            success := To_Unbounded_String ("Backup Successful");
            result := AbSqlTableUtil_Package.getInstance.backupTable (BillingAddressesEntity_Package.Create (StringUtil_Package.getInstance.EMPTY_STRING));
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, This'Unchecked_Access, To_Unbounded_String ("backup()"));
            end if;
            return result;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to make backup");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("backup()"), e);
            end if;
            return error;
                end;
        end;
   end backup;

   function insert (This : in out BillingAddressHelper) return Unbounded_String is
      success : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            success := To_Unbounded_String ("Successfully Added Billing Address");
            BillingAddressesEntityFactory_Package.getInstance.getInstance (This.weblisketSession.getUserName).add (This.streetAddress);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, This'Unchecked_Access, To_Unbounded_String ("add()"));
            end if;
            return success;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to add Billing Address");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("add()"), e);
            end if;
            return error;
                end;
        end;
   end insert;

   function update (This : in out BillingAddressHelper) return Unbounded_String is
      success : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            success := To_Unbounded_String ("Successfully Updated Billing Address");
            BillingAddressesEntityFactory_Package.getInstance.getInstance (This.weblisketSession.getUserName).update (This.streetAddress);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (To_Unbounded_String ("Successfull update of a user Billing Address table"), This'Unchecked_Access, To_Unbounded_String ("update()"));
            end if;
            return success;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed update of a User Billing Address Table");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("update()"), e);
            end if;
            return error;
                end;
        end;
   end update;

   function setToShippingAddress (This : in out BillingAddressHelper) return Unbounded_String is
      shippingAddressesEntityFactory : ShippingAddressesEntityFactory_Access;
      streetAddress : StreetAddress_Access;
      error : Unbounded_String;
   begin
        begin
            shippingAddressesEntityFactory := ShippingAddressesEntityFactory_Package.getInstance;
            streetAddress := shippingAddressesEntityFactory.getInstance (This.weblisketSession.getUserName).getDefault;
            if (streetAddress) /= (null) then
                shippingAddressesEntityFactory.getInstance (This.weblisketSession.getUserName).add (streetAddress);
            else
                return To_Unbounded_String ("No Shipping Address");
            end if;
            return StringUtil_Package.getInstance.EMPTY_STRING;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to Set Billing address to Shipping Address");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("setToShippingAddress()"), e);
            end if;
            return error;
                end;
        end;
   end setToShippingAddress;

   function delete (This : in out BillingAddressHelper) return Unbounded_String is
      success : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            success := To_Unbounded_String ("Successfully Removed Billing Address");
            BillingAddressesEntityFactory_Package.getInstance.getInstance (This.weblisketSession.getUserName).remove (This.streetAddress.getId);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, This'Unchecked_Access, To_Unbounded_String ("delete()"));
            end if;
            return success;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to remove Billing Address");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("delete()"), e);
            end if;
            return error;
                end;
        end;
   end delete;

   function set (This : in out BillingAddressHelper) return Unbounded_String is
      success : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            success := To_Unbounded_String ("Successfully Set Billing Address");
            BillingAddressesEntityFactory_Package.getInstance.getInstance (This.weblisketSession.getUserName).setDefault (This.streetAddress.getId);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, This'Unchecked_Access, To_Unbounded_String ("set()"));
            end if;
            return success;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to set billing Address");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("set()"), e);
            end if;
            return error;
                end;
        end;
   end set;

   procedure drop (This : in out BillingAddressHelper) is
      Java_Result : constant Unbounded_String := BillingAddressHelper'Class (This).drop;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end drop;

   procedure create (This : in out BillingAddressHelper) is
      Java_Result : constant Unbounded_String := BillingAddressHelper'Class (This).create;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end create;

   procedure restore (This : in out BillingAddressHelper) is
      Java_Result : constant Unbounded_String := BillingAddressHelper'Class (This).restore;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end restore;

   procedure backup (This : in out BillingAddressHelper) is
      Java_Result : constant Unbounded_String := BillingAddressHelper'Class (This).backup;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end backup;

   procedure insert (This : in out BillingAddressHelper) is
      Java_Result : constant Unbounded_String := BillingAddressHelper'Class (This).insert;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end insert;

   procedure update (This : in out BillingAddressHelper) is
      Java_Result : constant Unbounded_String := BillingAddressHelper'Class (This).update;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end update;

   procedure setToShippingAddress (This : in out BillingAddressHelper) is
      Java_Result : constant Unbounded_String := BillingAddressHelper'Class (This).setToShippingAddress;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end setToShippingAddress;

   procedure delete (This : in out BillingAddressHelper) is
      Java_Result : constant Unbounded_String := BillingAddressHelper'Class (This).delete;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end delete;

   procedure set (This : in out BillingAddressHelper) is
      Java_Result : constant Unbounded_String := BillingAddressHelper'Class (This).set;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end set;

end admin.taghelpers.BillingAddressHelper_Package;


