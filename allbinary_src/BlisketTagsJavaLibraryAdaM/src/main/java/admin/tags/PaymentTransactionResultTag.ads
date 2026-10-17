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
with admin.taghelpers.PaymentTransactionResultHelperFactory_Package; use admin.taghelpers.PaymentTransactionResultHelperFactory_Package;
with admin.tags.TableTag_Package; use admin.tags.TableTag_Package;

package admin.tags.PaymentTransactionResultTag_Package is

   package PaymentTransactionResultHelperFactory_Package renames Standard.admin.taghelpers.PaymentTransactionResultHelperFactory_Package;

   type PaymentTransactionResultTag is tagged;
   type PaymentTransactionResultTag_Access is access all PaymentTransactionResultTag'Class;
   type PaymentTransactionResultTag_Access_Array is array (Natural range <>) of PaymentTransactionResultTag_Access;
   type PaymentTransactionResultTag_Access_Array_Access is access all PaymentTransactionResultTag_Access_Array;

   type PaymentTransactionResultTag is new TableTag with null record;

   procedure Initialize (This : in out PaymentTransactionResultTag'Class);
   function Create return PaymentTransactionResultTag_Access;

end admin.tags.PaymentTransactionResultTag_Package;


