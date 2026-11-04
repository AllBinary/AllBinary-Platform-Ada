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

limited with org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributesData_Package;
package org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributesData_Package_References is
   type HtmlMetaAttributesData_Access is access all org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributesData_Package.HtmlMetaAttributesData'Class;
   type HtmlMetaAttributesData_Access_Array is array (Natural range <>) of HtmlMetaAttributesData_Access;
   type HtmlMetaAttributesData_Access_Array_Access is access all HtmlMetaAttributesData_Access_Array;
   type HtmlMetaAttributesData_Access_Array_Access_Array is array (Natural range <>) of HtmlMetaAttributesData_Access_Array_Access;
   type HtmlMetaAttributesData_Access_Array_Access_Array_Access is access all HtmlMetaAttributesData_Access_Array_Access_Array;
end org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributesData_Package_References;

with org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributesData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributesData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype HtmlMetaAttributesData_Access is org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributesData_Package_References.HtmlMetaAttributesData_Access;
   function "=" (Left, Right : HtmlMetaAttributesData_Access) return Boolean renames org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributesData_Package_References."=";
   subtype HtmlMetaAttributesData_Access_Array is org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributesData_Package_References.HtmlMetaAttributesData_Access_Array;
   function "=" (Left, Right : HtmlMetaAttributesData_Access_Array) return Boolean renames org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributesData_Package_References."=";
   subtype HtmlMetaAttributesData_Access_Array_Access is org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributesData_Package_References.HtmlMetaAttributesData_Access_Array_Access;
   function "=" (Left, Right : HtmlMetaAttributesData_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributesData_Package_References."=";
   subtype HtmlMetaAttributesData_Access_Array_Access_Array is org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributesData_Package_References.HtmlMetaAttributesData_Access_Array_Access_Array;
   function "=" (Left, Right : HtmlMetaAttributesData_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributesData_Package_References."=";
   subtype HtmlMetaAttributesData_Access_Array_Access_Array_Access is org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributesData_Package_References.HtmlMetaAttributesData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HtmlMetaAttributesData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributesData_Package_References."=";

   type HtmlMetaAttributesData is new Java_Object with record
      NAME_VALUE : Unbounded_String;
      HTTP_EQUIV_VALUE : Unbounded_String;
   end record;
   instance : HtmlMetaAttributesData_Access;

   procedure Initialize (This : in out HtmlMetaAttributesData'Class);
   function Create return HtmlMetaAttributesData_Access;
   function getInstance return HtmlMetaAttributesData_Access;

end org.allbinary.logic.visual.dhtml.html.head.meta.HtmlMetaAttributesData_Package;


