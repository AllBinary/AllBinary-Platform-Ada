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

limited with tags.ModifyTag_Package;
package tags.ModifyTag_Package_References is
   type ModifyTag_Access is access all tags.ModifyTag_Package.ModifyTag'Class;
   type ModifyTag_Access_Array is array (Natural range <>) of ModifyTag_Access;
   type ModifyTag_Access_Array_Access is access all ModifyTag_Access_Array;
   type ModifyTag_Access_Array_Access_Array is array (Natural range <>) of ModifyTag_Access_Array_Access;
   type ModifyTag_Access_Array_Access_Array_Access is access all ModifyTag_Access_Array_Access_Array;
end tags.ModifyTag_Package_References;

with tags.ModifyTag_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.lang.reflect.Method_Package; use java.lang.reflect.Method_Package;
--  with javax.servlet.http.HttpServletRequest_Package; use javax.servlet.http.HttpServletRequest_Package;
--  with javax.servlet.jsp.JspTagException_Package; use javax.servlet.jsp.JspTagException_Package;
limited with admin.taghelpers.TagHelperFactoryInterface_Package;
with admin.taghelpers.TagHelperFactoryInterface_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with tags.HelperTag_Package; use tags.HelperTag_Package;

package tags.ModifyTag_Package is

   package TagHelperFactoryInterface_Package renames Standard.admin.taghelpers.TagHelperFactoryInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
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


   subtype ModifyTag_Access is tags.ModifyTag_Package_References.ModifyTag_Access;
   function "=" (Left, Right : ModifyTag_Access) return Boolean renames tags.ModifyTag_Package_References."=";
   subtype ModifyTag_Access_Array is tags.ModifyTag_Package_References.ModifyTag_Access_Array;
   function "=" (Left, Right : ModifyTag_Access_Array) return Boolean renames tags.ModifyTag_Package_References."=";
   subtype ModifyTag_Access_Array_Access is tags.ModifyTag_Package_References.ModifyTag_Access_Array_Access;
   function "=" (Left, Right : ModifyTag_Access_Array_Access) return Boolean renames tags.ModifyTag_Package_References."=";
   subtype ModifyTag_Access_Array_Access_Array is tags.ModifyTag_Package_References.ModifyTag_Access_Array_Access_Array;
   function "=" (Left, Right : ModifyTag_Access_Array_Access_Array) return Boolean renames tags.ModifyTag_Package_References."=";
   subtype ModifyTag_Access_Array_Access_Array_Access is tags.ModifyTag_Package_References.ModifyTag_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ModifyTag_Access_Array_Access_Array_Access) return Boolean renames tags.ModifyTag_Package_References."=";

   type ModifyTag is new HelperTag with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out ModifyTag'Class; tagHelperFactoryInterface_Param : access TagHelperFactoryInterface_Package.TagHelperFactoryInterface'Class);
   function Create (tagHelperFactoryInterface_Param : access TagHelperFactoryInterface_Package.TagHelperFactoryInterface'Class) return ModifyTag_Access;
   function insert (This : in out ModifyTag) return Unbounded_String;
   function delete (This : in out ModifyTag) return Unbounded_String;
   function update (This : in out ModifyTag) return Unbounded_String;
   function doStartTag (This : in out ModifyTag) return Integer;

end tags.ModifyTag_Package;


