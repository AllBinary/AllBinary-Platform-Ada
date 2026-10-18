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
--  with javax.servlet.jsp.JspTagException_Package; use javax.servlet.jsp.JspTagException_Package;
with tags.StoreValidationTransformTag_Package; use tags.StoreValidationTransformTag_Package;

package tags.admin.payment.gateways.ViewExistingTag_Package is

   package StoreValidationTransformTag_Package renames Standard.tags.StoreValidationTransformTag_Package;

   type ViewExistingTag is tagged;
   type ViewExistingTag_Access is access all ViewExistingTag'Class;
   type ViewExistingTag_Access_Array is array (Natural range <>) of ViewExistingTag_Access;
   type ViewExistingTag_Access_Array_Access is access all ViewExistingTag_Access_Array;
   type ViewExistingTag_Access_Array_Access_Array is array (Natural range <>) of ViewExistingTag_Access_Array_Access;
   type ViewExistingTag_Access_Array_Access_Array_Access is access all ViewExistingTag_Access_Array_Access_Array;

   type ViewExistingTag is new StoreValidationTransformTag with null record;

   procedure Initialize (This : in out ViewExistingTag'Class);
   function Create return ViewExistingTag_Access;
   function doStartTag (This : in out ViewExistingTag) return Integer;

end tags.admin.payment.gateways.ViewExistingTag_Package;


