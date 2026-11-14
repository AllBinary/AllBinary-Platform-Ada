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

with AllBinary_Java;
limited with admin.tags.PaymentTransactionResultTag_Package;
package admin.tags.PaymentTransactionResultTag_Package_References is
   type PaymentTransactionResultTag_Access is access all admin.tags.PaymentTransactionResultTag_Package.PaymentTransactionResultTag'Class;
   type PaymentTransactionResultTag_Access_Array is array (Natural range <>) of PaymentTransactionResultTag_Access;
   type PaymentTransactionResultTag_Access_Array_Access is access all PaymentTransactionResultTag_Access_Array;
   type PaymentTransactionResultTag_Access_Array_Access_Array is array (Natural range <>) of PaymentTransactionResultTag_Access_Array_Access;
   type PaymentTransactionResultTag_Access_Array_Access_Array_Access is access all PaymentTransactionResultTag_Access_Array_Access_Array;
   type PaymentTransactionResultTag_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PaymentTransactionResultTag_Access_Array_Access;
   end record;
   function Java_Box (Value : PaymentTransactionResultTag_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PaymentTransactionResultTag_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PaymentTransactionResultTag_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PaymentTransactionResultTag_Access_Array_Access is (if Value /= null and then Value.all in PaymentTransactionResultTag_Access_Array_Object'Class then PaymentTransactionResultTag_Access_Array_Object'Class (Value.all).Value else null);
   type PaymentTransactionResultTag_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PaymentTransactionResultTag_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PaymentTransactionResultTag_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PaymentTransactionResultTag_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PaymentTransactionResultTag_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PaymentTransactionResultTag_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PaymentTransactionResultTag_Access_Array_Access_Array_Object'Class then PaymentTransactionResultTag_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
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
   function Java_Box (Value : PaymentTransactionResultTag_Access_Array_Access) return Java_Object_Access renames admin.tags.PaymentTransactionResultTag_Package_References.Java_Box;
   function Java_Unbox_PaymentTransactionResultTag_Access_Array (Value : access Java_Object'Class) return PaymentTransactionResultTag_Access_Array_Access renames admin.tags.PaymentTransactionResultTag_Package_References.Java_Unbox_PaymentTransactionResultTag_Access_Array;
   subtype PaymentTransactionResultTag_Access_Array_Access_Array is admin.tags.PaymentTransactionResultTag_Package_References.PaymentTransactionResultTag_Access_Array_Access_Array;
   function "=" (Left, Right : PaymentTransactionResultTag_Access_Array_Access_Array) return Boolean renames admin.tags.PaymentTransactionResultTag_Package_References."=";
   subtype PaymentTransactionResultTag_Access_Array_Access_Array_Access is admin.tags.PaymentTransactionResultTag_Package_References.PaymentTransactionResultTag_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PaymentTransactionResultTag_Access_Array_Access_Array_Access) return Boolean renames admin.tags.PaymentTransactionResultTag_Package_References."=";
   function Java_Box (Value : PaymentTransactionResultTag_Access_Array_Access_Array_Access) return Java_Object_Access renames admin.tags.PaymentTransactionResultTag_Package_References.Java_Box;
   function Java_Unbox_PaymentTransactionResultTag_Access_Array_Access_Array (Value : access Java_Object'Class) return PaymentTransactionResultTag_Access_Array_Access_Array_Access renames admin.tags.PaymentTransactionResultTag_Package_References.Java_Unbox_PaymentTransactionResultTag_Access_Array_Access_Array;

   type PaymentTransactionResultTag is new TableTag with null record;

   procedure Initialize (This : in out PaymentTransactionResultTag'Class);
   function Create return PaymentTransactionResultTag_Access;

end admin.tags.PaymentTransactionResultTag_Package;


