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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;

package org.allbinary.graphics.j2me.workarea.WorkAreaDom_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;

   type WorkAreaDom is tagged;
   type WorkAreaDom_Access is access all WorkAreaDom'Class;
   type WorkAreaDom_Access_Array is array (Natural range <>) of WorkAreaDom_Access;
   type WorkAreaDom_Access_Array_Access is access all WorkAreaDom_Access_Array;
   type WorkAreaDom_Access_Array_Access_Array is array (Natural range <>) of WorkAreaDom_Access_Array_Access;
   type WorkAreaDom_Access_Array_Access_Array_Access is access all WorkAreaDom_Access_Array_Access_Array;

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


