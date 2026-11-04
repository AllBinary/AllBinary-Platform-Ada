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

limited with tags.admin.WorkFlowsTag_Package;
package tags.admin.WorkFlowsTag_Package_References is
   type WorkFlowsTag_Access is access all tags.admin.WorkFlowsTag_Package.WorkFlowsTag'Class;
   type WorkFlowsTag_Access_Array is array (Natural range <>) of WorkFlowsTag_Access;
   type WorkFlowsTag_Access_Array_Access is access all WorkFlowsTag_Access_Array;
   type WorkFlowsTag_Access_Array_Access_Array is array (Natural range <>) of WorkFlowsTag_Access_Array_Access;
   type WorkFlowsTag_Access_Array_Access_Array_Access is access all WorkFlowsTag_Access_Array_Access_Array;
end tags.admin.WorkFlowsTag_Package_References;

with tags.admin.WorkFlowsTag_Package_References;
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

package tags.admin.WorkFlowsTag_Package is

   package StoreValidationTransformTag_Package renames Standard.tags.StoreValidationTransformTag_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype WorkFlowsTag_Access is tags.admin.WorkFlowsTag_Package_References.WorkFlowsTag_Access;
   function "=" (Left, Right : WorkFlowsTag_Access) return Boolean renames tags.admin.WorkFlowsTag_Package_References."=";
   subtype WorkFlowsTag_Access_Array is tags.admin.WorkFlowsTag_Package_References.WorkFlowsTag_Access_Array;
   function "=" (Left, Right : WorkFlowsTag_Access_Array) return Boolean renames tags.admin.WorkFlowsTag_Package_References."=";
   subtype WorkFlowsTag_Access_Array_Access is tags.admin.WorkFlowsTag_Package_References.WorkFlowsTag_Access_Array_Access;
   function "=" (Left, Right : WorkFlowsTag_Access_Array_Access) return Boolean renames tags.admin.WorkFlowsTag_Package_References."=";
   subtype WorkFlowsTag_Access_Array_Access_Array is tags.admin.WorkFlowsTag_Package_References.WorkFlowsTag_Access_Array_Access_Array;
   function "=" (Left, Right : WorkFlowsTag_Access_Array_Access_Array) return Boolean renames tags.admin.WorkFlowsTag_Package_References."=";
   subtype WorkFlowsTag_Access_Array_Access_Array_Access is tags.admin.WorkFlowsTag_Package_References.WorkFlowsTag_Access_Array_Access_Array_Access;
   function "=" (Left, Right : WorkFlowsTag_Access_Array_Access_Array_Access) return Boolean renames tags.admin.WorkFlowsTag_Package_References."=";

   type WorkFlowsTag is new StoreValidationTransformTag with null record;

   procedure Initialize (This : in out WorkFlowsTag'Class);
   function Create return WorkFlowsTag_Access;
   function doStartTag (This : in out WorkFlowsTag) return Integer;

end tags.admin.WorkFlowsTag_Package;


