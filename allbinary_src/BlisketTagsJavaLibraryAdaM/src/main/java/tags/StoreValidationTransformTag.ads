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
with org.allbinary.business.context.modules.storefront.StoreFrontData_Package; use org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
with org.allbinary.logic.communication.http.request.AbResponseHandler_Package; use org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with tags.ValidationTransformTag_Package; use tags.ValidationTransformTag_Package;

package tags.StoreValidationTransformTag_Package is

   package StoreFrontData_Package renames org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
   package AbResponseHandler_Package renames org.allbinary.logic.communication.http.request.AbResponseHandler_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;

   type StoreValidationTransformTag is tagged;
   type StoreValidationTransformTag_Access is access all StoreValidationTransformTag'Class;
   type StoreValidationTransformTag_Access_Array is array (Natural range <>) of StoreValidationTransformTag_Access;
   type StoreValidationTransformTag_Access_Array_Access is access all StoreValidationTransformTag_Access_Array;

   type StoreValidationTransformTag is new ValidationTransformTag with record
      logUtil : LogUtil_Access;
      storeName : Unbounded_String;
   end record;

   procedure Initialize (This : in out StoreValidationTransformTag'Class);
   function Create return StoreValidationTransformTag_Access;
   procedure setStoreName (This : in out StoreValidationTransformTag; value : Unbounded_String);
   function doStartTag (This : in out StoreValidationTransformTag) return Integer;
   procedure doStartTag (This : in out StoreValidationTransformTag);

end tags.StoreValidationTransformTag_Package;


