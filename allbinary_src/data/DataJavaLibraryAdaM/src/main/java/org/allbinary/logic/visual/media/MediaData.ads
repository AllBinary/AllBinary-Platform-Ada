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

limited with org.allbinary.logic.visual.media.MediaData_Package;
package org.allbinary.logic.visual.media.MediaData_Package_References is
   type MediaData_Access is access all org.allbinary.logic.visual.media.MediaData_Package.MediaData'Class;
   type MediaData_Access_Array is array (Natural range <>) of MediaData_Access;
   type MediaData_Access_Array_Access is access all MediaData_Access_Array;
   type MediaData_Access_Array_Access_Array is array (Natural range <>) of MediaData_Access_Array_Access;
   type MediaData_Access_Array_Access_Array_Access is access all MediaData_Access_Array_Access_Array;
end org.allbinary.logic.visual.media.MediaData_Package_References;

with org.allbinary.logic.visual.media.MediaData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;

package org.allbinary.logic.visual.media.MediaData_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype MediaData_Access is org.allbinary.logic.visual.media.MediaData_Package_References.MediaData_Access;
   function "=" (Left, Right : MediaData_Access) return Boolean renames org.allbinary.logic.visual.media.MediaData_Package_References."=";
   subtype MediaData_Access_Array is org.allbinary.logic.visual.media.MediaData_Package_References.MediaData_Access_Array;
   function "=" (Left, Right : MediaData_Access_Array) return Boolean renames org.allbinary.logic.visual.media.MediaData_Package_References."=";
   subtype MediaData_Access_Array_Access is org.allbinary.logic.visual.media.MediaData_Package_References.MediaData_Access_Array_Access;
   function "=" (Left, Right : MediaData_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.media.MediaData_Package_References."=";
   subtype MediaData_Access_Array_Access_Array is org.allbinary.logic.visual.media.MediaData_Package_References.MediaData_Access_Array_Access_Array;
   function "=" (Left, Right : MediaData_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.media.MediaData_Package_References."=";
   subtype MediaData_Access_Array_Access_Array_Access is org.allbinary.logic.visual.media.MediaData_Package_References.MediaData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MediaData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.media.MediaData_Package_References."=";

   type MediaData is new Java_Object with record
      name : Unbounded_String;
      type_Id : Unbounded_String;
      extension : Unbounded_String;
   end record;
   hashMap : HashMap_Access;

   procedure Initialize (This : in out MediaData'Class; a_Name : Unbounded_String);
   function Create (a_Name : Unbounded_String) return MediaData_Access;
   function getName (This : in out MediaData) return Unbounded_String;
   function getType (This : in out MediaData) return Unbounded_String;
   function getExtension (This : in out MediaData) return Unbounded_String;
   function isConvertableTo (This : in out MediaData; mediaData_Var_Param : access MediaData_Package.MediaData'Class) return Boolean;
   procedure isConvertableTo (This : in out MediaData; mediaData_Var_Param : access MediaData_Package.MediaData'Class);
   function toString (This : in out MediaData) return Unbounded_String;
   function get (a_Name : Unbounded_String) return MediaData_Access;
   procedure get (a_Name : Unbounded_String);
   function getDefault return MediaData_Access;
   function toHashMap return HashMap_Access;

end org.allbinary.logic.visual.media.MediaData_Package;


