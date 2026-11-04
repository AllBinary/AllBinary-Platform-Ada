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

limited with tags.TransformTag_Package;
package tags.TransformTag_Package_References is
   type TransformTag_Access is access all tags.TransformTag_Package.TransformTag'Class;
   type TransformTag_Access_Array is array (Natural range <>) of TransformTag_Access;
   type TransformTag_Access_Array_Access is access all TransformTag_Access_Array;
   type TransformTag_Access_Array_Access_Array is array (Natural range <>) of TransformTag_Access_Array_Access;
   type TransformTag_Access_Array_Access_Array_Access is access all TransformTag_Access_Array_Access_Array;
end tags.TransformTag_Package_References;

with tags.TransformTag_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.servlet.jsp.JspTagException_Package; use javax.servlet.jsp.JspTagException_Package;
limited with admin.taghelpers.TagHelperFactoryInterface_Package;
with admin.taghelpers.TagHelperFactoryInterface_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with tags.transform.info.TransformInfoTag_Package; use tags.transform.info.TransformInfoTag_Package;

package tags.TransformTag_Package is

   package TagHelperFactoryInterface_Package renames Standard.admin.taghelpers.TagHelperFactoryInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package TransformInfoTag_Package renames Standard.tags.transform.info.TransformInfoTag_Package;
   package Reference_Types is
   subtype TagHelperFactoryInterface_Access is admin.taghelpers.TagHelperFactoryInterface_Package_References.TagHelperFactoryInterface_Access;
   use type TagHelperFactoryInterface_Access;
   subtype TagHelperFactoryInterface_Access_Array is admin.taghelpers.TagHelperFactoryInterface_Package_References.TagHelperFactoryInterface_Access_Array;
   use type TagHelperFactoryInterface_Access_Array;
   subtype TagHelperFactoryInterface_Access_Array_Access is admin.taghelpers.TagHelperFactoryInterface_Package_References.TagHelperFactoryInterface_Access_Array_Access;
   use type TagHelperFactoryInterface_Access_Array_Access;
   subtype TagHelperFactoryInterface_Access_Array_Access_Array is admin.taghelpers.TagHelperFactoryInterface_Package_References.TagHelperFactoryInterface_Access_Array_Access_Array;
   use type TagHelperFactoryInterface_Access_Array_Access_Array;
   subtype TagHelperFactoryInterface_Access_Array_Access_Array_Access is admin.taghelpers.TagHelperFactoryInterface_Package_References.TagHelperFactoryInterface_Access_Array_Access_Array_Access;
   use type TagHelperFactoryInterface_Access_Array_Access_Array_Access;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype TransformTag_Access is tags.TransformTag_Package_References.TransformTag_Access;
   function "=" (Left, Right : TransformTag_Access) return Boolean renames tags.TransformTag_Package_References."=";
   subtype TransformTag_Access_Array is tags.TransformTag_Package_References.TransformTag_Access_Array;
   function "=" (Left, Right : TransformTag_Access_Array) return Boolean renames tags.TransformTag_Package_References."=";
   subtype TransformTag_Access_Array_Access is tags.TransformTag_Package_References.TransformTag_Access_Array_Access;
   function "=" (Left, Right : TransformTag_Access_Array_Access) return Boolean renames tags.TransformTag_Package_References."=";
   subtype TransformTag_Access_Array_Access_Array is tags.TransformTag_Package_References.TransformTag_Access_Array_Access_Array;
   function "=" (Left, Right : TransformTag_Access_Array_Access_Array) return Boolean renames tags.TransformTag_Package_References."=";
   subtype TransformTag_Access_Array_Access_Array_Access is tags.TransformTag_Package_References.TransformTag_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TransformTag_Access_Array_Access_Array_Access) return Boolean renames tags.TransformTag_Package_References."=";

   type TransformTag is new TransformInfoTag with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out TransformTag'Class);
   function Create return TransformTag_Access;
   procedure Initialize (This : in out TransformTag'Class; tagHelperFactoryInterface_Param : access TagHelperFactoryInterface_Package.TagHelperFactoryInterface'Class);
   function Create (tagHelperFactoryInterface_Param : access TagHelperFactoryInterface_Package.TagHelperFactoryInterface'Class) return TransformTag_Access;
   function view (This : in out TransformTag) return Unbounded_String;
   function doStartTag (This : in out TransformTag) return Integer;

end tags.TransformTag_Package;


