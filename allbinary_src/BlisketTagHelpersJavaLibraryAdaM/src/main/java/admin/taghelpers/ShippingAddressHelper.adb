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


package body admin.taghelpers.ShippingAddressHelper_Package is

   procedure Initialize_Fields (This : in out ShippingAddressHelper'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.stringUtil := StringUtil_Package.getInstance;
      
      
      This.userName := Null_Unbounded_String;
      This.streetAddress := null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out ShippingAddressHelper'Class; hashMap : HashMap_Access; pageContext : PageContext_Access) is
   begin
      BasicTable_Package.Initialize (This);
      Initialize_Fields (This);
        This.request := HttpServletRequest_Access (pageContext.getRequest);
        This.weblisketSession := WeblisketSession_Package.Create (hashMap, pageContext);
        This.portion := Portion_Package.Create (hashMap);
        This.getAddressForm;
   end Initialize;

   function Create (hashMap : HashMap_Access; pageContext : PageContext_Access) return ShippingAddressHelper_Access is
      This : constant ShippingAddressHelper_Access := new ShippingAddressHelper;
   begin
      Initialize (This.all, hashMap, pageContext);
      return This;
   end Create;

   procedure getAddressForm (This : in out ShippingAddressHelper) is
   begin
        This.userName := This.request.getParameter (UserData_Package.USERNAME);
        if (This.userName) = (Null_Unbounded_String) then
            This.userName := This.request.getParameter (WeblisketSessionData_Package.REMOVABLEUSERNAME);
        end if;
        This.streetAddress := StreetAddress_Package.Create (This.request);
   end getAddressForm;

   function drop (This : in out ShippingAddressHelper) return Unbounded_String is
      success : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            success := ShippingAddressesEntity_Package.Create (This.stringUtil.EMPTY_STRING).drop;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, This'Unchecked_Access, This.commonStrings.DROP);
            end if;
            return success;
        exception
            when e : others =>
            error := To_Unbounded_String ("Failed to drop Admin table");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, This.commonStrings.DROP, e);
            end if;
            return error;
        end;
   end drop;

   function create (This : in out ShippingAddressHelper) return Unbounded_String is
      success : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            success := ShippingAddressesEntity_Package.Create (This.stringUtil.EMPTY_STRING).createTable;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, This'Unchecked_Access, To_Unbounded_String ("create()"));
            end if;
            return success;
        exception
            when e : others =>
            error := To_Unbounded_String ("Failed to create user table");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("create()"), e);
            end if;
            return error;
        end;
   end create;

   function restore (This : in out ShippingAddressHelper) return Unbounded_String is
      success : Unbounded_String;
      result : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            success := To_Unbounded_String ("Restore Successful");
            result := AbSqlTableUtil_Package.getInstance.restoreTable (ShippingAddressesEntity_Package.Create (StringUtil_Package.getInstance.EMPTY_STRING), This.portion);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, This'Unchecked_Access, To_Unbounded_String ("restore()"));
            end if;
            return result;
        exception
            when e : others =>
            error := To_Unbounded_String ("Failed to restore backup");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("restore()"), e);
            end if;
            return error;
        end;
   end restore;

   function backup (This : in out ShippingAddressHelper) return Unbounded_String is
      success : Unbounded_String;
      result : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            success := To_Unbounded_String ("Backup Successful");
            result := AbSqlTableUtil_Package.getInstance.backupTable (ShippingAddressesEntity_Package.Create (StringUtil_Package.getInstance.EMPTY_STRING));
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, This'Unchecked_Access, To_Unbounded_String ("backup()"));
            end if;
            return result;
        exception
            when e : others =>
            error := To_Unbounded_String ("Failed to make backup");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("backup()"), e);
            end if;
            return error;
        end;
   end backup;

   function insert (This : in out ShippingAddressHelper) return Unbounded_String is
      success : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            success := To_Unbounded_String ("Successfully Added Shipping Address");
            ShippingAddressesEntityFactory_Package.getInstance.getInstance (This.weblisketSession.getUserName).add (This.streetAddress);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, This'Unchecked_Access, To_Unbounded_String ("insert"));
            end if;
            return success;
        exception
            when e : others =>
            error := To_Unbounded_String ("Failed to add Shipping streetAddress");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("insert"), e);
            end if;
            return error;
        end;
   end insert;

   function update (This : in out ShippingAddressHelper) return Unbounded_String is
      success : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            success := To_Unbounded_String ("Successfully Updated Shipping Address");
            ShippingAddressesEntityFactory_Package.getInstance.getInstance (This.weblisketSession.getUserName).update (This.streetAddress);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (To_Unbounded_String ("Successfull update of a Users Shipping Address table"), This'Unchecked_Access, To_Unbounded_String ("update()"));
            end if;
            return success;
        exception
            when e : others =>
            error := To_Unbounded_String ("Failed update of a Users Shipping Address Table");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("update"), e);
            end if;
            return error;
        end;
   end update;

   function setToBillingAddress (This : in out ShippingAddressHelper) return Unbounded_String is
      streetAddress : StreetAddress_Access;
      error : Unbounded_String;
   begin
        begin
            streetAddress := BillingAddressesEntityFactory_Package.getInstance.getInstance (This.weblisketSession.getUserName).getDefault;
            if (streetAddress) /= (null) then
                ShippingAddressesEntityFactory_Package.getInstance.getInstance (This.weblisketSession.getUserName).add (streetAddress);
            else
                return To_Unbounded_String ("No Billing Address");
            end if;
            return StringUtil_Package.getInstance.EMPTY_STRING;
        exception
            when e : others =>
            error := To_Unbounded_String ("Failed Setting Shipping address to Billing Address");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("setToBillingAddress()"), e);
            end if;
            return error;
        end;
   end setToBillingAddress;

   function delete (This : in out ShippingAddressHelper) return Unbounded_String is
      success : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            success := To_Unbounded_String ("Successfully Removed Shipping Address");
            ShippingAddressesEntityFactory_Package.getInstance.getInstance (This.weblisketSession.getUserName).remove (This.streetAddress.getId);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, This'Unchecked_Access, To_Unbounded_String ("remove()"));
            end if;
            return success;
        exception
            when e : others =>
            error := To_Unbounded_String ("Failed to remove Shipping Address");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("remove()"), e);
            end if;
            return error;
        end;
   end delete;

   function set (This : in out ShippingAddressHelper) return Unbounded_String is
      success : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            success := To_Unbounded_String ("Successfully Set Shipping Address");
            ShippingAddressesEntityFactory_Package.getInstance.getInstance (This.weblisketSession.getUserName).setDefault (This.streetAddress.getId);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, This'Unchecked_Access, To_Unbounded_String ("set()"));
            end if;
            return success;
        exception
            when e : others =>
            error := To_Unbounded_String ("Failed to set Shipping Address");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("set()"), e);
            end if;
            return error;
        end;
   end set;

   procedure drop (This : in out ShippingAddressHelper) is
      Java_Result : constant Unbounded_String := ShippingAddressHelper'Class (This).drop;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end drop;

   procedure create (This : in out ShippingAddressHelper) is
      Java_Result : constant Unbounded_String := ShippingAddressHelper'Class (This).create;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end create;

   procedure restore (This : in out ShippingAddressHelper) is
      Java_Result : constant Unbounded_String := ShippingAddressHelper'Class (This).restore;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end restore;

   procedure backup (This : in out ShippingAddressHelper) is
      Java_Result : constant Unbounded_String := ShippingAddressHelper'Class (This).backup;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end backup;

   procedure insert (This : in out ShippingAddressHelper) is
      Java_Result : constant Unbounded_String := ShippingAddressHelper'Class (This).insert;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end insert;

   procedure update (This : in out ShippingAddressHelper) is
      Java_Result : constant Unbounded_String := ShippingAddressHelper'Class (This).update;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end update;

   procedure setToBillingAddress (This : in out ShippingAddressHelper) is
      Java_Result : constant Unbounded_String := ShippingAddressHelper'Class (This).setToBillingAddress;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end setToBillingAddress;

   procedure delete (This : in out ShippingAddressHelper) is
      Java_Result : constant Unbounded_String := ShippingAddressHelper'Class (This).delete;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end delete;

   procedure set (This : in out ShippingAddressHelper) is
      Java_Result : constant Unbounded_String := ShippingAddressHelper'Class (This).set;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end set;

end admin.taghelpers.ShippingAddressHelper_Package;


