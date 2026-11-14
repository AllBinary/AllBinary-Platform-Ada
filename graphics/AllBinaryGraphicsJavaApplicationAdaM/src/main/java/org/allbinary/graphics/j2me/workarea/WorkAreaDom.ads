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
limited with org.allbinary.graphics.j2me.workarea.WorkAreaDom_Package;
package org.allbinary.graphics.j2me.workarea.WorkAreaDom_Package_References is
   type WorkAreaDom_Access is access all org.allbinary.graphics.j2me.workarea.WorkAreaDom_Package.WorkAreaDom'Class;
   type WorkAreaDom_Access_Array is array (Natural range <>) of WorkAreaDom_Access;
   type WorkAreaDom_Access_Array_Access is access all WorkAreaDom_Access_Array;
   type WorkAreaDom_Access_Array_Access_Array is array (Natural range <>) of WorkAreaDom_Access_Array_Access;
   type WorkAreaDom_Access_Array_Access_Array_Access is access all WorkAreaDom_Access_Array_Access_Array;
   type WorkAreaDom_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : WorkAreaDom_Access_Array_Access;
   end record;
   function Java_Box (Value : WorkAreaDom_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new WorkAreaDom_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_WorkAreaDom_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return WorkAreaDom_Access_Array_Access is (if Value /= null and then Value.all in WorkAreaDom_Access_Array_Object'Class then WorkAreaDom_Access_Array_Object'Class (Value.all).Value else null);
   type WorkAreaDom_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : WorkAreaDom_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : WorkAreaDom_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new WorkAreaDom_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_WorkAreaDom_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return WorkAreaDom_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in WorkAreaDom_Access_Array_Access_Array_Object'Class then WorkAreaDom_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.j2me.workarea.WorkAreaDom_Package_References;

with org.allbinary.graphics.j2me.workarea.WorkAreaDom_Package_References;
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
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;

package org.allbinary.graphics.j2me.workarea.WorkAreaDom_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
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
   subtype Document_Access is org.w3c.dom.Document_Package_References.Document_Access;
   use type Document_Access;
   subtype Document_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array;
   use type Document_Access_Array;
   subtype Document_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access;
   use type Document_Access_Array_Access;
   subtype Document_Access_Array_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array;
   use type Document_Access_Array_Access_Array;
   subtype Document_Access_Array_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array_Access;
   use type Document_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype WorkAreaDom_Access is org.allbinary.graphics.j2me.workarea.WorkAreaDom_Package_References.WorkAreaDom_Access;
   function "=" (Left, Right : WorkAreaDom_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.WorkAreaDom_Package_References."=";
   subtype WorkAreaDom_Access_Array is org.allbinary.graphics.j2me.workarea.WorkAreaDom_Package_References.WorkAreaDom_Access_Array;
   function "=" (Left, Right : WorkAreaDom_Access_Array) return Boolean renames org.allbinary.graphics.j2me.workarea.WorkAreaDom_Package_References."=";
   subtype WorkAreaDom_Access_Array_Access is org.allbinary.graphics.j2me.workarea.WorkAreaDom_Package_References.WorkAreaDom_Access_Array_Access;
   function "=" (Left, Right : WorkAreaDom_Access_Array_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.WorkAreaDom_Package_References."=";
   function Java_Box (Value : WorkAreaDom_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.j2me.workarea.WorkAreaDom_Package_References.Java_Box;
   function Java_Unbox_WorkAreaDom_Access_Array (Value : access Java_Object'Class) return WorkAreaDom_Access_Array_Access renames org.allbinary.graphics.j2me.workarea.WorkAreaDom_Package_References.Java_Unbox_WorkAreaDom_Access_Array;
   subtype WorkAreaDom_Access_Array_Access_Array is org.allbinary.graphics.j2me.workarea.WorkAreaDom_Package_References.WorkAreaDom_Access_Array_Access_Array;
   function "=" (Left, Right : WorkAreaDom_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.j2me.workarea.WorkAreaDom_Package_References."=";
   subtype WorkAreaDom_Access_Array_Access_Array_Access is org.allbinary.graphics.j2me.workarea.WorkAreaDom_Package_References.WorkAreaDom_Access_Array_Access_Array_Access;
   function "=" (Left, Right : WorkAreaDom_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.WorkAreaDom_Package_References."=";
   function Java_Box (Value : WorkAreaDom_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.j2me.workarea.WorkAreaDom_Package_References.Java_Box;
   function Java_Unbox_WorkAreaDom_Access_Array_Access_Array (Value : access Java_Object'Class) return WorkAreaDom_Access_Array_Access_Array_Access renames org.allbinary.graphics.j2me.workarea.WorkAreaDom_Package_References.Java_Unbox_WorkAreaDom_Access_Array_Access_Array;

   type WorkAreaDom is new Java_Object with record
      name_Case : Unbounded_String;
      canvasNodeList : BasicArrayList_Access;
   end record;
   WORKAREA : Unbounded_String;
   NAME : Unbounded_String;
   FRAMES : Unbounded_String;

   procedure Initialize (This : in out WorkAreaDom'Class; document_Param : access Document_Package.Document'Class);
   function Create (document_Param : access Document_Package.Document'Class) return WorkAreaDom_Access;
   function getName (This : in out WorkAreaDom) return Unbounded_String;
   function getCanvasNodes (This : in out WorkAreaDom) return BasicArrayList_Access;

end org.allbinary.graphics.j2me.workarea.WorkAreaDom_Package;


