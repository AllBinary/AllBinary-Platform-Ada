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


package body org.allbinary.business.user.commerce.money.payment.PaymentFactory_Package is

   procedure Initialize_Fields (This : in out PaymentFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out PaymentFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return PaymentFactory_Access is
      This : constant PaymentFactory_Access := new PaymentFactory;
   begin
      PaymentFactory_Package.Initialize (This.all);
      return This;
   end Create;

   function getInstance (request_Param : access ServletRequest'Class) return PaymentInterface_Access is
      request : ServletRequest_Access := ServletRequest_Access (request_Param);
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
   begin
        logUtil := LogUtil_Package.getInstance;
        begin
            return PaymentInterface_Access (Payment_Package.Create (request));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.FACTORYERROR) then
                logUtil.put (commonStrings.EXCEPTION_Id, To_Unbounded_String ("PaymentFactory"), commonStrings.GET_INSTANCE, e);
            end if;
            return null;
                end;
        end;
   end getInstance;

   procedure getInstance (request_Param : access ServletRequest'Class) is
      Java_Result : constant PaymentInterface_Access := getInstance (request_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.business.user.commerce.money.payment.PaymentFactory_Package;


