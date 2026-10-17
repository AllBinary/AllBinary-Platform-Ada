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


package body org.allbinary.data.tables.user.commerce.money.payment.PaymentEntityFactory_Package is

   procedure Initialize_Fields (This : in out PaymentEntityFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   function getInstance return PaymentEntityFactory_Access is
   begin
        return PaymentEntityFactory_Package.instance;
   end getInstance;

   procedure Initialize (This : in out PaymentEntityFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return PaymentEntityFactory_Access is
      This : constant PaymentEntityFactory_Access := new PaymentEntityFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;

   function getPaymentEntityInstance (This : in out PaymentEntityFactory) return PaymentEntity_Access is
      commonStrings : CommonStrings_Access;
   begin
        begin
            return PaymentEntity_Package.Create;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.ENTITYFACTORYERROR) then
                This.logUtil.put (commonStrings.EXCEPTION_Id, This'Unchecked_Access, commonStrings.GET_INSTANCE, e);
            end if;
            return null;
                end;
        end;
   end getPaymentEntityInstance;

   procedure getInstance is
      Java_Result : constant PaymentEntityFactory_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getPaymentEntityInstance (This : in out PaymentEntityFactory) is
      Java_Result : constant PaymentEntity_Access := PaymentEntityFactory'Class (This).getPaymentEntityInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPaymentEntityInstance;

begin
   null;
   instance := PaymentEntityFactory_Package.Create;

end org.allbinary.data.tables.user.commerce.money.payment.PaymentEntityFactory_Package;


