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

limited with org.allbinary.servlet.MagicalImageServlet_Package;
package org.allbinary.servlet.MagicalImageServlet_Package_References is
   type MagicalImageServlet_Access is access all org.allbinary.servlet.MagicalImageServlet_Package.MagicalImageServlet'Class;
   type MagicalImageServlet_Access_Array is array (Natural range <>) of MagicalImageServlet_Access;
   type MagicalImageServlet_Access_Array_Access is access all MagicalImageServlet_Access_Array;
   type MagicalImageServlet_Access_Array_Access_Array is array (Natural range <>) of MagicalImageServlet_Access_Array_Access;
   type MagicalImageServlet_Access_Array_Access_Array_Access is access all MagicalImageServlet_Access_Array_Access_Array;
end org.allbinary.servlet.MagicalImageServlet_Package_References;

with org.allbinary.servlet.MagicalImageServlet_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.io.IOException_Package; use java.io.IOException_Package;
--  with javax.servlet.ServletException_Package; use javax.servlet.ServletException_Package;
--  with javax.servlet.http.HttpServlet_Package; use javax.servlet.http.HttpServlet_Package;
--  with javax.servlet.http.HttpServletRequest_Package; use javax.servlet.http.HttpServletRequest_Package;
--  with javax.servlet.http.HttpServletResponse_Package; use javax.servlet.http.HttpServletResponse_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;

package org.allbinary.servlet.MagicalImageServlet_Package is

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


   subtype MagicalImageServlet_Access is org.allbinary.servlet.MagicalImageServlet_Package_References.MagicalImageServlet_Access;
   function "=" (Left, Right : MagicalImageServlet_Access) return Boolean renames org.allbinary.servlet.MagicalImageServlet_Package_References."=";
   subtype MagicalImageServlet_Access_Array is org.allbinary.servlet.MagicalImageServlet_Package_References.MagicalImageServlet_Access_Array;
   function "=" (Left, Right : MagicalImageServlet_Access_Array) return Boolean renames org.allbinary.servlet.MagicalImageServlet_Package_References."=";
   subtype MagicalImageServlet_Access_Array_Access is org.allbinary.servlet.MagicalImageServlet_Package_References.MagicalImageServlet_Access_Array_Access;
   function "=" (Left, Right : MagicalImageServlet_Access_Array_Access) return Boolean renames org.allbinary.servlet.MagicalImageServlet_Package_References."=";
   subtype MagicalImageServlet_Access_Array_Access_Array is org.allbinary.servlet.MagicalImageServlet_Package_References.MagicalImageServlet_Access_Array_Access_Array;
   function "=" (Left, Right : MagicalImageServlet_Access_Array_Access_Array) return Boolean renames org.allbinary.servlet.MagicalImageServlet_Package_References."=";
   subtype MagicalImageServlet_Access_Array_Access_Array_Access is org.allbinary.servlet.MagicalImageServlet_Package_References.MagicalImageServlet_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MagicalImageServlet_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.servlet.MagicalImageServlet_Package_References."=";

   type MagicalImageServlet is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
   end record;

   procedure Initialize (This : in out MagicalImageServlet'Class);
   function Create return MagicalImageServlet_Access;
   procedure processRequest (This : in out MagicalImageServlet; request_Param : access HttpServletRequest_Package.HttpServletRequest'Class; response_Param : access HttpServletResponse_Package.HttpServletResponse'Class);
   procedure doGet (This : in out MagicalImageServlet; request_Param : access HttpServletRequest_Package.HttpServletRequest'Class; response_Param : access HttpServletResponse_Package.HttpServletResponse'Class);
   procedure doPost (This : in out MagicalImageServlet; request_Param : access HttpServletRequest_Package.HttpServletRequest'Class; response_Param : access HttpServletResponse_Package.HttpServletResponse'Class);
   function getServletInfo (This : in out MagicalImageServlet) return Unbounded_String;

end org.allbinary.servlet.MagicalImageServlet_Package;


