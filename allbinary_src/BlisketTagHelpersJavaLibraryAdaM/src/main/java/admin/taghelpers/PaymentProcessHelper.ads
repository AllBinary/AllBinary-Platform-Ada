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
limited with admin.taghelpers.PaymentProcessHelper_Package;
package admin.taghelpers.PaymentProcessHelper_Package_References is
   type PaymentProcessHelper_Access is access all admin.taghelpers.PaymentProcessHelper_Package.PaymentProcessHelper'Class;
   type PaymentProcessHelper_Access_Array is array (Natural range <>) of PaymentProcessHelper_Access;
   type PaymentProcessHelper_Access_Array_Access is access all PaymentProcessHelper_Access_Array;
   type PaymentProcessHelper_Access_Array_Access_Array is array (Natural range <>) of PaymentProcessHelper_Access_Array_Access;
   type PaymentProcessHelper_Access_Array_Access_Array_Access is access all PaymentProcessHelper_Access_Array_Access_Array;
   type PaymentProcessHelper_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PaymentProcessHelper_Access_Array_Access;
   end record;
   function Java_Box (Value : PaymentProcessHelper_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PaymentProcessHelper_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PaymentProcessHelper_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PaymentProcessHelper_Access_Array_Access is (if Value /= null and then Value.all in PaymentProcessHelper_Access_Array_Object'Class then PaymentProcessHelper_Access_Array_Object'Class (Value.all).Value else null);
   type PaymentProcessHelper_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PaymentProcessHelper_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PaymentProcessHelper_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PaymentProcessHelper_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PaymentProcessHelper_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PaymentProcessHelper_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PaymentProcessHelper_Access_Array_Access_Array_Object'Class then PaymentProcessHelper_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end admin.taghelpers.PaymentProcessHelper_Package_References;

with admin.taghelpers.PaymentProcessHelper_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with javax.servlet.jsp.PageContext_Package; use javax.servlet.jsp.PageContext_Package;
limited with views.admin.payment.PaymentProcessorComponent_Package;
with views.admin.payment.PaymentProcessorComponent_Package_References;
with admin.taghelpers.TagHelper_Package; use admin.taghelpers.TagHelper_Package;

package admin.taghelpers.PaymentProcessHelper_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package PaymentProcessorComponent_Package renames Standard.views.admin.payment.PaymentProcessorComponent_Package;
   package Reference_Types is
   subtype PaymentProcessorComponent_Access is views.admin.payment.PaymentProcessorComponent_Package_References.PaymentProcessorComponent_Access;
   use type PaymentProcessorComponent_Access;
   subtype PaymentProcessorComponent_Access_Array is views.admin.payment.PaymentProcessorComponent_Package_References.PaymentProcessorComponent_Access_Array;
   use type PaymentProcessorComponent_Access_Array;
   subtype PaymentProcessorComponent_Access_Array_Access is views.admin.payment.PaymentProcessorComponent_Package_References.PaymentProcessorComponent_Access_Array_Access;
   use type PaymentProcessorComponent_Access_Array_Access;
   subtype PaymentProcessorComponent_Access_Array_Access_Array is views.admin.payment.PaymentProcessorComponent_Package_References.PaymentProcessorComponent_Access_Array_Access_Array;
   use type PaymentProcessorComponent_Access_Array_Access_Array;
   subtype PaymentProcessorComponent_Access_Array_Access_Array_Access is views.admin.payment.PaymentProcessorComponent_Package_References.PaymentProcessorComponent_Access_Array_Access_Array_Access;
   use type PaymentProcessorComponent_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype PaymentProcessHelper_Access is admin.taghelpers.PaymentProcessHelper_Package_References.PaymentProcessHelper_Access;
   function "=" (Left, Right : PaymentProcessHelper_Access) return Boolean renames admin.taghelpers.PaymentProcessHelper_Package_References."=";
   subtype PaymentProcessHelper_Access_Array is admin.taghelpers.PaymentProcessHelper_Package_References.PaymentProcessHelper_Access_Array;
   function "=" (Left, Right : PaymentProcessHelper_Access_Array) return Boolean renames admin.taghelpers.PaymentProcessHelper_Package_References."=";
   subtype PaymentProcessHelper_Access_Array_Access is admin.taghelpers.PaymentProcessHelper_Package_References.PaymentProcessHelper_Access_Array_Access;
   function "=" (Left, Right : PaymentProcessHelper_Access_Array_Access) return Boolean renames admin.taghelpers.PaymentProcessHelper_Package_References."=";
   function Java_Box (Value : PaymentProcessHelper_Access_Array_Access) return Java_Object_Access renames admin.taghelpers.PaymentProcessHelper_Package_References.Java_Box;
   function Java_Unbox_PaymentProcessHelper_Access_Array (Value : access Java_Object'Class) return PaymentProcessHelper_Access_Array_Access renames admin.taghelpers.PaymentProcessHelper_Package_References.Java_Unbox_PaymentProcessHelper_Access_Array;
   subtype PaymentProcessHelper_Access_Array_Access_Array is admin.taghelpers.PaymentProcessHelper_Package_References.PaymentProcessHelper_Access_Array_Access_Array;
   function "=" (Left, Right : PaymentProcessHelper_Access_Array_Access_Array) return Boolean renames admin.taghelpers.PaymentProcessHelper_Package_References."=";
   subtype PaymentProcessHelper_Access_Array_Access_Array_Access is admin.taghelpers.PaymentProcessHelper_Package_References.PaymentProcessHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PaymentProcessHelper_Access_Array_Access_Array_Access) return Boolean renames admin.taghelpers.PaymentProcessHelper_Package_References."=";
   function Java_Box (Value : PaymentProcessHelper_Access_Array_Access_Array_Access) return Java_Object_Access renames admin.taghelpers.PaymentProcessHelper_Package_References.Java_Box;
   function Java_Unbox_PaymentProcessHelper_Access_Array_Access_Array (Value : access Java_Object'Class) return PaymentProcessHelper_Access_Array_Access_Array_Access renames admin.taghelpers.PaymentProcessHelper_Package_References.Java_Unbox_PaymentProcessHelper_Access_Array_Access_Array;

   type PaymentProcessHelper is new TagHelper with record
      paymentProcessorComponent : PaymentProcessorComponent_Access;
   end record;

   procedure Initialize (This : in out PaymentProcessHelper'Class; propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class);
   function Create (propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return PaymentProcessHelper_Access;
   function process (This : in out PaymentProcessHelper) return Unbounded_String;

end admin.taghelpers.PaymentProcessHelper_Package;


