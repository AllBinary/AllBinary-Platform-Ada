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
limited with org.allbinary.logic.visual.dhtml.html.HtmlPostForm_Package;
package org.allbinary.logic.visual.dhtml.html.HtmlPostForm_Package_References is
   type HtmlPostForm_Access is access all org.allbinary.logic.visual.dhtml.html.HtmlPostForm_Package.HtmlPostForm'Class;
   type HtmlPostForm_Access_Array is array (Natural range <>) of HtmlPostForm_Access;
   type HtmlPostForm_Access_Array_Access is access all HtmlPostForm_Access_Array;
   type HtmlPostForm_Access_Array_Access_Array is array (Natural range <>) of HtmlPostForm_Access_Array_Access;
   type HtmlPostForm_Access_Array_Access_Array_Access is access all HtmlPostForm_Access_Array_Access_Array;
   type HtmlPostForm_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : HtmlPostForm_Access_Array_Access;
   end record;
   function Java_Box (Value : HtmlPostForm_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new HtmlPostForm_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_HtmlPostForm_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return HtmlPostForm_Access_Array_Access is (if Value /= null and then Value.all in HtmlPostForm_Access_Array_Object'Class then HtmlPostForm_Access_Array_Object'Class (Value.all).Value else null);
   type HtmlPostForm_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : HtmlPostForm_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : HtmlPostForm_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new HtmlPostForm_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_HtmlPostForm_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return HtmlPostForm_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in HtmlPostForm_Access_Array_Access_Array_Object'Class then HtmlPostForm_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.visual.dhtml.html.HtmlPostForm_Package_References;

with org.allbinary.logic.visual.dhtml.html.HtmlPostForm_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.visual.dhtml.html.HtmlForm_Package; use org.allbinary.logic.visual.dhtml.html.HtmlForm_Package;

package org.allbinary.logic.visual.dhtml.html.HtmlPostForm_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype HtmlPostForm_Access is org.allbinary.logic.visual.dhtml.html.HtmlPostForm_Package_References.HtmlPostForm_Access;
   function "=" (Left, Right : HtmlPostForm_Access) return Boolean renames org.allbinary.logic.visual.dhtml.html.HtmlPostForm_Package_References."=";
   subtype HtmlPostForm_Access_Array is org.allbinary.logic.visual.dhtml.html.HtmlPostForm_Package_References.HtmlPostForm_Access_Array;
   function "=" (Left, Right : HtmlPostForm_Access_Array) return Boolean renames org.allbinary.logic.visual.dhtml.html.HtmlPostForm_Package_References."=";
   subtype HtmlPostForm_Access_Array_Access is org.allbinary.logic.visual.dhtml.html.HtmlPostForm_Package_References.HtmlPostForm_Access_Array_Access;
   function "=" (Left, Right : HtmlPostForm_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.dhtml.html.HtmlPostForm_Package_References."=";
   function Java_Box (Value : HtmlPostForm_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.dhtml.html.HtmlPostForm_Package_References.Java_Box;
   function Java_Unbox_HtmlPostForm_Access_Array (Value : access Java_Object'Class) return HtmlPostForm_Access_Array_Access renames org.allbinary.logic.visual.dhtml.html.HtmlPostForm_Package_References.Java_Unbox_HtmlPostForm_Access_Array;
   subtype HtmlPostForm_Access_Array_Access_Array is org.allbinary.logic.visual.dhtml.html.HtmlPostForm_Package_References.HtmlPostForm_Access_Array_Access_Array;
   function "=" (Left, Right : HtmlPostForm_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.dhtml.html.HtmlPostForm_Package_References."=";
   subtype HtmlPostForm_Access_Array_Access_Array_Access is org.allbinary.logic.visual.dhtml.html.HtmlPostForm_Package_References.HtmlPostForm_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HtmlPostForm_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.dhtml.html.HtmlPostForm_Package_References."=";
   function Java_Box (Value : HtmlPostForm_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.dhtml.html.HtmlPostForm_Package_References.Java_Box;
   function Java_Unbox_HtmlPostForm_Access_Array_Access_Array (Value : access Java_Object'Class) return HtmlPostForm_Access_Array_Access_Array_Access renames org.allbinary.logic.visual.dhtml.html.HtmlPostForm_Package_References.Java_Unbox_HtmlPostForm_Access_Array_Access_Array;

   type HtmlPostForm is new HtmlForm with null record;

   procedure Initialize (This : in out HtmlPostForm'Class; action : Unbounded_String);
   function Create (action : Unbounded_String) return HtmlPostForm_Access;

end org.allbinary.logic.visual.dhtml.html.HtmlPostForm_Package;


