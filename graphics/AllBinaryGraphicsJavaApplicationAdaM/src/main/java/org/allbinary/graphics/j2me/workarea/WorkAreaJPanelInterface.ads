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
limited with org.allbinary.graphics.j2me.workarea.WorkAreaJPanelInterface_Package;
package org.allbinary.graphics.j2me.workarea.WorkAreaJPanelInterface_Package_References is
   type WorkAreaJPanelInterface_Access is access all org.allbinary.graphics.j2me.workarea.WorkAreaJPanelInterface_Package.WorkAreaJPanelInterface'Class;
   type WorkAreaJPanelInterface_Access_Array is array (Natural range <>) of WorkAreaJPanelInterface_Access;
   type WorkAreaJPanelInterface_Access_Array_Access is access all WorkAreaJPanelInterface_Access_Array;
   type WorkAreaJPanelInterface_Access_Array_Access_Array is array (Natural range <>) of WorkAreaJPanelInterface_Access_Array_Access;
   type WorkAreaJPanelInterface_Access_Array_Access_Array_Access is access all WorkAreaJPanelInterface_Access_Array_Access_Array;
   type WorkAreaJPanelInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : WorkAreaJPanelInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : WorkAreaJPanelInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new WorkAreaJPanelInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_WorkAreaJPanelInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return WorkAreaJPanelInterface_Access_Array_Access is (if Value /= null and then Value.all in WorkAreaJPanelInterface_Access_Array_Object'Class then WorkAreaJPanelInterface_Access_Array_Object'Class (Value.all).Value else null);
   type WorkAreaJPanelInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : WorkAreaJPanelInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : WorkAreaJPanelInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new WorkAreaJPanelInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_WorkAreaJPanelInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return WorkAreaJPanelInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in WorkAreaJPanelInterface_Access_Array_Access_Array_Object'Class then WorkAreaJPanelInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.j2me.workarea.WorkAreaJPanelInterface_Package_References;

with org.allbinary.graphics.j2me.workarea.WorkAreaJPanelInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
--  with java.awt.event.KeyListener_Package; use java.awt.event.KeyListener_Package;

package org.allbinary.graphics.j2me.workarea.WorkAreaJPanelInterface_Package is

   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Reference_Types is
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


   type WorkAreaJPanelInterface is interface;
   subtype WorkAreaJPanelInterface_Access is org.allbinary.graphics.j2me.workarea.WorkAreaJPanelInterface_Package_References.WorkAreaJPanelInterface_Access;
   function "=" (Left, Right : WorkAreaJPanelInterface_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.WorkAreaJPanelInterface_Package_References."=";
   subtype WorkAreaJPanelInterface_Access_Array is org.allbinary.graphics.j2me.workarea.WorkAreaJPanelInterface_Package_References.WorkAreaJPanelInterface_Access_Array;
   function "=" (Left, Right : WorkAreaJPanelInterface_Access_Array) return Boolean renames org.allbinary.graphics.j2me.workarea.WorkAreaJPanelInterface_Package_References."=";
   subtype WorkAreaJPanelInterface_Access_Array_Access is org.allbinary.graphics.j2me.workarea.WorkAreaJPanelInterface_Package_References.WorkAreaJPanelInterface_Access_Array_Access;
   function "=" (Left, Right : WorkAreaJPanelInterface_Access_Array_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.WorkAreaJPanelInterface_Package_References."=";
   function Java_Box (Value : WorkAreaJPanelInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.j2me.workarea.WorkAreaJPanelInterface_Package_References.Java_Box;
   function Java_Unbox_WorkAreaJPanelInterface_Access_Array (Value : access Java_Object'Class) return WorkAreaJPanelInterface_Access_Array_Access renames org.allbinary.graphics.j2me.workarea.WorkAreaJPanelInterface_Package_References.Java_Unbox_WorkAreaJPanelInterface_Access_Array;
   subtype WorkAreaJPanelInterface_Access_Array_Access_Array is org.allbinary.graphics.j2me.workarea.WorkAreaJPanelInterface_Package_References.WorkAreaJPanelInterface_Access_Array_Access_Array;
   function "=" (Left, Right : WorkAreaJPanelInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.j2me.workarea.WorkAreaJPanelInterface_Package_References."=";
   subtype WorkAreaJPanelInterface_Access_Array_Access_Array_Access is org.allbinary.graphics.j2me.workarea.WorkAreaJPanelInterface_Package_References.WorkAreaJPanelInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : WorkAreaJPanelInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.j2me.workarea.WorkAreaJPanelInterface_Package_References."=";
   function Java_Box (Value : WorkAreaJPanelInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.j2me.workarea.WorkAreaJPanelInterface_Package_References.Java_Box;
   function Java_Unbox_WorkAreaJPanelInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return WorkAreaJPanelInterface_Access_Array_Access_Array_Access renames org.allbinary.graphics.j2me.workarea.WorkAreaJPanelInterface_Package_References.Java_Unbox_WorkAreaJPanelInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_WorkAreaJPanelInterface (Value : WorkAreaJPanelInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getName (This : in out WorkAreaJPanelInterface) return Unbounded_String is abstract;
   procedure deselect (This : in out WorkAreaJPanelInterface) is abstract;
   procedure select_Id (This : in out WorkAreaJPanelInterface) is abstract;
   procedure changeZoom (This : in out WorkAreaJPanelInterface; factor : Integer) is abstract;
   procedure explodeAll (This : in out WorkAreaJPanelInterface) is abstract;
   procedure autoRotate (This : in out WorkAreaJPanelInterface; increments : Integer; totalAngle : Integer) is abstract;
   procedure autoExplode (This : in out WorkAreaJPanelInterface; numberOfFrames : Integer; explodeType : Integer) is abstract;
   procedure autoMirror (This : in out WorkAreaJPanelInterface) is abstract;
   procedure play (This : in out WorkAreaJPanelInterface) is abstract;
   procedure stop (This : in out WorkAreaJPanelInterface) is abstract;
   function isPlaying (This : in out WorkAreaJPanelInterface) return Boolean is abstract;
   function toDocument (This : in out WorkAreaJPanelInterface) return Document_Access is abstract;

end org.allbinary.graphics.j2me.workarea.WorkAreaJPanelInterface_Package;


