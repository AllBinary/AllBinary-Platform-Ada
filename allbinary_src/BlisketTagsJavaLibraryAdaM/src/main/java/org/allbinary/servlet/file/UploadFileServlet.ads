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
limited with org.allbinary.servlet.file.UploadFileServlet_Package;
package org.allbinary.servlet.file.UploadFileServlet_Package_References is
   type UploadFileServlet_Access is access all org.allbinary.servlet.file.UploadFileServlet_Package.UploadFileServlet'Class;
   type UploadFileServlet_Access_Array is array (Natural range <>) of UploadFileServlet_Access;
   type UploadFileServlet_Access_Array_Access is access all UploadFileServlet_Access_Array;
   type UploadFileServlet_Access_Array_Access_Array is array (Natural range <>) of UploadFileServlet_Access_Array_Access;
   type UploadFileServlet_Access_Array_Access_Array_Access is access all UploadFileServlet_Access_Array_Access_Array;
   type UploadFileServlet_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : UploadFileServlet_Access_Array_Access;
   end record;
   function Java_Box (Value : UploadFileServlet_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new UploadFileServlet_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_UploadFileServlet_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return UploadFileServlet_Access_Array_Access is (if Value /= null and then Value.all in UploadFileServlet_Access_Array_Object'Class then UploadFileServlet_Access_Array_Object'Class (Value.all).Value else null);
   type UploadFileServlet_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : UploadFileServlet_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : UploadFileServlet_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new UploadFileServlet_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_UploadFileServlet_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return UploadFileServlet_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in UploadFileServlet_Access_Array_Access_Array_Object'Class then UploadFileServlet_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.servlet.file.UploadFileServlet_Package_References;

with org.allbinary.servlet.file.UploadFileServlet_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.io.IOException_Package; use java.io.IOException_Package;
with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with javax.servlet.ServletException_Package; use javax.servlet.ServletException_Package;
--  with javax.servlet.http.HttpServlet_Package; use javax.servlet.http.HttpServlet_Package;
--  with javax.servlet.http.HttpServletRequest_Package; use javax.servlet.http.HttpServletRequest_Package;
--  with javax.servlet.http.HttpServletResponse_Package; use javax.servlet.http.HttpServletResponse_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;

package org.allbinary.servlet.file.UploadFileServlet_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
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
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype UploadFileServlet_Access is org.allbinary.servlet.file.UploadFileServlet_Package_References.UploadFileServlet_Access;
   function "=" (Left, Right : UploadFileServlet_Access) return Boolean renames org.allbinary.servlet.file.UploadFileServlet_Package_References."=";
   subtype UploadFileServlet_Access_Array is org.allbinary.servlet.file.UploadFileServlet_Package_References.UploadFileServlet_Access_Array;
   function "=" (Left, Right : UploadFileServlet_Access_Array) return Boolean renames org.allbinary.servlet.file.UploadFileServlet_Package_References."=";
   subtype UploadFileServlet_Access_Array_Access is org.allbinary.servlet.file.UploadFileServlet_Package_References.UploadFileServlet_Access_Array_Access;
   function "=" (Left, Right : UploadFileServlet_Access_Array_Access) return Boolean renames org.allbinary.servlet.file.UploadFileServlet_Package_References."=";
   function Java_Box (Value : UploadFileServlet_Access_Array_Access) return Java_Object_Access renames org.allbinary.servlet.file.UploadFileServlet_Package_References.Java_Box;
   function Java_Unbox_UploadFileServlet_Access_Array (Value : access Java_Object'Class) return UploadFileServlet_Access_Array_Access renames org.allbinary.servlet.file.UploadFileServlet_Package_References.Java_Unbox_UploadFileServlet_Access_Array;
   subtype UploadFileServlet_Access_Array_Access_Array is org.allbinary.servlet.file.UploadFileServlet_Package_References.UploadFileServlet_Access_Array_Access_Array;
   function "=" (Left, Right : UploadFileServlet_Access_Array_Access_Array) return Boolean renames org.allbinary.servlet.file.UploadFileServlet_Package_References."=";
   subtype UploadFileServlet_Access_Array_Access_Array_Access is org.allbinary.servlet.file.UploadFileServlet_Package_References.UploadFileServlet_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UploadFileServlet_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.servlet.file.UploadFileServlet_Package_References."=";
   function Java_Box (Value : UploadFileServlet_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.servlet.file.UploadFileServlet_Package_References.Java_Box;
   function Java_Unbox_UploadFileServlet_Access_Array_Access_Array (Value : access Java_Object'Class) return UploadFileServlet_Access_Array_Access_Array_Access renames org.allbinary.servlet.file.UploadFileServlet_Package_References.Java_Unbox_UploadFileServlet_Access_Array_Access_Array;

   type UploadFileServlet is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      requestHashMap : HashMap_Access;
      fileName : Unbounded_String;
   end record;

   procedure Initialize (This : in out UploadFileServlet'Class);
   function Create return UploadFileServlet_Access;
   procedure processRequest (This : in out UploadFileServlet; request_Param : access HttpServletRequest_Package.HttpServletRequest'Class; response_Param : access HttpServletResponse_Package.HttpServletResponse'Class);
   procedure saveFile (This : in out UploadFileServlet; filePath_Param : Unbounded_String);
   procedure doGet (This : in out UploadFileServlet; request_Param : access HttpServletRequest_Package.HttpServletRequest'Class; response_Param : access HttpServletResponse_Package.HttpServletResponse'Class);
   procedure doPost (This : in out UploadFileServlet; request_Param : access HttpServletRequest_Package.HttpServletRequest'Class; response_Param : access HttpServletResponse_Package.HttpServletResponse'Class);
   function getServletInfo (This : in out UploadFileServlet) return Unbounded_String;

end org.allbinary.servlet.file.UploadFileServlet_Package;


