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

limited with admin.tags.MultipartRequestParamForwardTag_Package;
package admin.tags.MultipartRequestParamForwardTag_Package_References is
   type MultipartRequestParamForwardTag_Access is access all admin.tags.MultipartRequestParamForwardTag_Package.MultipartRequestParamForwardTag'Class;
   type MultipartRequestParamForwardTag_Access_Array is array (Natural range <>) of MultipartRequestParamForwardTag_Access;
   type MultipartRequestParamForwardTag_Access_Array_Access is access all MultipartRequestParamForwardTag_Access_Array;
   type MultipartRequestParamForwardTag_Access_Array_Access_Array is array (Natural range <>) of MultipartRequestParamForwardTag_Access_Array_Access;
   type MultipartRequestParamForwardTag_Access_Array_Access_Array_Access is access all MultipartRequestParamForwardTag_Access_Array_Access_Array;
end admin.tags.MultipartRequestParamForwardTag_Package_References;

with admin.tags.MultipartRequestParamForwardTag_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
--  with javax.servlet.jsp.JspTagException_Package; use javax.servlet.jsp.JspTagException_Package;
--  with javax.servlet.jsp.tagext.Tag_Package; use javax.servlet.jsp.tagext.Tag_Package;
with tags.CustomTagSupport_Package; use tags.CustomTagSupport_Package;

package admin.tags.MultipartRequestParamForwardTag_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package CustomTagSupport_Package renames Standard.tags.CustomTagSupport_Package;
   package Reference_Types is
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype MultipartRequestParamForwardTag_Access is admin.tags.MultipartRequestParamForwardTag_Package_References.MultipartRequestParamForwardTag_Access;
   function "=" (Left, Right : MultipartRequestParamForwardTag_Access) return Boolean renames admin.tags.MultipartRequestParamForwardTag_Package_References."=";
   subtype MultipartRequestParamForwardTag_Access_Array is admin.tags.MultipartRequestParamForwardTag_Package_References.MultipartRequestParamForwardTag_Access_Array;
   function "=" (Left, Right : MultipartRequestParamForwardTag_Access_Array) return Boolean renames admin.tags.MultipartRequestParamForwardTag_Package_References."=";
   subtype MultipartRequestParamForwardTag_Access_Array_Access is admin.tags.MultipartRequestParamForwardTag_Package_References.MultipartRequestParamForwardTag_Access_Array_Access;
   function "=" (Left, Right : MultipartRequestParamForwardTag_Access_Array_Access) return Boolean renames admin.tags.MultipartRequestParamForwardTag_Package_References."=";
   subtype MultipartRequestParamForwardTag_Access_Array_Access_Array is admin.tags.MultipartRequestParamForwardTag_Package_References.MultipartRequestParamForwardTag_Access_Array_Access_Array;
   function "=" (Left, Right : MultipartRequestParamForwardTag_Access_Array_Access_Array) return Boolean renames admin.tags.MultipartRequestParamForwardTag_Package_References."=";
   subtype MultipartRequestParamForwardTag_Access_Array_Access_Array_Access is admin.tags.MultipartRequestParamForwardTag_Package_References.MultipartRequestParamForwardTag_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MultipartRequestParamForwardTag_Access_Array_Access_Array_Access) return Boolean renames admin.tags.MultipartRequestParamForwardTag_Package_References."=";

   type MultipartRequestParamForwardTag is new CustomTagSupport with record
      page : Unbounded_String;
      command : Unbounded_String;
      paramVector : BasicArrayList_Access;
   end record;

   procedure Initialize (This : in out MultipartRequestParamForwardTag'Class);
   function Create return MultipartRequestParamForwardTag_Access;
   procedure setPage (This : in out MultipartRequestParamForwardTag; page : Unbounded_String);
   procedure setCommand (This : in out MultipartRequestParamForwardTag; command : Unbounded_String);
   procedure setParamVector (This : in out MultipartRequestParamForwardTag; paramVector_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function doStartTag (This : in out MultipartRequestParamForwardTag) return Integer;

end admin.tags.MultipartRequestParamForwardTag_Package;


