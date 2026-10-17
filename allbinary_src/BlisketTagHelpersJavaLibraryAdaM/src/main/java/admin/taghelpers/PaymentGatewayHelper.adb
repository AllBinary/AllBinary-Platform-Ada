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


package body admin.taghelpers.PaymentGatewayHelper_Package is

   procedure Initialize_Fields (This : in out PaymentGatewayHelper'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.weblisketSession := null;
      This.httpServletRequest := null;
      This.portion := null;
   end Initialize_Fields;


   procedure Initialize (This : in out PaymentGatewayHelper'Class; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) is
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
      pageContext : constant PageContext_Access := PageContext_Access (pageContext_Param);
   begin
      BasicTable_Package.Initialize (This);
      Initialize_Fields (This);
        begin
            This.weblisketSession := WeblisketSession_Package.Create (hashMap, pageContext);
            This.httpServletRequest := HttpServletRequest_Access (pageContext.getRequest);
            This.portion := Portion_Package.Create (hashMap);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.PAYMENTERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, PaymentGatewayHelper_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR, e);
            end if;
            Java_Throw (e);
                end;
        end;
   end Initialize;

   function Create (hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return PaymentGatewayHelper_Access is
      This : constant PaymentGatewayHelper_Access := new PaymentGatewayHelper;
   begin
      PaymentGatewayHelper_Package.Initialize (This.all, hashMap_Param, pageContext_Param);
      return This;
   end Create;

   function insert (This : in out PaymentGatewayHelper) return Unbounded_String is
      paymentGatewayInterface : PaymentGatewayInterface_Access;
      success : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            paymentGatewayInterface := PaymentGatewayInterfaceFactory_Package.Create.getInstance (This.httpServletRequest);
            paymentGatewayInterface.setStoreName (This.weblisketSession.getStoreName);
            PaymentGatewayEntityFactory_Package.getInstance.add (paymentGatewayInterface);
            success := To_Unbounded_String ("Successfully Added New Payment Gateway");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, PaymentGatewayHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("insert()"));
            end if;
            return success & To_Unbounded_String ("<br/>");
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to add");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, PaymentGatewayHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("add()"), e);
            end if;
            return error & To_Unbounded_String ("<br>") & To_Unbounded_String ("Exception: ") & Java_Image (e) & To_Unbounded_String ("<br>");
                end;
        end;
   end insert;

   function update (This : in out PaymentGatewayHelper) return Unbounded_String is
      paymentGatewayInterface : PaymentGatewayInterface_Access;
      stringBuffer : StringMaker_Access;
      success : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            paymentGatewayInterface := PaymentGatewayInterfaceFactory_Package.Create.getInstance (This.httpServletRequest);
            paymentGatewayInterface.setStoreName (This.weblisketSession.getStoreName);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                stringBuffer := StringMaker_Package.Create;
                stringBuffer.append (To_Unbounded_String ("Gateway Name: "));
                stringBuffer.append (paymentGatewayInterface.getName);
                stringBuffer.append (To_Unbounded_String (" HashMap="));
                stringBuffer.append (paymentGatewayInterface.toHashMap (True).toString);
                This.logUtil.putF (stringBuffer.toString, PaymentGatewayHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("update()"));
            end if;
            PaymentGatewayEntityFactory_Package.getInstance.update (paymentGatewayInterface);
            success := To_Unbounded_String ("Successfully Updated Payment Gateway information");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, PaymentGatewayHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("update()"));
            end if;
            return success & To_Unbounded_String ("<br/>");
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to update payment gateway information");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, PaymentGatewayHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("update()"), e);
            end if;
            return error & To_Unbounded_String ("<br/>") & To_Unbounded_String ("Exception: ") & Java_Image (e) & To_Unbounded_String ("<br/>");
                end;
        end;
   end update;

   function delete (This : in out PaymentGatewayHelper) return Unbounded_String is
      paymentGatewayInterface : PaymentGatewayInterface_Access;
      storeName : Unbounded_String;
      gatewayName : Unbounded_String;
      stringBuffer : StringMaker_Access;
      success : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            paymentGatewayInterface := PaymentGatewayInterfaceFactory_Package.Create.getInstance (This.httpServletRequest);
            paymentGatewayInterface.setStoreName (This.weblisketSession.getStoreName);
            storeName := paymentGatewayInterface.getStoreName;
            gatewayName := paymentGatewayInterface.getName;
            PaymentGatewayEntityFactory_Package.getInstance.remove (storeName, BasicPaymentTypeUtil_Package.getInstance.get (gatewayName));
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (To_Unbounded_String ("Successfully Removed payment gateway where store name="));
            stringBuffer.append (storeName);
            stringBuffer.append (To_Unbounded_String (" and gateway name="));
            stringBuffer.append (gatewayName);
            success := stringBuffer.toString;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, PaymentGatewayHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("delete()"));
            end if;
            return success & To_Unbounded_String ("<br/>");
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to remove payment gateway from table");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, PaymentGatewayHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("remove()"), e);
            end if;
            return error & To_Unbounded_String ("<br/>") & To_Unbounded_String ("Exception: ") & Java_Image (e) & To_Unbounded_String ("<br>");
                end;
        end;
   end delete;

   function drop (This : in out PaymentGatewayHelper) return Unbounded_String is
      success : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            success := PaymentGatewayEntityFactory_Package.getInstance.dropTable;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, PaymentGatewayHelper_Access'(This'Unchecked_Access), This.commonStrings.DROP);
            end if;
            return success;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to drop payment transaction result table");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, PaymentGatewayHelper_Access'(This'Unchecked_Access), This.commonStrings.DROP, e);
            end if;
            return error;
                end;
        end;
   end drop;

   function create (This : in out PaymentGatewayHelper) return Unbounded_String is
      success : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            success := PaymentGatewayEntityFactory_Package.getInstance.createTable;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, PaymentGatewayHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("create()"));
            end if;
            return success;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to create payment transaction result table");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, PaymentGatewayHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("create()"), e);
            end if;
            return error;
                end;
        end;
   end create;

   function restore (This : in out PaymentGatewayHelper) return Unbounded_String is
      success : Unbounded_String;
      result : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            success := To_Unbounded_String ("Restore Successful");
            result := AbSqlTableUtil_Package.getInstance.restoreTable (PaymentGatewayEntityFactory_Package.getInstance, This.portion);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, PaymentGatewayHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("restore()"));
            end if;
            return result;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to restore backup");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, PaymentGatewayHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("restore()"), e);
            end if;
            return error;
                end;
        end;
   end restore;

   function backup (This : in out PaymentGatewayHelper) return Unbounded_String is
      success : Unbounded_String;
      result : Unbounded_String;
      error : Unbounded_String;
   begin
        begin
            success := To_Unbounded_String ("Restore Successful");
            result := AbSqlTableUtil_Package.getInstance.backupTable (PaymentGatewayEntityFactory_Package.getInstance);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGS) then
                This.logUtil.putF (success, PaymentGatewayHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("backup()"));
            end if;
            return result;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            error := To_Unbounded_String ("Failed to make backup");
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLTAGSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, PaymentGatewayHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("backup()"), e);
            end if;
            return error;
                end;
        end;
   end backup;

end admin.taghelpers.PaymentGatewayHelper_Package;


