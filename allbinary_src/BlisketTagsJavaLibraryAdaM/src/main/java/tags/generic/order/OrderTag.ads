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
limited with tags.generic_Id.order.OrderTag_Package;
package tags.generic_Id.order.OrderTag_Package_References is
   type OrderTag_Access is access all tags.generic_Id.order.OrderTag_Package.OrderTag'Class;
   type OrderTag_Access_Array is array (Natural range <>) of OrderTag_Access;
   type OrderTag_Access_Array_Access is access all OrderTag_Access_Array;
   type OrderTag_Access_Array_Access_Array is array (Natural range <>) of OrderTag_Access_Array_Access;
   type OrderTag_Access_Array_Access_Array_Access is access all OrderTag_Access_Array_Access_Array;
   type OrderTag_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OrderTag_Access_Array_Access;
   end record;
   function Java_Box (Value : OrderTag_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OrderTag_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OrderTag_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OrderTag_Access_Array_Access is (if Value /= null and then Value.all in OrderTag_Access_Array_Object'Class then OrderTag_Access_Array_Object'Class (Value.all).Value else null);
   type OrderTag_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OrderTag_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : OrderTag_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OrderTag_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OrderTag_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OrderTag_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in OrderTag_Access_Array_Access_Array_Object'Class then OrderTag_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end tags.generic_Id.order.OrderTag_Package_References;

with tags.generic_Id.order.OrderTag_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.servlet.jsp.JspTagException_Package; use javax.servlet.jsp.JspTagException_Package;
with tags.StoreValidationTransformTag_Package; use tags.StoreValidationTransformTag_Package;

package tags.generic_Id.order.OrderTag_Package is

   package StoreValidationTransformTag_Package renames Standard.tags.StoreValidationTransformTag_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype OrderTag_Access is tags.generic_Id.order.OrderTag_Package_References.OrderTag_Access;
   function "=" (Left, Right : OrderTag_Access) return Boolean renames tags.generic_Id.order.OrderTag_Package_References."=";
   subtype OrderTag_Access_Array is tags.generic_Id.order.OrderTag_Package_References.OrderTag_Access_Array;
   function "=" (Left, Right : OrderTag_Access_Array) return Boolean renames tags.generic_Id.order.OrderTag_Package_References."=";
   subtype OrderTag_Access_Array_Access is tags.generic_Id.order.OrderTag_Package_References.OrderTag_Access_Array_Access;
   function "=" (Left, Right : OrderTag_Access_Array_Access) return Boolean renames tags.generic_Id.order.OrderTag_Package_References."=";
   function Java_Box (Value : OrderTag_Access_Array_Access) return Java_Object_Access renames tags.generic_Id.order.OrderTag_Package_References.Java_Box;
   function Java_Unbox_OrderTag_Access_Array (Value : access Java_Object'Class) return OrderTag_Access_Array_Access renames tags.generic_Id.order.OrderTag_Package_References.Java_Unbox_OrderTag_Access_Array;
   subtype OrderTag_Access_Array_Access_Array is tags.generic_Id.order.OrderTag_Package_References.OrderTag_Access_Array_Access_Array;
   function "=" (Left, Right : OrderTag_Access_Array_Access_Array) return Boolean renames tags.generic_Id.order.OrderTag_Package_References."=";
   subtype OrderTag_Access_Array_Access_Array_Access is tags.generic_Id.order.OrderTag_Package_References.OrderTag_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OrderTag_Access_Array_Access_Array_Access) return Boolean renames tags.generic_Id.order.OrderTag_Package_References."=";
   function Java_Box (Value : OrderTag_Access_Array_Access_Array_Access) return Java_Object_Access renames tags.generic_Id.order.OrderTag_Package_References.Java_Box;
   function Java_Unbox_OrderTag_Access_Array_Access_Array (Value : access Java_Object'Class) return OrderTag_Access_Array_Access_Array_Access renames tags.generic_Id.order.OrderTag_Package_References.Java_Unbox_OrderTag_Access_Array_Access_Array;

   type OrderTag is new StoreValidationTransformTag with null record;

   procedure Initialize (This : in out OrderTag'Class);
   function Create return OrderTag_Access;
   function doStartTag (This : in out OrderTag) return Integer;

end tags.generic_Id.order.OrderTag_Package;


