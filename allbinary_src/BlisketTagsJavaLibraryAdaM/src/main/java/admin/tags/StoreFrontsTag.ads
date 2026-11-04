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

limited with admin.tags.StoreFrontsTag_Package;
package admin.tags.StoreFrontsTag_Package_References is
   type StoreFrontsTag_Access is access all admin.tags.StoreFrontsTag_Package.StoreFrontsTag'Class;
   type StoreFrontsTag_Access_Array is array (Natural range <>) of StoreFrontsTag_Access;
   type StoreFrontsTag_Access_Array_Access is access all StoreFrontsTag_Access_Array;
   type StoreFrontsTag_Access_Array_Access_Array is array (Natural range <>) of StoreFrontsTag_Access_Array_Access;
   type StoreFrontsTag_Access_Array_Access_Array_Access is access all StoreFrontsTag_Access_Array_Access_Array;
end admin.tags.StoreFrontsTag_Package_References;

with admin.tags.StoreFrontsTag_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.lang.reflect.Method_Package; use java.lang.reflect.Method_Package;
--  with javax.servlet.jsp.JspTagException_Package; use javax.servlet.jsp.JspTagException_Package;
--  with javax.servlet.jsp.tagext.TagSupport_Package; use javax.servlet.jsp.tagext.TagSupport_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with admin.tags.TableTag_Package; use admin.tags.TableTag_Package;

package admin.tags.StoreFrontsTag_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Reference_Types is
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


   subtype StoreFrontsTag_Access is admin.tags.StoreFrontsTag_Package_References.StoreFrontsTag_Access;
   function "=" (Left, Right : StoreFrontsTag_Access) return Boolean renames admin.tags.StoreFrontsTag_Package_References."=";
   subtype StoreFrontsTag_Access_Array is admin.tags.StoreFrontsTag_Package_References.StoreFrontsTag_Access_Array;
   function "=" (Left, Right : StoreFrontsTag_Access_Array) return Boolean renames admin.tags.StoreFrontsTag_Package_References."=";
   subtype StoreFrontsTag_Access_Array_Access is admin.tags.StoreFrontsTag_Package_References.StoreFrontsTag_Access_Array_Access;
   function "=" (Left, Right : StoreFrontsTag_Access_Array_Access) return Boolean renames admin.tags.StoreFrontsTag_Package_References."=";
   subtype StoreFrontsTag_Access_Array_Access_Array is admin.tags.StoreFrontsTag_Package_References.StoreFrontsTag_Access_Array_Access_Array;
   function "=" (Left, Right : StoreFrontsTag_Access_Array_Access_Array) return Boolean renames admin.tags.StoreFrontsTag_Package_References."=";
   subtype StoreFrontsTag_Access_Array_Access_Array_Access is admin.tags.StoreFrontsTag_Package_References.StoreFrontsTag_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StoreFrontsTag_Access_Array_Access_Array_Access) return Boolean renames admin.tags.StoreFrontsTag_Package_References."=";

   type StoreFrontsTag is new TableTag with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out StoreFrontsTag'Class);
   function Create return StoreFrontsTag_Access;
   function generateSelect (This : in out StoreFrontsTag) return Unbounded_String;
   function install (This : in out StoreFrontsTag) return Unbounded_String;
   function sendStoreCreatedEmails (This : in out StoreFrontsTag) return Unbounded_String;
   function doStartTag (This : in out StoreFrontsTag) return Integer;

end admin.tags.StoreFrontsTag_Package;


