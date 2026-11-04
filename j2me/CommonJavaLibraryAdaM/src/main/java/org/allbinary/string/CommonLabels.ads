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

limited with org.allbinary.string_Id.CommonLabels_Package;
package org.allbinary.string_Id.CommonLabels_Package_References is
   type CommonLabels_Access is access all org.allbinary.string_Id.CommonLabels_Package.CommonLabels'Class;
   type CommonLabels_Access_Array is array (Natural range <>) of CommonLabels_Access;
   type CommonLabels_Access_Array_Access is access all CommonLabels_Access_Array;
   type CommonLabels_Access_Array_Access_Array is array (Natural range <>) of CommonLabels_Access_Array_Access;
   type CommonLabels_Access_Array_Access_Array_Access is access all CommonLabels_Access_Array_Access_Array;
end org.allbinary.string_Id.CommonLabels_Package_References;

with org.allbinary.string_Id.CommonLabels_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.string_Id.CommonLabels_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype CommonLabels_Access is org.allbinary.string_Id.CommonLabels_Package_References.CommonLabels_Access;
   function "=" (Left, Right : CommonLabels_Access) return Boolean renames org.allbinary.string_Id.CommonLabels_Package_References."=";
   subtype CommonLabels_Access_Array is org.allbinary.string_Id.CommonLabels_Package_References.CommonLabels_Access_Array;
   function "=" (Left, Right : CommonLabels_Access_Array) return Boolean renames org.allbinary.string_Id.CommonLabels_Package_References."=";
   subtype CommonLabels_Access_Array_Access is org.allbinary.string_Id.CommonLabels_Package_References.CommonLabels_Access_Array_Access;
   function "=" (Left, Right : CommonLabels_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonLabels_Package_References."=";
   subtype CommonLabels_Access_Array_Access_Array is org.allbinary.string_Id.CommonLabels_Package_References.CommonLabels_Access_Array_Access_Array;
   function "=" (Left, Right : CommonLabels_Access_Array_Access_Array) return Boolean renames org.allbinary.string_Id.CommonLabels_Package_References."=";
   subtype CommonLabels_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonLabels_Package_References.CommonLabels_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommonLabels_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonLabels_Package_References."=";

   type CommonLabels is new Java_Object with record
      WIDTH_LABEL : Unbounded_String;
      HEIGHT_LABEL : Unbounded_String;
      END_LABEL : Unbounded_String;
      TOTAL_LABEL : Unbounded_String;
      INDEX_LABEL : Unbounded_String;
      START_LABEL : Unbounded_String;
      COMMAND_LABEL : Unbounded_String;
      NAME_LABEL : Unbounded_String;
      START : Unbounded_String;
      ELAPSED : Unbounded_String;
      CURRENT : Unbounded_String;
      NEXT : Unbounded_String;
      ITEM_LABEL : Unbounded_String;
      RESULT_U : Unbounded_String;
      COLON_SEP : Unbounded_String;
   end record;
   instance : CommonLabels_Access;

   procedure Initialize (This : in out CommonLabels'Class);
   function Create return CommonLabels_Access;
   function getInstance return CommonLabels_Access;

end org.allbinary.string_Id.CommonLabels_Package;


