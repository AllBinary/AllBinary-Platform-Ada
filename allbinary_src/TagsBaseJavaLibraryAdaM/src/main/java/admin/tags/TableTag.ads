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

limited with admin.tags.TableTag_Package;
package admin.tags.TableTag_Package_References is
   type TableTag_Access is access all admin.tags.TableTag_Package.TableTag'Class;
   type TableTag_Access_Array is array (Natural range <>) of TableTag_Access;
   type TableTag_Access_Array_Access is access all TableTag_Access_Array;
   type TableTag_Access_Array_Access_Array is array (Natural range <>) of TableTag_Access_Array_Access;
   type TableTag_Access_Array_Access_Array_Access is access all TableTag_Access_Array_Access_Array;
end admin.tags.TableTag_Package_References;

with admin.tags.TableTag_Package_References;
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
with tags.PropertiesTag_Package; use tags.PropertiesTag_Package;

package admin.tags.TableTag_Package is

   package TagHelperFactoryInterface_Package renames Standard.admin.taghelpers.TagHelperFactoryInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package PropertiesTag_Package renames Standard.tags.PropertiesTag_Package;
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


   subtype TableTag_Access is admin.tags.TableTag_Package_References.TableTag_Access;
   function "=" (Left, Right : TableTag_Access) return Boolean renames admin.tags.TableTag_Package_References."=";
   subtype TableTag_Access_Array is admin.tags.TableTag_Package_References.TableTag_Access_Array;
   function "=" (Left, Right : TableTag_Access_Array) return Boolean renames admin.tags.TableTag_Package_References."=";
   subtype TableTag_Access_Array_Access is admin.tags.TableTag_Package_References.TableTag_Access_Array_Access;
   function "=" (Left, Right : TableTag_Access_Array_Access) return Boolean renames admin.tags.TableTag_Package_References."=";
   subtype TableTag_Access_Array_Access_Array is admin.tags.TableTag_Package_References.TableTag_Access_Array_Access_Array;
   function "=" (Left, Right : TableTag_Access_Array_Access_Array) return Boolean renames admin.tags.TableTag_Package_References."=";
   subtype TableTag_Access_Array_Access_Array_Access is admin.tags.TableTag_Package_References.TableTag_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TableTag_Access_Array_Access_Array_Access) return Boolean renames admin.tags.TableTag_Package_References."=";

   type TableTag is new PropertiesTag with record
      TableTag_Field_logUtil : LogUtil_Access;
      enabled : Unbounded_String;
      tagHelperFactoryInterface : TagHelperFactoryInterface_Access;
      tagRequestHelperFactoryInterface : TagHelperFactoryInterface_Access;
      requestObject : Java_Object_Access;
      current : Integer;
      total : Integer;
   end record;

   procedure Initialize (This : in out TableTag'Class);
   function Create return TableTag_Access;
   procedure setIsSelected (This : in out TableTag; enabled : Unbounded_String);
   function isEnabled (This : in out TableTag) return Boolean;
   procedure setTagHelperFactory (This : in out TableTag; tagHelperFactoryInterface_Param : access TagHelperFactoryInterface_Package.TagHelperFactoryInterface'Class);
   function getTagHelperFactoryInterface (This : in out TableTag) return TagHelperFactoryInterface_Access;
   procedure setTagRequestHelperFactory (This : in out TableTag; tagHelperFactoryInterface_Param : access TagHelperFactoryInterface_Package.TagHelperFactoryInterface'Class);
   function getTagRequestHelperFactoryInterface (This : in out TableTag) return TagHelperFactoryInterface_Access;
   procedure setCurrent (This : in out TableTag; current : Integer);
   function getCurrent (This : in out TableTag) return Integer;
   procedure setTotal (This : in out TableTag; total : Integer);
   function getTotal (This : in out TableTag) return Integer;
   function drop (This : in out TableTag) return Unbounded_String;
   function create (This : in out TableTag) return Unbounded_String;
   function restore (This : in out TableTag) return Unbounded_String;
   function backup (This : in out TableTag) return Unbounded_String;
   function insert (This : in out TableTag) return Unbounded_String;
   function delete (This : in out TableTag) return Unbounded_String;
   function update (This : in out TableTag) return Unbounded_String;
   function doStartTag (This : in out TableTag) return Integer;

end admin.tags.TableTag_Package;


