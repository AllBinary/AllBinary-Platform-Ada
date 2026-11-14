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
limited with org.allbinary.logic.visual.dhtml.html.input.HtmlSubmitInput_Package;
package org.allbinary.logic.visual.dhtml.html.input.HtmlSubmitInput_Package_References is
   type HtmlSubmitInput_Access is access all org.allbinary.logic.visual.dhtml.html.input.HtmlSubmitInput_Package.HtmlSubmitInput'Class;
   type HtmlSubmitInput_Access_Array is array (Natural range <>) of HtmlSubmitInput_Access;
   type HtmlSubmitInput_Access_Array_Access is access all HtmlSubmitInput_Access_Array;
   type HtmlSubmitInput_Access_Array_Access_Array is array (Natural range <>) of HtmlSubmitInput_Access_Array_Access;
   type HtmlSubmitInput_Access_Array_Access_Array_Access is access all HtmlSubmitInput_Access_Array_Access_Array;
   type HtmlSubmitInput_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : HtmlSubmitInput_Access_Array_Access;
   end record;
   function Java_Box (Value : HtmlSubmitInput_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new HtmlSubmitInput_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_HtmlSubmitInput_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return HtmlSubmitInput_Access_Array_Access is (if Value /= null and then Value.all in HtmlSubmitInput_Access_Array_Object'Class then HtmlSubmitInput_Access_Array_Object'Class (Value.all).Value else null);
   type HtmlSubmitInput_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : HtmlSubmitInput_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : HtmlSubmitInput_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new HtmlSubmitInput_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_HtmlSubmitInput_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return HtmlSubmitInput_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in HtmlSubmitInput_Access_Array_Access_Array_Object'Class then HtmlSubmitInput_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.visual.dhtml.html.input.HtmlSubmitInput_Package_References;

with org.allbinary.logic.visual.dhtml.html.input.HtmlSubmitInput_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.visual.dhtml.html.input.HtmlValueInput_Package; use org.allbinary.logic.visual.dhtml.html.input.HtmlValueInput_Package;

package org.allbinary.logic.visual.dhtml.html.input.HtmlSubmitInput_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype HtmlSubmitInput_Access is org.allbinary.logic.visual.dhtml.html.input.HtmlSubmitInput_Package_References.HtmlSubmitInput_Access;
   function "=" (Left, Right : HtmlSubmitInput_Access) return Boolean renames org.allbinary.logic.visual.dhtml.html.input.HtmlSubmitInput_Package_References."=";
   subtype HtmlSubmitInput_Access_Array is org.allbinary.logic.visual.dhtml.html.input.HtmlSubmitInput_Package_References.HtmlSubmitInput_Access_Array;
   function "=" (Left, Right : HtmlSubmitInput_Access_Array) return Boolean renames org.allbinary.logic.visual.dhtml.html.input.HtmlSubmitInput_Package_References."=";
   subtype HtmlSubmitInput_Access_Array_Access is org.allbinary.logic.visual.dhtml.html.input.HtmlSubmitInput_Package_References.HtmlSubmitInput_Access_Array_Access;
   function "=" (Left, Right : HtmlSubmitInput_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.dhtml.html.input.HtmlSubmitInput_Package_References."=";
   function Java_Box (Value : HtmlSubmitInput_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.dhtml.html.input.HtmlSubmitInput_Package_References.Java_Box;
   function Java_Unbox_HtmlSubmitInput_Access_Array (Value : access Java_Object'Class) return HtmlSubmitInput_Access_Array_Access renames org.allbinary.logic.visual.dhtml.html.input.HtmlSubmitInput_Package_References.Java_Unbox_HtmlSubmitInput_Access_Array;
   subtype HtmlSubmitInput_Access_Array_Access_Array is org.allbinary.logic.visual.dhtml.html.input.HtmlSubmitInput_Package_References.HtmlSubmitInput_Access_Array_Access_Array;
   function "=" (Left, Right : HtmlSubmitInput_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.dhtml.html.input.HtmlSubmitInput_Package_References."=";
   subtype HtmlSubmitInput_Access_Array_Access_Array_Access is org.allbinary.logic.visual.dhtml.html.input.HtmlSubmitInput_Package_References.HtmlSubmitInput_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HtmlSubmitInput_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.dhtml.html.input.HtmlSubmitInput_Package_References."=";
   function Java_Box (Value : HtmlSubmitInput_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.dhtml.html.input.HtmlSubmitInput_Package_References.Java_Box;
   function Java_Unbox_HtmlSubmitInput_Access_Array_Access_Array (Value : access Java_Object'Class) return HtmlSubmitInput_Access_Array_Access_Array_Access renames org.allbinary.logic.visual.dhtml.html.input.HtmlSubmitInput_Package_References.Java_Unbox_HtmlSubmitInput_Access_Array_Access_Array;

   type HtmlSubmitInput is new HtmlValueInput with null record;

   procedure Initialize (This : in out HtmlSubmitInput'Class; before : Unbounded_String; name : Unbounded_String; value : Unbounded_String; after : Unbounded_String);
   function Create (before : Unbounded_String; name : Unbounded_String; value : Unbounded_String; after : Unbounded_String) return HtmlSubmitInput_Access;

end org.allbinary.logic.visual.dhtml.html.input.HtmlSubmitInput_Package;


