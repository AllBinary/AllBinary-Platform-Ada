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
limited with org.allbinary.logic.visual.dhtml.html.table.HtmlCell_Package;
package org.allbinary.logic.visual.dhtml.html.table.HtmlCell_Package_References is
   type HtmlCell_Access is access all org.allbinary.logic.visual.dhtml.html.table.HtmlCell_Package.HtmlCell'Class;
   type HtmlCell_Access_Array is array (Natural range <>) of HtmlCell_Access;
   type HtmlCell_Access_Array_Access is access all HtmlCell_Access_Array;
   type HtmlCell_Access_Array_Access_Array is array (Natural range <>) of HtmlCell_Access_Array_Access;
   type HtmlCell_Access_Array_Access_Array_Access is access all HtmlCell_Access_Array_Access_Array;
   type HtmlCell_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : HtmlCell_Access_Array_Access;
   end record;
   function Java_Box (Value : HtmlCell_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new HtmlCell_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_HtmlCell_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return HtmlCell_Access_Array_Access is (if Value /= null and then Value.all in HtmlCell_Access_Array_Object'Class then HtmlCell_Access_Array_Object'Class (Value.all).Value else null);
   type HtmlCell_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : HtmlCell_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : HtmlCell_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new HtmlCell_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_HtmlCell_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return HtmlCell_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in HtmlCell_Access_Array_Access_Array_Object'Class then HtmlCell_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.visual.dhtml.html.table.HtmlCell_Package_References;

with org.allbinary.logic.visual.dhtml.html.table.HtmlCell_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.visual.dhtml.html.HtmlTag_Package; use org.allbinary.logic.visual.dhtml.html.HtmlTag_Package;

package org.allbinary.logic.visual.dhtml.html.table.HtmlCell_Package is

   package HtmlTag_Package renames Standard.org.allbinary.logic.visual.dhtml.html.HtmlTag_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype HtmlCell_Access is org.allbinary.logic.visual.dhtml.html.table.HtmlCell_Package_References.HtmlCell_Access;
   function "=" (Left, Right : HtmlCell_Access) return Boolean renames org.allbinary.logic.visual.dhtml.html.table.HtmlCell_Package_References."=";
   subtype HtmlCell_Access_Array is org.allbinary.logic.visual.dhtml.html.table.HtmlCell_Package_References.HtmlCell_Access_Array;
   function "=" (Left, Right : HtmlCell_Access_Array) return Boolean renames org.allbinary.logic.visual.dhtml.html.table.HtmlCell_Package_References."=";
   subtype HtmlCell_Access_Array_Access is org.allbinary.logic.visual.dhtml.html.table.HtmlCell_Package_References.HtmlCell_Access_Array_Access;
   function "=" (Left, Right : HtmlCell_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.dhtml.html.table.HtmlCell_Package_References."=";
   function Java_Box (Value : HtmlCell_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.dhtml.html.table.HtmlCell_Package_References.Java_Box;
   function Java_Unbox_HtmlCell_Access_Array (Value : access Java_Object'Class) return HtmlCell_Access_Array_Access renames org.allbinary.logic.visual.dhtml.html.table.HtmlCell_Package_References.Java_Unbox_HtmlCell_Access_Array;
   subtype HtmlCell_Access_Array_Access_Array is org.allbinary.logic.visual.dhtml.html.table.HtmlCell_Package_References.HtmlCell_Access_Array_Access_Array;
   function "=" (Left, Right : HtmlCell_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.dhtml.html.table.HtmlCell_Package_References."=";
   subtype HtmlCell_Access_Array_Access_Array_Access is org.allbinary.logic.visual.dhtml.html.table.HtmlCell_Package_References.HtmlCell_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HtmlCell_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.dhtml.html.table.HtmlCell_Package_References."=";
   function Java_Box (Value : HtmlCell_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.dhtml.html.table.HtmlCell_Package_References.Java_Box;
   function Java_Unbox_HtmlCell_Access_Array_Access_Array (Value : access Java_Object'Class) return HtmlCell_Access_Array_Access_Array_Access renames org.allbinary.logic.visual.dhtml.html.table.HtmlCell_Package_References.Java_Unbox_HtmlCell_Access_Array_Access_Array;

   type HtmlCell is new HtmlTag with record
      END_Id : Unbounded_String;
      START : Unbounded_String;
      ENDTAG : Unbounded_String;
      HEIGHT : Unbounded_String;
      WIDTH : Unbounded_String;
      height_Case : Unbounded_String;
      width_Case : Unbounded_String;
      before : Unbounded_String;
      body_Id : Unbounded_String;
      after : Unbounded_String;
   end record;

   procedure Initialize (This : in out HtmlCell'Class; before : Unbounded_String; width : Unbounded_String; height : Unbounded_String; after : Unbounded_String);
   function Create (before : Unbounded_String; width : Unbounded_String; height : Unbounded_String; after : Unbounded_String) return HtmlCell_Access;
   procedure addText (This : in out HtmlCell; body_Id : Unbounded_String);
   function toString (This : in out HtmlCell) return Unbounded_String;

end org.allbinary.logic.visual.dhtml.html.table.HtmlCell_Package;


