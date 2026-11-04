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

limited with org.allbinary.logic.visual.dhtml.style.StyleData_Package;
package org.allbinary.logic.visual.dhtml.style.StyleData_Package_References is
   type StyleData_Access is access all org.allbinary.logic.visual.dhtml.style.StyleData_Package.StyleData'Class;
   type StyleData_Access_Array is array (Natural range <>) of StyleData_Access;
   type StyleData_Access_Array_Access is access all StyleData_Access_Array;
   type StyleData_Access_Array_Access_Array is array (Natural range <>) of StyleData_Access_Array_Access;
   type StyleData_Access_Array_Access_Array_Access is access all StyleData_Access_Array_Access_Array;
end org.allbinary.logic.visual.dhtml.style.StyleData_Package_References;

with org.allbinary.logic.visual.dhtml.style.StyleData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.visual.dhtml.style.StyleData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype StyleData_Access is org.allbinary.logic.visual.dhtml.style.StyleData_Package_References.StyleData_Access;
   function "=" (Left, Right : StyleData_Access) return Boolean renames org.allbinary.logic.visual.dhtml.style.StyleData_Package_References."=";
   subtype StyleData_Access_Array is org.allbinary.logic.visual.dhtml.style.StyleData_Package_References.StyleData_Access_Array;
   function "=" (Left, Right : StyleData_Access_Array) return Boolean renames org.allbinary.logic.visual.dhtml.style.StyleData_Package_References."=";
   subtype StyleData_Access_Array_Access is org.allbinary.logic.visual.dhtml.style.StyleData_Package_References.StyleData_Access_Array_Access;
   function "=" (Left, Right : StyleData_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.dhtml.style.StyleData_Package_References."=";
   subtype StyleData_Access_Array_Access_Array is org.allbinary.logic.visual.dhtml.style.StyleData_Package_References.StyleData_Access_Array_Access_Array;
   function "=" (Left, Right : StyleData_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.dhtml.style.StyleData_Package_References."=";
   subtype StyleData_Access_Array_Access_Array_Access is org.allbinary.logic.visual.dhtml.style.StyleData_Package_References.StyleData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StyleData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.dhtml.style.StyleData_Package_References."=";

   type StyleData is new Java_Object with record
      NAME : Unbounded_String;
      NAMEMAXLEN : Integer;
   end record;
   instance : StyleData_Access;

   procedure Initialize (This : in out StyleData'Class);
   function Create return StyleData_Access;
   function getInstance return StyleData_Access;

end org.allbinary.logic.visual.dhtml.style.StyleData_Package;


