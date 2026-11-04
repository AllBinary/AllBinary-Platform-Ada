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

limited with org.allbinary.logic.visual.dhtml.style.css.property.color.background.BackgroundColorData_Package;
package org.allbinary.logic.visual.dhtml.style.css.property.color.background.BackgroundColorData_Package_References is
   type BackgroundColorData_Access is access all org.allbinary.logic.visual.dhtml.style.css.property.color.background.BackgroundColorData_Package.BackgroundColorData'Class;
   type BackgroundColorData_Access_Array is array (Natural range <>) of BackgroundColorData_Access;
   type BackgroundColorData_Access_Array_Access is access all BackgroundColorData_Access_Array;
   type BackgroundColorData_Access_Array_Access_Array is array (Natural range <>) of BackgroundColorData_Access_Array_Access;
   type BackgroundColorData_Access_Array_Access_Array_Access is access all BackgroundColorData_Access_Array_Access_Array;
end org.allbinary.logic.visual.dhtml.style.css.property.color.background.BackgroundColorData_Package_References;

with org.allbinary.logic.visual.dhtml.style.css.property.color.background.BackgroundColorData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.visual.dhtml.style.css.property.color.background.BackgroundColorData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype BackgroundColorData_Access is org.allbinary.logic.visual.dhtml.style.css.property.color.background.BackgroundColorData_Package_References.BackgroundColorData_Access;
   function "=" (Left, Right : BackgroundColorData_Access) return Boolean renames org.allbinary.logic.visual.dhtml.style.css.property.color.background.BackgroundColorData_Package_References."=";
   subtype BackgroundColorData_Access_Array is org.allbinary.logic.visual.dhtml.style.css.property.color.background.BackgroundColorData_Package_References.BackgroundColorData_Access_Array;
   function "=" (Left, Right : BackgroundColorData_Access_Array) return Boolean renames org.allbinary.logic.visual.dhtml.style.css.property.color.background.BackgroundColorData_Package_References."=";
   subtype BackgroundColorData_Access_Array_Access is org.allbinary.logic.visual.dhtml.style.css.property.color.background.BackgroundColorData_Package_References.BackgroundColorData_Access_Array_Access;
   function "=" (Left, Right : BackgroundColorData_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.dhtml.style.css.property.color.background.BackgroundColorData_Package_References."=";
   subtype BackgroundColorData_Access_Array_Access_Array is org.allbinary.logic.visual.dhtml.style.css.property.color.background.BackgroundColorData_Package_References.BackgroundColorData_Access_Array_Access_Array;
   function "=" (Left, Right : BackgroundColorData_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.dhtml.style.css.property.color.background.BackgroundColorData_Package_References."=";
   subtype BackgroundColorData_Access_Array_Access_Array_Access is org.allbinary.logic.visual.dhtml.style.css.property.color.background.BackgroundColorData_Package_References.BackgroundColorData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BackgroundColorData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.dhtml.style.css.property.color.background.BackgroundColorData_Package_References."=";

   type BackgroundColorData is new Java_Object with record
      VALUE : Unbounded_String;
   end record;
   instance : BackgroundColorData_Access;

   procedure Initialize (This : in out BackgroundColorData'Class);
   function Create return BackgroundColorData_Access;
   function getInstance return BackgroundColorData_Access;

end org.allbinary.logic.visual.dhtml.style.css.property.color.background.BackgroundColorData_Package;


