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

limited with org.allbinary.log.LOGGING_Package;
package org.allbinary.log.LOGGING_Package_References is
   type LOGGING_Access is access all org.allbinary.log.LOGGING_Package.LOGGING'Class;
   type LOGGING_Access_Array is array (Natural range <>) of LOGGING_Access;
   type LOGGING_Access_Array_Access is access all LOGGING_Access_Array;
   type LOGGING_Access_Array_Access_Array is array (Natural range <>) of LOGGING_Access_Array_Access;
   type LOGGING_Access_Array_Access_Array_Access is access all LOGGING_Access_Array_Access_Array;
end org.allbinary.log.LOGGING_Package_References;

with org.allbinary.log.LOGGING_Package_References;
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

package org.allbinary.log.LOGGING_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
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


   subtype LOGGING_Access is org.allbinary.log.LOGGING_Package_References.LOGGING_Access;
   function "=" (Left, Right : LOGGING_Access) return Boolean renames org.allbinary.log.LOGGING_Package_References."=";
   subtype LOGGING_Access_Array is org.allbinary.log.LOGGING_Package_References.LOGGING_Access_Array;
   function "=" (Left, Right : LOGGING_Access_Array) return Boolean renames org.allbinary.log.LOGGING_Package_References."=";
   subtype LOGGING_Access_Array_Access is org.allbinary.log.LOGGING_Package_References.LOGGING_Access_Array_Access;
   function "=" (Left, Right : LOGGING_Access_Array_Access) return Boolean renames org.allbinary.log.LOGGING_Package_References."=";
   subtype LOGGING_Access_Array_Access_Array is org.allbinary.log.LOGGING_Package_References.LOGGING_Access_Array_Access_Array;
   function "=" (Left, Right : LOGGING_Access_Array_Access_Array) return Boolean renames org.allbinary.log.LOGGING_Package_References."=";
   subtype LOGGING_Access_Array_Access_Array_Access is org.allbinary.log.LOGGING_Package_References.LOGGING_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LOGGING_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.log.LOGGING_Package_References."=";

   type LOGGING is new Java_Object with record
      name : Unbounded_String;
   end record;
   logging_Var : BasicArrayList_Access;
   GRAPHICSPAINT : LOGGING_Access;
   GRAPHICSCREATION : LOGGING_Access;
   GRAPHICSDELETION : LOGGING_Access;
   LOADINGERROR : LOGGING_Access;
   MENUEVENT : LOGGING_Access;
   MOUSEEVENT : LOGGING_Access;
   KEYEVENT : LOGGING_Access;
   ACTIONEVENT : LOGGING_Access;
   ADJUSTMENTEVENT : LOGGING_Access;
   COMPONENTEVENT : LOGGING_Access;
   CONTAINEREVENT : LOGGING_Access;
   FOCUSEVENT : LOGGING_Access;
   HIERARCHYEVENT : LOGGING_Access;
   INPUTEVENT : LOGGING_Access;
   INVOCATIONEVENT : LOGGING_Access;
   ITEMEVENT : LOGGING_Access;
   PAINTEVENT : LOGGING_Access;
   TEXTEVENT : LOGGING_Access;
   WINDOWEVENT : LOGGING_Access;

   procedure Initialize (This : in out LOGGING'Class; value : Unbounded_String);
   function Create (value : Unbounded_String) return LOGGING_Access;
   function contains (logType_Param : access LOGGING_Package.LOGGING'Class) return Boolean;
   procedure contains (logType_Param : access LOGGING_Package.LOGGING'Class);
   function toString (This : in out LOGGING) return Unbounded_String;

end org.allbinary.log.LOGGING_Package;


