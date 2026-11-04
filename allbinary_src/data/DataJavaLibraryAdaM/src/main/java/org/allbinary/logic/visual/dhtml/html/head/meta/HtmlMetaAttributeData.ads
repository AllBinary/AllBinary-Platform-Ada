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

limited with org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributeData_Package;
package org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributeData_Package_References is
   type HtmlMetaAttributeData_Access is access all org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributeData_Package.HtmlMetaAttributeData'Class;
   type HtmlMetaAttributeData_Access_Array is array (Natural range <>) of HtmlMetaAttributeData_Access;
   type HtmlMetaAttributeData_Access_Array_Access is access all HtmlMetaAttributeData_Access_Array;
   type HtmlMetaAttributeData_Access_Array_Access_Array is array (Natural range <>) of HtmlMetaAttributeData_Access_Array_Access;
   type HtmlMetaAttributeData_Access_Array_Access_Array_Access is access all HtmlMetaAttributeData_Access_Array_Access_Array;
end org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributeData_Package_References;

with org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributeData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributeData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype HtmlMetaAttributeData_Access is org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributeData_Package_References.HtmlMetaAttributeData_Access;
   function "=" (Left, Right : HtmlMetaAttributeData_Access) return Boolean renames org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributeData_Package_References."=";
   subtype HtmlMetaAttributeData_Access_Array is org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributeData_Package_References.HtmlMetaAttributeData_Access_Array;
   function "=" (Left, Right : HtmlMetaAttributeData_Access_Array) return Boolean renames org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributeData_Package_References."=";
   subtype HtmlMetaAttributeData_Access_Array_Access is org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributeData_Package_References.HtmlMetaAttributeData_Access_Array_Access;
   function "=" (Left, Right : HtmlMetaAttributeData_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributeData_Package_References."=";
   subtype HtmlMetaAttributeData_Access_Array_Access_Array is org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributeData_Package_References.HtmlMetaAttributeData_Access_Array_Access_Array;
   function "=" (Left, Right : HtmlMetaAttributeData_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributeData_Package_References."=";
   subtype HtmlMetaAttributeData_Access_Array_Access_Array_Access is org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributeData_Package_References.HtmlMetaAttributeData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HtmlMetaAttributeData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributeData_Package_References."=";

   type HtmlMetaAttributeData is new Java_Object with record
      id : Integer;
      name : Unbounded_String;
   end record;

   procedure Initialize (This : in out HtmlMetaAttributeData'Class; id : Integer; value : Unbounded_String);
   function Create (id : Integer; value : Unbounded_String) return HtmlMetaAttributeData_Access;
   function equals (This : in out HtmlMetaAttributeData; htmlMetaAttributeData_Var_Param : access HtmlMetaAttributeData_Package.HtmlMetaAttributeData'Class) return Boolean;
   procedure equals (This : in out HtmlMetaAttributeData; htmlMetaAttributeData_Var_Param : access HtmlMetaAttributeData_Package.HtmlMetaAttributeData'Class);
   function toString (This : in out HtmlMetaAttributeData) return Unbounded_String;

end org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributeData_Package;


