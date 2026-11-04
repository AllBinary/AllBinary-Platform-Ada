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

limited with org.allbinary.logic.visual.dhtml.html.table.HtmlTableData_Package;
package org.allbinary.logic.visual.dhtml.html.table.HtmlTableData_Package_References is
   type HtmlTableData_Access is access all org.allbinary.logic.visual.dhtml.html.table.HtmlTableData_Package.HtmlTableData'Class;
   type HtmlTableData_Access_Array is array (Natural range <>) of HtmlTableData_Access;
   type HtmlTableData_Access_Array_Access is access all HtmlTableData_Access_Array;
   type HtmlTableData_Access_Array_Access_Array is array (Natural range <>) of HtmlTableData_Access_Array_Access;
   type HtmlTableData_Access_Array_Access_Array_Access is access all HtmlTableData_Access_Array_Access_Array;
end org.allbinary.logic.visual.dhtml.html.table.HtmlTableData_Package_References;

with org.allbinary.logic.visual.dhtml.html.table.HtmlTableData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.visual.dhtml.html.table.HtmlTableData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype HtmlTableData_Access is org.allbinary.logic.visual.dhtml.html.table.HtmlTableData_Package_References.HtmlTableData_Access;
   function "=" (Left, Right : HtmlTableData_Access) return Boolean renames org.allbinary.logic.visual.dhtml.html.table.HtmlTableData_Package_References."=";
   subtype HtmlTableData_Access_Array is org.allbinary.logic.visual.dhtml.html.table.HtmlTableData_Package_References.HtmlTableData_Access_Array;
   function "=" (Left, Right : HtmlTableData_Access_Array) return Boolean renames org.allbinary.logic.visual.dhtml.html.table.HtmlTableData_Package_References."=";
   subtype HtmlTableData_Access_Array_Access is org.allbinary.logic.visual.dhtml.html.table.HtmlTableData_Package_References.HtmlTableData_Access_Array_Access;
   function "=" (Left, Right : HtmlTableData_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.dhtml.html.table.HtmlTableData_Package_References."=";
   subtype HtmlTableData_Access_Array_Access_Array is org.allbinary.logic.visual.dhtml.html.table.HtmlTableData_Package_References.HtmlTableData_Access_Array_Access_Array;
   function "=" (Left, Right : HtmlTableData_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.dhtml.html.table.HtmlTableData_Package_References."=";
   subtype HtmlTableData_Access_Array_Access_Array_Access is org.allbinary.logic.visual.dhtml.html.table.HtmlTableData_Package_References.HtmlTableData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HtmlTableData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.dhtml.html.table.HtmlTableData_Package_References."=";

   type HtmlTableData is new Java_Object with record
      LEFT : Unbounded_String;
      RIGHT : Unbounded_String;
      NONE : Unbounded_String;
      TOP : Unbounded_String;
      BOTTOM : Unbounded_String;
      TOPBOT : Unbounded_String;
      SIDES : Unbounded_String;
      ALL_Id : Unbounded_String;
      BORDERED : Unbounded_String;
      BASIC : Unbounded_String;
      ROWS : Unbounded_String;
      FRAMES : Unbounded_String_Array_Access;
   end record;
   instance : HtmlTableData_Access;

   procedure Initialize (This : in out HtmlTableData'Class);
   function Create return HtmlTableData_Access;
   function getInstance return HtmlTableData_Access;

end org.allbinary.logic.visual.dhtml.html.table.HtmlTableData_Package;


