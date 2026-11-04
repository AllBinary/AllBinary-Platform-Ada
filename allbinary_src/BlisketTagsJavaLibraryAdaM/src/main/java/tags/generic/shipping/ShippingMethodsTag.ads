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

limited with tags.generic_Id.shipping.ShippingMethodsTag_Package;
package tags.generic_Id.shipping.ShippingMethodsTag_Package_References is
   type ShippingMethodsTag_Access is access all tags.generic_Id.shipping.ShippingMethodsTag_Package.ShippingMethodsTag'Class;
   type ShippingMethodsTag_Access_Array is array (Natural range <>) of ShippingMethodsTag_Access;
   type ShippingMethodsTag_Access_Array_Access is access all ShippingMethodsTag_Access_Array;
   type ShippingMethodsTag_Access_Array_Access_Array is array (Natural range <>) of ShippingMethodsTag_Access_Array_Access;
   type ShippingMethodsTag_Access_Array_Access_Array_Access is access all ShippingMethodsTag_Access_Array_Access_Array;
end tags.generic_Id.shipping.ShippingMethodsTag_Package_References;

with tags.generic_Id.shipping.ShippingMethodsTag_Package_References;
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

package tags.generic_Id.shipping.ShippingMethodsTag_Package is

   package StoreValidationTransformTag_Package renames Standard.tags.StoreValidationTransformTag_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype ShippingMethodsTag_Access is tags.generic_Id.shipping.ShippingMethodsTag_Package_References.ShippingMethodsTag_Access;
   function "=" (Left, Right : ShippingMethodsTag_Access) return Boolean renames tags.generic_Id.shipping.ShippingMethodsTag_Package_References."=";
   subtype ShippingMethodsTag_Access_Array is tags.generic_Id.shipping.ShippingMethodsTag_Package_References.ShippingMethodsTag_Access_Array;
   function "=" (Left, Right : ShippingMethodsTag_Access_Array) return Boolean renames tags.generic_Id.shipping.ShippingMethodsTag_Package_References."=";
   subtype ShippingMethodsTag_Access_Array_Access is tags.generic_Id.shipping.ShippingMethodsTag_Package_References.ShippingMethodsTag_Access_Array_Access;
   function "=" (Left, Right : ShippingMethodsTag_Access_Array_Access) return Boolean renames tags.generic_Id.shipping.ShippingMethodsTag_Package_References."=";
   subtype ShippingMethodsTag_Access_Array_Access_Array is tags.generic_Id.shipping.ShippingMethodsTag_Package_References.ShippingMethodsTag_Access_Array_Access_Array;
   function "=" (Left, Right : ShippingMethodsTag_Access_Array_Access_Array) return Boolean renames tags.generic_Id.shipping.ShippingMethodsTag_Package_References."=";
   subtype ShippingMethodsTag_Access_Array_Access_Array_Access is tags.generic_Id.shipping.ShippingMethodsTag_Package_References.ShippingMethodsTag_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ShippingMethodsTag_Access_Array_Access_Array_Access) return Boolean renames tags.generic_Id.shipping.ShippingMethodsTag_Package_References."=";

   type ShippingMethodsTag is new StoreValidationTransformTag with null record;

   procedure Initialize (This : in out ShippingMethodsTag'Class);
   function Create return ShippingMethodsTag_Access;
   function doStartTag (This : in out ShippingMethodsTag) return Integer;

end tags.generic_Id.shipping.ShippingMethodsTag_Package;


