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

limited with admin.tags.PaymentTransactionResultTag_Package;
package admin.tags.PaymentTransactionResultTag_Package_References is
   type PaymentTransactionResultTag_Access is access all admin.tags.PaymentTransactionResultTag_Package.PaymentTransactionResultTag'Class;
   type PaymentTransactionResultTag_Access_Array is array (Natural range <>) of PaymentTransactionResultTag_Access;
   type PaymentTransactionResultTag_Access_Array_Access is access all PaymentTransactionResultTag_Access_Array;
   type PaymentTransactionResultTag_Access_Array_Access_Array is array (Natural range <>) of PaymentTransactionResultTag_Access_Array_Access;
   type PaymentTransactionResultTag_Access_Array_Access_Array_Access is access all PaymentTransactionResultTag_Access_Array_Access_Array;
end admin.tags.PaymentTransactionResultTag_Package_References;

with admin.tags.PaymentTransactionResultTag_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with admin.tags.TableTag_Package; use admin.tags.TableTag_Package;

package admin.tags.PaymentTransactionResultTag_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype PaymentTransactionResultTag_Access is admin.tags.PaymentTransactionResultTag_Package_References.PaymentTransactionResultTag_Access;
   function "=" (Left, Right : PaymentTransactionResultTag_Access) return Boolean renames admin.tags.PaymentTransactionResultTag_Package_References."=";
   subtype PaymentTransactionResultTag_Access_Array is admin.tags.PaymentTransactionResultTag_Package_References.PaymentTransactionResultTag_Access_Array;
   function "=" (Left, Right : PaymentTransactionResultTag_Access_Array) return Boolean renames admin.tags.PaymentTransactionResultTag_Package_References."=";
   subtype PaymentTransactionResultTag_Access_Array_Access is admin.tags.PaymentTransactionResultTag_Package_References.PaymentTransactionResultTag_Access_Array_Access;
   function "=" (Left, Right : PaymentTransactionResultTag_Access_Array_Access) return Boolean renames admin.tags.PaymentTransactionResultTag_Package_References."=";
   subtype PaymentTransactionResultTag_Access_Array_Access_Array is admin.tags.PaymentTransactionResultTag_Package_References.PaymentTransactionResultTag_Access_Array_Access_Array;
   function "=" (Left, Right : PaymentTransactionResultTag_Access_Array_Access_Array) return Boolean renames admin.tags.PaymentTransactionResultTag_Package_References."=";
   subtype PaymentTransactionResultTag_Access_Array_Access_Array_Access is admin.tags.PaymentTransactionResultTag_Package_References.PaymentTransactionResultTag_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PaymentTransactionResultTag_Access_Array_Access_Array_Access) return Boolean renames admin.tags.PaymentTransactionResultTag_Package_References."=";

   type PaymentTransactionResultTag is new TableTag with null record;

   procedure Initialize (This : in out PaymentTransactionResultTag'Class);
   function Create return PaymentTransactionResultTag_Access;

end admin.tags.PaymentTransactionResultTag_Package;


