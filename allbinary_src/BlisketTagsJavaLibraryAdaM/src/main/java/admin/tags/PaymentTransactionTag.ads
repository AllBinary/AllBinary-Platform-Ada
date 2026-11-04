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

limited with admin.tags.PaymentTransactionTag_Package;
package admin.tags.PaymentTransactionTag_Package_References is
   type PaymentTransactionTag_Access is access all admin.tags.PaymentTransactionTag_Package.PaymentTransactionTag'Class;
   type PaymentTransactionTag_Access_Array is array (Natural range <>) of PaymentTransactionTag_Access;
   type PaymentTransactionTag_Access_Array_Access is access all PaymentTransactionTag_Access_Array;
   type PaymentTransactionTag_Access_Array_Access_Array is array (Natural range <>) of PaymentTransactionTag_Access_Array_Access;
   type PaymentTransactionTag_Access_Array_Access_Array_Access is access all PaymentTransactionTag_Access_Array_Access_Array;
end admin.tags.PaymentTransactionTag_Package_References;

with admin.tags.PaymentTransactionTag_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with admin.tags.TableTag_Package; use admin.tags.TableTag_Package;

package admin.tags.PaymentTransactionTag_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype PaymentTransactionTag_Access is admin.tags.PaymentTransactionTag_Package_References.PaymentTransactionTag_Access;
   function "=" (Left, Right : PaymentTransactionTag_Access) return Boolean renames admin.tags.PaymentTransactionTag_Package_References."=";
   subtype PaymentTransactionTag_Access_Array is admin.tags.PaymentTransactionTag_Package_References.PaymentTransactionTag_Access_Array;
   function "=" (Left, Right : PaymentTransactionTag_Access_Array) return Boolean renames admin.tags.PaymentTransactionTag_Package_References."=";
   subtype PaymentTransactionTag_Access_Array_Access is admin.tags.PaymentTransactionTag_Package_References.PaymentTransactionTag_Access_Array_Access;
   function "=" (Left, Right : PaymentTransactionTag_Access_Array_Access) return Boolean renames admin.tags.PaymentTransactionTag_Package_References."=";
   subtype PaymentTransactionTag_Access_Array_Access_Array is admin.tags.PaymentTransactionTag_Package_References.PaymentTransactionTag_Access_Array_Access_Array;
   function "=" (Left, Right : PaymentTransactionTag_Access_Array_Access_Array) return Boolean renames admin.tags.PaymentTransactionTag_Package_References."=";
   subtype PaymentTransactionTag_Access_Array_Access_Array_Access is admin.tags.PaymentTransactionTag_Package_References.PaymentTransactionTag_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PaymentTransactionTag_Access_Array_Access_Array_Access) return Boolean renames admin.tags.PaymentTransactionTag_Package_References."=";

   type PaymentTransactionTag is new TableTag with null record;

   procedure Initialize (This : in out PaymentTransactionTag'Class);
   function Create return PaymentTransactionTag_Access;

end admin.tags.PaymentTransactionTag_Package;


