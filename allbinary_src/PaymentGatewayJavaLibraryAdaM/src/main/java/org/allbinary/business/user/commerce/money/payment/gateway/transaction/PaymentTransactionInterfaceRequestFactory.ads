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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.servlet.http.HttpServletRequest_Package; use javax.servlet.http.HttpServletRequest_Package;
--  with javax.servlet.jsp.PageContext_Package; use javax.servlet.jsp.PageContext_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface_Package; use org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface_Package;

package org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterfaceRequestFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type PaymentTransactionInterfaceRequestFactory is tagged;
   type PaymentTransactionInterfaceRequestFactory_Access is access all PaymentTransactionInterfaceRequestFactory'Class;
   type PaymentTransactionInterfaceRequestFactory_Access_Array is array (Natural range <>) of PaymentTransactionInterfaceRequestFactory_Access;
   type PaymentTransactionInterfaceRequestFactory_Access_Array_Access is access all PaymentTransactionInterfaceRequestFactory_Access_Array;
   type PaymentTransactionInterfaceRequestFactory_Access_Array_Access_Array is array (Natural range <>) of PaymentTransactionInterfaceRequestFactory_Access_Array_Access;
   type PaymentTransactionInterfaceRequestFactory_Access_Array_Access_Array_Access is access all PaymentTransactionInterfaceRequestFactory_Access_Array_Access_Array;

   type PaymentTransactionInterfaceRequestFactory is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
   end record;
   instance : PaymentTransactionInterfaceRequestFactory_Access;

   procedure Initialize (This : in out PaymentTransactionInterfaceRequestFactory'Class);
   function Create return PaymentTransactionInterfaceRequestFactory_Access;
   function getInstance return PaymentTransactionInterfaceRequestFactory_Access;
   function getInstance (This : in out PaymentTransactionInterfaceRequestFactory; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return PaymentTransactionInterface_Access;
   procedure getInstance (This : in out PaymentTransactionInterfaceRequestFactory; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class);
   function generateFromTestData (This : in out PaymentTransactionInterfaceRequestFactory; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return PaymentTransactionInterface_Access;
   procedure generateFromTestData (This : in out PaymentTransactionInterfaceRequestFactory; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class);

end org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterfaceRequestFactory_Package;


