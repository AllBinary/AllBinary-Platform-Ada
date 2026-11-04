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

limited with tags.admin.payment.gateways.ViewExistingTag_Package;
package tags.admin.payment.gateways.ViewExistingTag_Package_References is
   type ViewExistingTag_Access is access all tags.admin.payment.gateways.ViewExistingTag_Package.ViewExistingTag'Class;
   type ViewExistingTag_Access_Array is array (Natural range <>) of ViewExistingTag_Access;
   type ViewExistingTag_Access_Array_Access is access all ViewExistingTag_Access_Array;
   type ViewExistingTag_Access_Array_Access_Array is array (Natural range <>) of ViewExistingTag_Access_Array_Access;
   type ViewExistingTag_Access_Array_Access_Array_Access is access all ViewExistingTag_Access_Array_Access_Array;
end tags.admin.payment.gateways.ViewExistingTag_Package_References;

with tags.admin.payment.gateways.ViewExistingTag_Package_References;
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

package tags.admin.payment.gateways.ViewExistingTag_Package is

   package StoreValidationTransformTag_Package renames Standard.tags.StoreValidationTransformTag_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype ViewExistingTag_Access is tags.admin.payment.gateways.ViewExistingTag_Package_References.ViewExistingTag_Access;
   function "=" (Left, Right : ViewExistingTag_Access) return Boolean renames tags.admin.payment.gateways.ViewExistingTag_Package_References."=";
   subtype ViewExistingTag_Access_Array is tags.admin.payment.gateways.ViewExistingTag_Package_References.ViewExistingTag_Access_Array;
   function "=" (Left, Right : ViewExistingTag_Access_Array) return Boolean renames tags.admin.payment.gateways.ViewExistingTag_Package_References."=";
   subtype ViewExistingTag_Access_Array_Access is tags.admin.payment.gateways.ViewExistingTag_Package_References.ViewExistingTag_Access_Array_Access;
   function "=" (Left, Right : ViewExistingTag_Access_Array_Access) return Boolean renames tags.admin.payment.gateways.ViewExistingTag_Package_References."=";
   subtype ViewExistingTag_Access_Array_Access_Array is tags.admin.payment.gateways.ViewExistingTag_Package_References.ViewExistingTag_Access_Array_Access_Array;
   function "=" (Left, Right : ViewExistingTag_Access_Array_Access_Array) return Boolean renames tags.admin.payment.gateways.ViewExistingTag_Package_References."=";
   subtype ViewExistingTag_Access_Array_Access_Array_Access is tags.admin.payment.gateways.ViewExistingTag_Package_References.ViewExistingTag_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ViewExistingTag_Access_Array_Access_Array_Access) return Boolean renames tags.admin.payment.gateways.ViewExistingTag_Package_References."=";

   type ViewExistingTag is new StoreValidationTransformTag with null record;

   procedure Initialize (This : in out ViewExistingTag'Class);
   function Create return ViewExistingTag_Access;
   function doStartTag (This : in out ViewExistingTag) return Integer;

end tags.admin.payment.gateways.ViewExistingTag_Package;


