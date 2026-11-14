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
limited with org.allbinary.logic.visual.dhtml.html.HtmlTags_Package;
package org.allbinary.logic.visual.dhtml.html.HtmlTags_Package_References is
   type HtmlTags_Access is access all org.allbinary.logic.visual.dhtml.html.HtmlTags_Package.HtmlTags'Class;
   type HtmlTags_Access_Array is array (Natural range <>) of HtmlTags_Access;
   type HtmlTags_Access_Array_Access is access all HtmlTags_Access_Array;
   type HtmlTags_Access_Array_Access_Array is array (Natural range <>) of HtmlTags_Access_Array_Access;
   type HtmlTags_Access_Array_Access_Array_Access is access all HtmlTags_Access_Array_Access_Array;
   type HtmlTags_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : HtmlTags_Access_Array_Access;
   end record;
   function Java_Box (Value : HtmlTags_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new HtmlTags_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_HtmlTags_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return HtmlTags_Access_Array_Access is (if Value /= null and then Value.all in HtmlTags_Access_Array_Object'Class then HtmlTags_Access_Array_Object'Class (Value.all).Value else null);
   type HtmlTags_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : HtmlTags_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : HtmlTags_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new HtmlTags_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_HtmlTags_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return HtmlTags_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in HtmlTags_Access_Array_Access_Array_Object'Class then HtmlTags_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.visual.dhtml.html.HtmlTags_Package_References;

with org.allbinary.logic.visual.dhtml.html.HtmlTags_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.logic.visual.dhtml.html.HtmlTag_Package;
with org.allbinary.logic.visual.dhtml.html.HtmlTag_Package_References;

package org.allbinary.logic.visual.dhtml.html.HtmlTags_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   subtype HtmlTag_Access is org.allbinary.logic.visual.dhtml.html.HtmlTag_Package_References.HtmlTag_Access;
   use type HtmlTag_Access;
   subtype HtmlTag_Access_Array is org.allbinary.logic.visual.dhtml.html.HtmlTag_Package_References.HtmlTag_Access_Array;
   use type HtmlTag_Access_Array;
   subtype HtmlTag_Access_Array_Access is org.allbinary.logic.visual.dhtml.html.HtmlTag_Package_References.HtmlTag_Access_Array_Access;
   use type HtmlTag_Access_Array_Access;
   subtype HtmlTag_Access_Array_Access_Array is org.allbinary.logic.visual.dhtml.html.HtmlTag_Package_References.HtmlTag_Access_Array_Access_Array;
   use type HtmlTag_Access_Array_Access_Array;
   subtype HtmlTag_Access_Array_Access_Array_Access is org.allbinary.logic.visual.dhtml.html.HtmlTag_Package_References.HtmlTag_Access_Array_Access_Array_Access;
   use type HtmlTag_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype HtmlTags_Access is org.allbinary.logic.visual.dhtml.html.HtmlTags_Package_References.HtmlTags_Access;
   function "=" (Left, Right : HtmlTags_Access) return Boolean renames org.allbinary.logic.visual.dhtml.html.HtmlTags_Package_References."=";
   subtype HtmlTags_Access_Array is org.allbinary.logic.visual.dhtml.html.HtmlTags_Package_References.HtmlTags_Access_Array;
   function "=" (Left, Right : HtmlTags_Access_Array) return Boolean renames org.allbinary.logic.visual.dhtml.html.HtmlTags_Package_References."=";
   subtype HtmlTags_Access_Array_Access is org.allbinary.logic.visual.dhtml.html.HtmlTags_Package_References.HtmlTags_Access_Array_Access;
   function "=" (Left, Right : HtmlTags_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.dhtml.html.HtmlTags_Package_References."=";
   function Java_Box (Value : HtmlTags_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.dhtml.html.HtmlTags_Package_References.Java_Box;
   function Java_Unbox_HtmlTags_Access_Array (Value : access Java_Object'Class) return HtmlTags_Access_Array_Access renames org.allbinary.logic.visual.dhtml.html.HtmlTags_Package_References.Java_Unbox_HtmlTags_Access_Array;
   subtype HtmlTags_Access_Array_Access_Array is org.allbinary.logic.visual.dhtml.html.HtmlTags_Package_References.HtmlTags_Access_Array_Access_Array;
   function "=" (Left, Right : HtmlTags_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.dhtml.html.HtmlTags_Package_References."=";
   subtype HtmlTags_Access_Array_Access_Array_Access is org.allbinary.logic.visual.dhtml.html.HtmlTags_Package_References.HtmlTags_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HtmlTags_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.dhtml.html.HtmlTags_Package_References."=";
   function Java_Box (Value : HtmlTags_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.dhtml.html.HtmlTags_Package_References.Java_Box;
   function Java_Unbox_HtmlTags_Access_Array_Access_Array (Value : access Java_Object'Class) return HtmlTags_Access_Array_Access_Array_Access renames org.allbinary.logic.visual.dhtml.html.HtmlTags_Package_References.Java_Unbox_HtmlTags_Access_Array_Access_Array;

   type HtmlTags is new Java_Object with record
      htmlTagVector : BasicArrayList_Access;
   end record;

   procedure Initialize (This : in out HtmlTags'Class);
   function Create return HtmlTags_Access;
   function get (This : in out HtmlTags; index : Integer) return HtmlTag_Access;
   procedure get (This : in out HtmlTags; index : Integer);
   procedure add (This : in out HtmlTags; htmlTag_Param : access HtmlTag_Package.HtmlTag'Class);
   function size (This : in out HtmlTags) return Integer;

end org.allbinary.logic.visual.dhtml.html.HtmlTags_Package;


