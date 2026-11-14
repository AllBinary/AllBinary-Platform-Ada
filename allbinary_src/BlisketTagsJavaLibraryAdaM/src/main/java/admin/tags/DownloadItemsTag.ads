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

with AllBinary_Java;
limited with admin.tags.DownloadItemsTag_Package;
package admin.tags.DownloadItemsTag_Package_References is
   type DownloadItemsTag_Access is access all admin.tags.DownloadItemsTag_Package.DownloadItemsTag'Class;
   type DownloadItemsTag_Access_Array is array (Natural range <>) of DownloadItemsTag_Access;
   type DownloadItemsTag_Access_Array_Access is access all DownloadItemsTag_Access_Array;
   type DownloadItemsTag_Access_Array_Access_Array is array (Natural range <>) of DownloadItemsTag_Access_Array_Access;
   type DownloadItemsTag_Access_Array_Access_Array_Access is access all DownloadItemsTag_Access_Array_Access_Array;
   type DownloadItemsTag_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DownloadItemsTag_Access_Array_Access;
   end record;
   function Java_Box (Value : DownloadItemsTag_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DownloadItemsTag_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DownloadItemsTag_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DownloadItemsTag_Access_Array_Access is (if Value /= null and then Value.all in DownloadItemsTag_Access_Array_Object'Class then DownloadItemsTag_Access_Array_Object'Class (Value.all).Value else null);
   type DownloadItemsTag_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DownloadItemsTag_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : DownloadItemsTag_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DownloadItemsTag_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DownloadItemsTag_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DownloadItemsTag_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in DownloadItemsTag_Access_Array_Access_Array_Object'Class then DownloadItemsTag_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end admin.tags.DownloadItemsTag_Package_References;

with admin.tags.DownloadItemsTag_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.servlet.jsp.JspTagException_Package; use javax.servlet.jsp.JspTagException_Package;
--  with javax.servlet.jsp.tagext.Tag_Package; use javax.servlet.jsp.tagext.Tag_Package;
with admin.tags.TableTag_Package; use admin.tags.TableTag_Package;

package admin.tags.DownloadItemsTag_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype DownloadItemsTag_Access is admin.tags.DownloadItemsTag_Package_References.DownloadItemsTag_Access;
   function "=" (Left, Right : DownloadItemsTag_Access) return Boolean renames admin.tags.DownloadItemsTag_Package_References."=";
   subtype DownloadItemsTag_Access_Array is admin.tags.DownloadItemsTag_Package_References.DownloadItemsTag_Access_Array;
   function "=" (Left, Right : DownloadItemsTag_Access_Array) return Boolean renames admin.tags.DownloadItemsTag_Package_References."=";
   subtype DownloadItemsTag_Access_Array_Access is admin.tags.DownloadItemsTag_Package_References.DownloadItemsTag_Access_Array_Access;
   function "=" (Left, Right : DownloadItemsTag_Access_Array_Access) return Boolean renames admin.tags.DownloadItemsTag_Package_References."=";
   function Java_Box (Value : DownloadItemsTag_Access_Array_Access) return Java_Object_Access renames admin.tags.DownloadItemsTag_Package_References.Java_Box;
   function Java_Unbox_DownloadItemsTag_Access_Array (Value : access Java_Object'Class) return DownloadItemsTag_Access_Array_Access renames admin.tags.DownloadItemsTag_Package_References.Java_Unbox_DownloadItemsTag_Access_Array;
   subtype DownloadItemsTag_Access_Array_Access_Array is admin.tags.DownloadItemsTag_Package_References.DownloadItemsTag_Access_Array_Access_Array;
   function "=" (Left, Right : DownloadItemsTag_Access_Array_Access_Array) return Boolean renames admin.tags.DownloadItemsTag_Package_References."=";
   subtype DownloadItemsTag_Access_Array_Access_Array_Access is admin.tags.DownloadItemsTag_Package_References.DownloadItemsTag_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DownloadItemsTag_Access_Array_Access_Array_Access) return Boolean renames admin.tags.DownloadItemsTag_Package_References."=";
   function Java_Box (Value : DownloadItemsTag_Access_Array_Access_Array_Access) return Java_Object_Access renames admin.tags.DownloadItemsTag_Package_References.Java_Box;
   function Java_Unbox_DownloadItemsTag_Access_Array_Access_Array (Value : access Java_Object'Class) return DownloadItemsTag_Access_Array_Access_Array_Access renames admin.tags.DownloadItemsTag_Package_References.Java_Unbox_DownloadItemsTag_Access_Array_Access_Array;

   type DownloadItemsTag is new TableTag with null record;

   procedure Initialize (This : in out DownloadItemsTag'Class);
   function Create return DownloadItemsTag_Access;
   function doStartTag (This : in out DownloadItemsTag) return Integer;

end admin.tags.DownloadItemsTag_Package;


