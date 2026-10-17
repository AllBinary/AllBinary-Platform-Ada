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


package body org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.echo.response.EchoResponseTypeOneData_Package is

   procedure Initialize_Fields (This : in out EchoResponseTypeOneData'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out EchoResponseTypeOneData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return EchoResponseTypeOneData_Access is
      This : constant EchoResponseTypeOneData_Access := new EchoResponseTypeOneData;
   begin
      Initialize (This.all);
      return This;
   end Create;

begin
   null;
   NAME := To_Unbounded_String ("ECHOTYPE1");

end org.allbinary.business.user.commerce.money.payment.gateway.modules.processor.echo.response.EchoResponseTypeOneData_Package;


