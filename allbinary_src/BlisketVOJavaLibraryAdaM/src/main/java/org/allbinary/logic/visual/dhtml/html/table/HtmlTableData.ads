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
limited with org.allbinary.logic.visual.dhtml.html.table.HtmlTableData_Package;
package org.allbinary.logic.visual.dhtml.html.table.HtmlTableData_Package_References is
   type HtmlTableData_Access is access all org.allbinary.logic.visual.dhtml.html.table.HtmlTableData_Package.HtmlTableData'Class;
   type HtmlTableData_Access_Array is array (Natural range <>) of HtmlTableData_Access;
   type HtmlTableData_Access_Array_Access is access all HtmlTableData_Access_Array;
   type HtmlTableData_Access_Array_Access_Array is array (Natural range <>) of HtmlTableData_Access_Array_Access;
   type HtmlTableData_Access_Array_Access_Array_Access is access all HtmlTableData_Access_Array_Access_Array;
   type HtmlTableData_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : HtmlTableData_Access_Array_Access;
   end record;
   function Java_Box (Value : HtmlTableData_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new HtmlTableData_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_HtmlTableData_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return HtmlTableData_Access_Array_Access is (if Value /= null and then Value.all in HtmlTableData_Access_Array_Object'Class then HtmlTableData_Access_Array_Object'Class (Value.all).Value else null);
   type HtmlTableData_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : HtmlTableData_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : HtmlTableData_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new HtmlTableData_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_HtmlTableData_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return HtmlTableData_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in HtmlTableData_Access_Array_Access_Array_Object'Class then HtmlTableData_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
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
   function Java_Box (Value : HtmlTableData_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.dhtml.html.table.HtmlTableData_Package_References.Java_Box;
   function Java_Unbox_HtmlTableData_Access_Array (Value : access Java_Object'Class) return HtmlTableData_Access_Array_Access renames org.allbinary.logic.visual.dhtml.html.table.HtmlTableData_Package_References.Java_Unbox_HtmlTableData_Access_Array;
   subtype HtmlTableData_Access_Array_Access_Array is org.allbinary.logic.visual.dhtml.html.table.HtmlTableData_Package_References.HtmlTableData_Access_Array_Access_Array;
   function "=" (Left, Right : HtmlTableData_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.dhtml.html.table.HtmlTableData_Package_References."=";
   subtype HtmlTableData_Access_Array_Access_Array_Access is org.allbinary.logic.visual.dhtml.html.table.HtmlTableData_Package_References.HtmlTableData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HtmlTableData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.dhtml.html.table.HtmlTableData_Package_References."=";
   function Java_Box (Value : HtmlTableData_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.dhtml.html.table.HtmlTableData_Package_References.Java_Box;
   function Java_Unbox_HtmlTableData_Access_Array_Access_Array (Value : access Java_Object'Class) return HtmlTableData_Access_Array_Access_Array_Access renames org.allbinary.logic.visual.dhtml.html.table.HtmlTableData_Package_References.Java_Unbox_HtmlTableData_Access_Array_Access_Array;

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


