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

limited with org.allbinary.logic.visual.dhtml.style.StylesData_Package;
package org.allbinary.logic.visual.dhtml.style.StylesData_Package_References is
   type StylesData_Access is access all org.allbinary.logic.visual.dhtml.style.StylesData_Package.StylesData'Class;
   type StylesData_Access_Array is array (Natural range <>) of StylesData_Access;
   type StylesData_Access_Array_Access is access all StylesData_Access_Array;
   type StylesData_Access_Array_Access_Array is array (Natural range <>) of StylesData_Access_Array_Access;
   type StylesData_Access_Array_Access_Array_Access is access all StylesData_Access_Array_Access_Array;
end org.allbinary.logic.visual.dhtml.style.StylesData_Package_References;

with org.allbinary.logic.visual.dhtml.style.StylesData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.visual.dhtml.style.StylesData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype StylesData_Access is org.allbinary.logic.visual.dhtml.style.StylesData_Package_References.StylesData_Access;
   function "=" (Left, Right : StylesData_Access) return Boolean renames org.allbinary.logic.visual.dhtml.style.StylesData_Package_References."=";
   subtype StylesData_Access_Array is org.allbinary.logic.visual.dhtml.style.StylesData_Package_References.StylesData_Access_Array;
   function "=" (Left, Right : StylesData_Access_Array) return Boolean renames org.allbinary.logic.visual.dhtml.style.StylesData_Package_References."=";
   subtype StylesData_Access_Array_Access is org.allbinary.logic.visual.dhtml.style.StylesData_Package_References.StylesData_Access_Array_Access;
   function "=" (Left, Right : StylesData_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.dhtml.style.StylesData_Package_References."=";
   subtype StylesData_Access_Array_Access_Array is org.allbinary.logic.visual.dhtml.style.StylesData_Package_References.StylesData_Access_Array_Access_Array;
   function "=" (Left, Right : StylesData_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.dhtml.style.StylesData_Package_References."=";
   subtype StylesData_Access_Array_Access_Array_Access is org.allbinary.logic.visual.dhtml.style.StylesData_Package_References.StylesData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StylesData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.dhtml.style.StylesData_Package_References."=";

   type StylesData is new Java_Object with record
      NAME : Unbounded_String;
   end record;
   instance : StylesData_Access;

   procedure Initialize (This : in out StylesData'Class);
   function Create return StylesData_Access;
   function getInstance return StylesData_Access;

end org.allbinary.logic.visual.dhtml.style.StylesData_Package;


