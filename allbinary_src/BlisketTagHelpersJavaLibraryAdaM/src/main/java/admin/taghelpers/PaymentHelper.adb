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


package body admin.taghelpers.PaymentHelper_Package is

   procedure Initialize_Fields (This : in out PaymentHelper'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
      
      This.value := Null_Unbounded_String;
      
   end Initialize_Fields;


   procedure Initialize (This : in out PaymentHelper'Class; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) is
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
      pageContext : constant PageContext_Access := PageContext_Access (pageContext_Param);
   begin
      Table_Package.Initialize (This);
      Initialize_Fields (This);
        This.request := HttpServletRequest_Access (pageContext.getRequest);
        This.weblisketSession := WeblisketSession_Package.Create (hashMap, pageContext);
        This.portion := Portion_Package.Create (hashMap);
        PaymentHelper'Class (This).getFormData;
   end Initialize;

   function Create (hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return PaymentHelper_Access is
      This : constant PaymentHelper_Access := new PaymentHelper;
   begin
      PaymentHelper_Package.Initialize (This.all, hashMap_Param, pageContext_Param);
      return This;
   end Create;

   procedure getFormData (This : in out PaymentHelper) is
   begin
        This.value := This.request.getParameter (To_Unbounded_String ("VALUE"));
   end getFormData;

   function insert (This : in out PaymentHelper) return Unbounded_String is
      success : Unbounded_String;
      paymentEntity : PaymentEntity_Access;
      paymentInterface : PaymentInterface_Access;
      error : Unbounded_String;
   begin
        begin
            success := To_Unbounded_String ("Successfully Added Payment");
            paymentEntity := PaymentEntityFactory_Package.getInstance.getPaymentEntityInstance;
            paymentInterface := PaymentFactory_Package.getInstance (This.request);
            paymentEntity.add (This.weblisketSession.getUserName, paymentInterface);
            paymentEntity.setDefault (This.weblisketSession.getUserName, paymentEntity.getLastId (This.weblisketSession.getUserName));
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, PaymentHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("addPayment()"));
            end if;
            return success;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to add Payment");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, PaymentHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("addPayment()"), e);
            end if;
            return error;
                end;
        end;
   end insert;

   function select_Id (This : in out PaymentHelper) return Unbounded_String is
      success : Unbounded_String;
      paymentEntity : PaymentEntity_Access;
      error : Unbounded_String;
   begin
        begin
            success := To_Unbounded_String ("Successfully Selected Payment");
            paymentEntity := PaymentEntityFactory_Package.getInstance.getPaymentEntityInstance;
            paymentEntity.setDefault (This.weblisketSession.getUserName, This.value);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, PaymentHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("selectPayment()"));
            end if;
            return success;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to select Payment");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, PaymentHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("selectPayment()"), e);
            end if;
            return error;
                end;
        end;
   end select_Id;

   function delete (This : in out PaymentHelper) return Unbounded_String is
      success : Unbounded_String;
      paymentEntity : PaymentEntity_Access;
      paymentInterface : PaymentInterface_Access;
      error : Unbounded_String;
   begin
        begin
            success := To_Unbounded_String ("Successfully Removed Payment");
            paymentEntity := PaymentEntityFactory_Package.getInstance.getPaymentEntityInstance;
            paymentEntity.remove (This.weblisketSession.getUserName, This.value);
            paymentInterface := paymentEntity.getDefault (This.weblisketSession.getUserName);
            if (paymentInterface) = (null) then
                paymentEntity.setDefault (This.weblisketSession.getUserName, paymentEntity.getLastId (This.weblisketSession.getUserName));
            end if;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, PaymentHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("removePayment()"));
            end if;
            return success;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to remove Payment");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, PaymentHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("removePayment()"), e);
            end if;
            return error;
                end;
        end;
   end delete;

   function drop (This : in out PaymentHelper) return Unbounded_String is
      paymentEntity : PaymentEntity_Access;
      success : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            paymentEntity := PaymentEntityFactory_Package.getInstance.getPaymentEntityInstance;
            success := paymentEntity.dropTable;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, PaymentHelper_Access'(This'Unchecked_Access), This.commonStrings.DROP);
            end if;
            return success;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to drop Admin table");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, PaymentHelper_Access'(This'Unchecked_Access), This.commonStrings.DROP, e);
            end if;
            return error;
                end;
        end;
   end drop;

   function create (This : in out PaymentHelper) return Unbounded_String is
      paymentEntity : PaymentEntity_Access;
      success : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            paymentEntity := PaymentEntityFactory_Package.getInstance.getPaymentEntityInstance;
            success := paymentEntity.createTable;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, PaymentHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("create()"));
            end if;
            return success;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to create user table");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, PaymentHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("create()"), e);
            end if;
            return error;
                end;
        end;
   end create;

   function restore (This : in out PaymentHelper) return Unbounded_String is
      success : Unbounded_String;
      result : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            success := To_Unbounded_String ("Restore Successful");
            result := AbSqlTableUtil_Package.getInstance.restoreTable (PaymentEntityFactory_Package.getInstance.getPaymentEntityInstance, This.portion);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, PaymentHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("restore()"));
            end if;
            return result;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to restore backup");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, PaymentHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("restore()"), e);
            end if;
            return error;
                end;
        end;
   end restore;

   function backup (This : in out PaymentHelper) return Unbounded_String is
      success : Unbounded_String;
      result : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            success := To_Unbounded_String ("Backup Successful");
            result := AbSqlTableUtil_Package.getInstance.backupTable (PaymentEntityFactory_Package.getInstance.getPaymentEntityInstance);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, PaymentHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("backup()"));
            end if;
            return result;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to make backup");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, PaymentHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("backup()"), e);
            end if;
            return error;
                end;
        end;
   end backup;

   --  throws LicensingException
   function update (This : in out PaymentHelper) return Unbounded_String is
   begin
        return This.commonStrings.NOT_IMPLEMENTED;
   end update;

end admin.taghelpers.PaymentHelper_Package;


