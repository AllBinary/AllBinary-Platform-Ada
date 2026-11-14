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
limited with admin.taghelpers.MultipartRequestParamForwardHelper_Package;
package admin.taghelpers.MultipartRequestParamForwardHelper_Package_References is
   type MultipartRequestParamForwardHelper_Access is access all admin.taghelpers.MultipartRequestParamForwardHelper_Package.MultipartRequestParamForwardHelper'Class;
   type MultipartRequestParamForwardHelper_Access_Array is array (Natural range <>) of MultipartRequestParamForwardHelper_Access;
   type MultipartRequestParamForwardHelper_Access_Array_Access is access all MultipartRequestParamForwardHelper_Access_Array;
   type MultipartRequestParamForwardHelper_Access_Array_Access_Array is array (Natural range <>) of MultipartRequestParamForwardHelper_Access_Array_Access;
   type MultipartRequestParamForwardHelper_Access_Array_Access_Array_Access is access all MultipartRequestParamForwardHelper_Access_Array_Access_Array;
   type MultipartRequestParamForwardHelper_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MultipartRequestParamForwardHelper_Access_Array_Access;
   end record;
   function Java_Box (Value : MultipartRequestParamForwardHelper_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MultipartRequestParamForwardHelper_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MultipartRequestParamForwardHelper_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MultipartRequestParamForwardHelper_Access_Array_Access is (if Value /= null and then Value.all in MultipartRequestParamForwardHelper_Access_Array_Object'Class then MultipartRequestParamForwardHelper_Access_Array_Object'Class (Value.all).Value else null);
   type MultipartRequestParamForwardHelper_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MultipartRequestParamForwardHelper_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : MultipartRequestParamForwardHelper_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MultipartRequestParamForwardHelper_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MultipartRequestParamForwardHelper_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MultipartRequestParamForwardHelper_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in MultipartRequestParamForwardHelper_Access_Array_Access_Array_Object'Class then MultipartRequestParamForwardHelper_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end admin.taghelpers.MultipartRequestParamForwardHelper_Package_References;

with admin.taghelpers.MultipartRequestParamForwardHelper_Package_References;
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
--  with javax.servlet.jsp.PageContext_Package; use javax.servlet.jsp.PageContext_Package;
limited with org.allbinary.logic.communication.http.request.RequestMapInterface_Package;
with org.allbinary.logic.communication.http.request.RequestMapInterface_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with tags.HelperTag_Package;
with tags.HelperTag_Package_References;

package admin.taghelpers.MultipartRequestParamForwardHelper_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package RequestMapInterface_Package renames Standard.org.allbinary.logic.communication.http.request.RequestMapInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package HelperTag_Package renames Standard.tags.HelperTag_Package;
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
   subtype RequestMapInterface_Access is org.allbinary.logic.communication.http.request.RequestMapInterface_Package_References.RequestMapInterface_Access;
   use type RequestMapInterface_Access;
   subtype RequestMapInterface_Access_Array is org.allbinary.logic.communication.http.request.RequestMapInterface_Package_References.RequestMapInterface_Access_Array;
   use type RequestMapInterface_Access_Array;
   subtype RequestMapInterface_Access_Array_Access is org.allbinary.logic.communication.http.request.RequestMapInterface_Package_References.RequestMapInterface_Access_Array_Access;
   use type RequestMapInterface_Access_Array_Access;
   subtype RequestMapInterface_Access_Array_Access_Array is org.allbinary.logic.communication.http.request.RequestMapInterface_Package_References.RequestMapInterface_Access_Array_Access_Array;
   use type RequestMapInterface_Access_Array_Access_Array;
   subtype RequestMapInterface_Access_Array_Access_Array_Access is org.allbinary.logic.communication.http.request.RequestMapInterface_Package_References.RequestMapInterface_Access_Array_Access_Array_Access;
   use type RequestMapInterface_Access_Array_Access_Array_Access;
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
   subtype HelperTag_Access is tags.HelperTag_Package_References.HelperTag_Access;
   use type HelperTag_Access;
   subtype HelperTag_Access_Array is tags.HelperTag_Package_References.HelperTag_Access_Array;
   use type HelperTag_Access_Array;
   subtype HelperTag_Access_Array_Access is tags.HelperTag_Package_References.HelperTag_Access_Array_Access;
   use type HelperTag_Access_Array_Access;
   subtype HelperTag_Access_Array_Access_Array is tags.HelperTag_Package_References.HelperTag_Access_Array_Access_Array;
   use type HelperTag_Access_Array_Access_Array;
   subtype HelperTag_Access_Array_Access_Array_Access is tags.HelperTag_Package_References.HelperTag_Access_Array_Access_Array_Access;
   use type HelperTag_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype MultipartRequestParamForwardHelper_Access is admin.taghelpers.MultipartRequestParamForwardHelper_Package_References.MultipartRequestParamForwardHelper_Access;
   function "=" (Left, Right : MultipartRequestParamForwardHelper_Access) return Boolean renames admin.taghelpers.MultipartRequestParamForwardHelper_Package_References."=";
   subtype MultipartRequestParamForwardHelper_Access_Array is admin.taghelpers.MultipartRequestParamForwardHelper_Package_References.MultipartRequestParamForwardHelper_Access_Array;
   function "=" (Left, Right : MultipartRequestParamForwardHelper_Access_Array) return Boolean renames admin.taghelpers.MultipartRequestParamForwardHelper_Package_References."=";
   subtype MultipartRequestParamForwardHelper_Access_Array_Access is admin.taghelpers.MultipartRequestParamForwardHelper_Package_References.MultipartRequestParamForwardHelper_Access_Array_Access;
   function "=" (Left, Right : MultipartRequestParamForwardHelper_Access_Array_Access) return Boolean renames admin.taghelpers.MultipartRequestParamForwardHelper_Package_References."=";
   function Java_Box (Value : MultipartRequestParamForwardHelper_Access_Array_Access) return Java_Object_Access renames admin.taghelpers.MultipartRequestParamForwardHelper_Package_References.Java_Box;
   function Java_Unbox_MultipartRequestParamForwardHelper_Access_Array (Value : access Java_Object'Class) return MultipartRequestParamForwardHelper_Access_Array_Access renames admin.taghelpers.MultipartRequestParamForwardHelper_Package_References.Java_Unbox_MultipartRequestParamForwardHelper_Access_Array;
   subtype MultipartRequestParamForwardHelper_Access_Array_Access_Array is admin.taghelpers.MultipartRequestParamForwardHelper_Package_References.MultipartRequestParamForwardHelper_Access_Array_Access_Array;
   function "=" (Left, Right : MultipartRequestParamForwardHelper_Access_Array_Access_Array) return Boolean renames admin.taghelpers.MultipartRequestParamForwardHelper_Package_References."=";
   subtype MultipartRequestParamForwardHelper_Access_Array_Access_Array_Access is admin.taghelpers.MultipartRequestParamForwardHelper_Package_References.MultipartRequestParamForwardHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MultipartRequestParamForwardHelper_Access_Array_Access_Array_Access) return Boolean renames admin.taghelpers.MultipartRequestParamForwardHelper_Package_References."=";
   function Java_Box (Value : MultipartRequestParamForwardHelper_Access_Array_Access_Array_Access) return Java_Object_Access renames admin.taghelpers.MultipartRequestParamForwardHelper_Package_References.Java_Box;
   function Java_Unbox_MultipartRequestParamForwardHelper_Access_Array_Access_Array (Value : access Java_Object'Class) return MultipartRequestParamForwardHelper_Access_Array_Access_Array_Access renames admin.taghelpers.MultipartRequestParamForwardHelper_Package_References.Java_Unbox_MultipartRequestParamForwardHelper_Access_Array_Access_Array;

   type MultipartRequestParamForwardHelper is new Java_Object with record
      logUtil : LogUtil_Access;
      pageContext : PageContext_Access;
      requestMapInterface : RequestMapInterface_Access;
      page : Unbounded_String;
      command : Unbounded_String;
      paramVector : BasicArrayList_Access;
   end record;

   procedure Initialize (This : in out MultipartRequestParamForwardHelper'Class; parentHelperTag_Param : access HelperTag_Package.HelperTag'Class; page : Unbounded_String; command : Unbounded_String; paramVector_Param : access BasicArrayList_Package.BasicArrayList'Class; pageContext_Param : access PageContext_Package.PageContext'Class);
   function Create (parentHelperTag_Param : access HelperTag_Package.HelperTag'Class; page : Unbounded_String; command : Unbounded_String; paramVector_Param : access BasicArrayList_Package.BasicArrayList'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return MultipartRequestParamForwardHelper_Access;
   procedure forward (This : in out MultipartRequestParamForwardHelper);
   function getParams (This : in out MultipartRequestParamForwardHelper) return Unbounded_String;
   function shouldForward (This : in out MultipartRequestParamForwardHelper) return Boolean;

end admin.taghelpers.MultipartRequestParamForwardHelper_Package;


