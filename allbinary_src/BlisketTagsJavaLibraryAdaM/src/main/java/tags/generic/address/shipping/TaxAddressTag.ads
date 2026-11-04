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

limited with tags.generic_Id.address.shipping.TaxAddressTag_Package;
package tags.generic_Id.address.shipping.TaxAddressTag_Package_References is
   type TaxAddressTag_Access is access all tags.generic_Id.address.shipping.TaxAddressTag_Package.TaxAddressTag'Class;
   type TaxAddressTag_Access_Array is array (Natural range <>) of TaxAddressTag_Access;
   type TaxAddressTag_Access_Array_Access is access all TaxAddressTag_Access_Array;
   type TaxAddressTag_Access_Array_Access_Array is array (Natural range <>) of TaxAddressTag_Access_Array_Access;
   type TaxAddressTag_Access_Array_Access_Array_Access is access all TaxAddressTag_Access_Array_Access_Array;
end tags.generic_Id.address.shipping.TaxAddressTag_Package_References;

with tags.generic_Id.address.shipping.TaxAddressTag_Package_References;
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

package tags.generic_Id.address.shipping.TaxAddressTag_Package is

   package StoreValidationTransformTag_Package renames Standard.tags.StoreValidationTransformTag_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype TaxAddressTag_Access is tags.generic_Id.address.shipping.TaxAddressTag_Package_References.TaxAddressTag_Access;
   function "=" (Left, Right : TaxAddressTag_Access) return Boolean renames tags.generic_Id.address.shipping.TaxAddressTag_Package_References."=";
   subtype TaxAddressTag_Access_Array is tags.generic_Id.address.shipping.TaxAddressTag_Package_References.TaxAddressTag_Access_Array;
   function "=" (Left, Right : TaxAddressTag_Access_Array) return Boolean renames tags.generic_Id.address.shipping.TaxAddressTag_Package_References."=";
   subtype TaxAddressTag_Access_Array_Access is tags.generic_Id.address.shipping.TaxAddressTag_Package_References.TaxAddressTag_Access_Array_Access;
   function "=" (Left, Right : TaxAddressTag_Access_Array_Access) return Boolean renames tags.generic_Id.address.shipping.TaxAddressTag_Package_References."=";
   subtype TaxAddressTag_Access_Array_Access_Array is tags.generic_Id.address.shipping.TaxAddressTag_Package_References.TaxAddressTag_Access_Array_Access_Array;
   function "=" (Left, Right : TaxAddressTag_Access_Array_Access_Array) return Boolean renames tags.generic_Id.address.shipping.TaxAddressTag_Package_References."=";
   subtype TaxAddressTag_Access_Array_Access_Array_Access is tags.generic_Id.address.shipping.TaxAddressTag_Package_References.TaxAddressTag_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TaxAddressTag_Access_Array_Access_Array_Access) return Boolean renames tags.generic_Id.address.shipping.TaxAddressTag_Package_References."=";

   type TaxAddressTag is new StoreValidationTransformTag with null record;

   procedure Initialize (This : in out TaxAddressTag'Class);
   function Create return TaxAddressTag_Access;
   function doStartTag (This : in out TaxAddressTag) return Integer;

end tags.generic_Id.address.shipping.TaxAddressTag_Package;


