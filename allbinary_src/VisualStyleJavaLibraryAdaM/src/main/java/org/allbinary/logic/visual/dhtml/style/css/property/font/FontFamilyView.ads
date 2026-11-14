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
limited with org.allbinary.logic.visual.dhtml.style.css.property.font.FontFamilyView_Package;
package org.allbinary.logic.visual.dhtml.style.css.property.font.FontFamilyView_Package_References is
   type FontFamilyView_Access is access all org.allbinary.logic.visual.dhtml.style.css.property.font.FontFamilyView_Package.FontFamilyView'Class;
   type FontFamilyView_Access_Array is array (Natural range <>) of FontFamilyView_Access;
   type FontFamilyView_Access_Array_Access is access all FontFamilyView_Access_Array;
   type FontFamilyView_Access_Array_Access_Array is array (Natural range <>) of FontFamilyView_Access_Array_Access;
   type FontFamilyView_Access_Array_Access_Array_Access is access all FontFamilyView_Access_Array_Access_Array;
   type FontFamilyView_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : FontFamilyView_Access_Array_Access;
   end record;
   function Java_Box (Value : FontFamilyView_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new FontFamilyView_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_FontFamilyView_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return FontFamilyView_Access_Array_Access is (if Value /= null and then Value.all in FontFamilyView_Access_Array_Object'Class then FontFamilyView_Access_Array_Object'Class (Value.all).Value else null);
   type FontFamilyView_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : FontFamilyView_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : FontFamilyView_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new FontFamilyView_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_FontFamilyView_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return FontFamilyView_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in FontFamilyView_Access_Array_Access_Array_Object'Class then FontFamilyView_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.visual.dhtml.style.css.property.font.FontFamilyView_Package_References;

with org.allbinary.logic.visual.dhtml.style.css.property.font.FontFamilyView_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyView_Package; use org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyView_Package;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;

package org.allbinary.logic.visual.dhtml.style.css.property.font.FontFamilyView_Package is

   package CssPropertyView_Package renames Standard.org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyView_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package Reference_Types is
   subtype Node_Access is org.w3c.dom.Node_Package_References.Node_Access;
   use type Node_Access;
   subtype Node_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array;
   use type Node_Access_Array;
   subtype Node_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access;
   use type Node_Access_Array_Access;
   subtype Node_Access_Array_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array;
   use type Node_Access_Array_Access_Array;
   subtype Node_Access_Array_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array_Access;
   use type Node_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype FontFamilyView_Access is org.allbinary.logic.visual.dhtml.style.css.property.font.FontFamilyView_Package_References.FontFamilyView_Access;
   function "=" (Left, Right : FontFamilyView_Access) return Boolean renames org.allbinary.logic.visual.dhtml.style.css.property.font.FontFamilyView_Package_References."=";
   subtype FontFamilyView_Access_Array is org.allbinary.logic.visual.dhtml.style.css.property.font.FontFamilyView_Package_References.FontFamilyView_Access_Array;
   function "=" (Left, Right : FontFamilyView_Access_Array) return Boolean renames org.allbinary.logic.visual.dhtml.style.css.property.font.FontFamilyView_Package_References."=";
   subtype FontFamilyView_Access_Array_Access is org.allbinary.logic.visual.dhtml.style.css.property.font.FontFamilyView_Package_References.FontFamilyView_Access_Array_Access;
   function "=" (Left, Right : FontFamilyView_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.dhtml.style.css.property.font.FontFamilyView_Package_References."=";
   function Java_Box (Value : FontFamilyView_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.dhtml.style.css.property.font.FontFamilyView_Package_References.Java_Box;
   function Java_Unbox_FontFamilyView_Access_Array (Value : access Java_Object'Class) return FontFamilyView_Access_Array_Access renames org.allbinary.logic.visual.dhtml.style.css.property.font.FontFamilyView_Package_References.Java_Unbox_FontFamilyView_Access_Array;
   subtype FontFamilyView_Access_Array_Access_Array is org.allbinary.logic.visual.dhtml.style.css.property.font.FontFamilyView_Package_References.FontFamilyView_Access_Array_Access_Array;
   function "=" (Left, Right : FontFamilyView_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.dhtml.style.css.property.font.FontFamilyView_Package_References."=";
   subtype FontFamilyView_Access_Array_Access_Array_Access is org.allbinary.logic.visual.dhtml.style.css.property.font.FontFamilyView_Package_References.FontFamilyView_Access_Array_Access_Array_Access;
   function "=" (Left, Right : FontFamilyView_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.dhtml.style.css.property.font.FontFamilyView_Package_References."=";
   function Java_Box (Value : FontFamilyView_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.dhtml.style.css.property.font.FontFamilyView_Package_References.Java_Box;
   function Java_Unbox_FontFamilyView_Access_Array_Access_Array (Value : access Java_Object'Class) return FontFamilyView_Access_Array_Access_Array_Access renames org.allbinary.logic.visual.dhtml.style.css.property.font.FontFamilyView_Package_References.Java_Unbox_FontFamilyView_Access_Array_Access_Array;

   type FontFamilyView is new CssPropertyView with null record;

   procedure Initialize (This : in out FontFamilyView'Class);
   function Create return FontFamilyView_Access;
   procedure Initialize (This : in out FontFamilyView'Class; node_Param : access Node_Package.Node'Class);
   function Create (node_Param : access Node_Package.Node'Class) return FontFamilyView_Access;

end org.allbinary.logic.visual.dhtml.style.css.property.font.FontFamilyView_Package;


